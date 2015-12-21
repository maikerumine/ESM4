
-- Array to hold all the running game states
pacmine.games = {}

-- Store all the currently playing players
pacmine.players = {}

-- Duration of the power pellet effect (in seconds)
local power_pellet_duration = 10

-- Amount of points that will award a life
local score_for_life_award = 5000

---------------------------------------------------------
-- Public functions (these can be called from any other place)

-- Start the game from the spawn block at position "pos" activated by "player"
function pacmine.game_start(pos, player, gamedef)
	-- create an id unique for the given position
	local id = minetest.pos_to_string(pos)
	local player_name = player:get_player_name()

	-- make sure any previous game with the same id has ended
	local gamestate = pacmine.games[id]
	if gamestate then
		minetest.chat_send_player(player_name, "A game is already in progress for player " .. gamestate.player_name)
		return
	end

	-- Create a new game state with that id and add it to the game list
	gamedef = gamedef or {}
	gamestate = {
		id = id,
		player_name = player_name,
		pos = pos,
		player_start = vector.add(pos, (gamedef.player_start or {x=14,y=0.5,z=16})),
		ghost_start = vector.add(pos, (gamedef.ghost_start or {x=13,y=0.5,z=19})),
		ghost_amount = gamedef.ghost_amount or 4,
		pellet_total =  gamedef.pellet_total or 252,
		speed = gamedef.speed or 2,
		lives = gamedef.lives or 3,
		scorename = gamedef.scorename,
		schematic = gamedef.schematic,
		level = 1,
		score = 0,
		awarded_lives = 0,
		pellet_count = 0,
	}
 	pacmine.games[id] = gamestate
	pacmine.players[id] = player

	-- store previous priviledges, disable fly whilöe the game is running
	gamestate.player_privs = minetest.get_player_privs(player_name)
	local new_privs = table.copy(gamestate.player_privs)
	new_privs.fly = nil
	new_privs.noclip = nil
	new_privs.fast = nil
	minetest.set_player_privs(player_name, new_privs)

	minetest.log("action","New pacmine game started at " .. id .. " by " .. gamestate.player_name)

	-- place schematic
	minetest.place_schematic({x=pos.x,y=pos.y-1,z=pos.z-2},gamedef.schematic,0, "air", true)

	-- Set start positions
	pacmine.game_reset(id, player)
	pacmine.update_hud(id, player)
	minetest.sound_play("pacmine_beginning", {pos = pos,max_hear_distance = 20,gain = 10.0,})
end

-- Finish the game with the given id
function pacmine.game_end(id)
	pacmine.remove_ghosts(id)
	local gamestate = pacmine.games[id]
	local player = pacmine.players[id] or minetest.get_player_by_name(gamestate.player_name)
	if player then
		pacmine.remove_hud(player, gamestate.player_name)
		player:moveto(vector.add(gamestate.pos,{x=0.5,y=0.5,z=-1.5}))
	end
	-- Restore player priviledges
	minetest.set_player_privs(gamestate.player_name, gamestate.player_privs)
	-- Save score
	if gamestate.scorename then
		local ranking = myhighscore.save_score(gamestate.scorename, {
			player = gamestate.player_name,
			score = gamestate.score
		})
		if ranking then
			minetest.chat_send_player(gamestate.player_name, "You made it to the highscores! Your Ranking: " .. ranking)
		end
	end
	-- Clear the data
	pacmine.games[id] = nil
	pacmine.players[id] = nil
end

-- Resets the game to the start positions
function pacmine.game_reset(id, player)
	local gamestate = pacmine.games[id]
	minetest.log("action", "resetting game " .. id)

	-- Save the time when the game was last resetted (to solve timing issues)
	local last_reset = os.time()

	gamestate.power_pellet = false
	gamestate.last_reset = last_reset

	-- Position the player
	local player = player or minetest.get_player_by_name(gamestate.player_name)
	player:setpos(gamestate.player_start)

	-- Spawn the ghosts and assign the game id to each ghost
	minetest.after(2, function()
		if pacmine.games[id] and last_reset == pacmine.games[id].last_reset then
			local ghost = minetest.add_entity(gamestate.ghost_start, "pacmine:inky")
			ghost:get_luaentity().gameid = id
		end
	end)
	if gamestate.ghost_amount >= 2 then
		minetest.after(12, function()
			if pacmine.games[id] and last_reset == pacmine.games[id].last_reset then
				local ghost = minetest.add_entity(gamestate.ghost_start, "pacmine:pinky")
				ghost:get_luaentity().gameid = id
			end
		end)
	end
	if gamestate.ghost_amount >= 3 then
		minetest.after(22, function()
			if pacmine.games[id] and last_reset == pacmine.games[id].last_reset then
				local ghost = minetest.add_entity(gamestate.ghost_start, "pacmine:blinky")
				ghost:get_luaentity().gameid = id
			end
		end)
	end
	if gamestate.ghost_amount >= 4 then
		minetest.after(32, function()
			if pacmine.games[id] and last_reset == pacmine.games[id].last_reset then
				local ghost = minetest.add_entity(gamestate.ghost_start, "pacmine:clyde")
				ghost:get_luaentity().gameid = id
			end
		end)
	end
end

-- Remove all the ghosts from the board with the given id
function pacmine.remove_ghosts(id)
	local gamestate = pacmine.games[id]
	if not gamestate then return end

	-- Remove all non-players (ghosts!)
	local boardcenter = vector.add(gamestate.pos, {x=13,y=0.5,z=15})
	for index, object in ipairs(minetest.get_objects_inside_radius(boardcenter,20)) do
		if object:is_player() ~= true then
		object:remove()
		end
	end
end

-- Add a fruit to the game board
function pacmine.add_fruit(id)
	local gamestate = pacmine.games[id]
	if not gamestate then return end
	local node = {}
	-- Different fruit will be used depending on the level
	if gamestate.level == 1 then
		node.name = "pacmine:cherrys"
	elseif gamestate.level == 2 then
		node.name = "pacmine:strawberry"
	elseif gamestate.level < 5 then
		node.name = "pacmine:orange"
	else
		node.name = "pacmine:apple"
	end
	local pos = vector.add(gamestate.player_start,{x=0,y=-1,z=0})
	minetest.set_node(pos, node)
	-- Set the timer for the fruit to disappear
	minetest.get_node_timer(pos):start(math.random(20, 30))
end

-- A player got a pellet, update the state
function pacmine.on_player_got_pellet(player)
	local name = player:get_player_name()
	local gamestate = pacmine.get_game_by_player(name)
	if not gamestate then return end

	gamestate.pellet_count = gamestate.pellet_count + 1
	gamestate.score = gamestate.score + 10
	pacmine.update_hud(gamestate.id, player)
	minetest.sound_play("pacmine_chomp", {object = player, max_hear_distance = 6})

	if gamestate.pellet_count == 70 or gamestate.pellet_count == 180 then
		pacmine.add_fruit(gamestate.id)
	elseif gamestate.pellet_count >= gamestate.pellet_total then
		minetest.chat_send_player(name, "You cleared the board!")

		pacmine.remove_ghosts(gamestate.id)
		gamestate.pellet_count = 0
		gamestate.level = gamestate.level + 1
		gamestate.speed = gamestate.level + 1

		minetest.after(3.0, function()
			minetest.chat_send_player(name, "Starting Level "..gamestate.level)
			-- place schematic
			minetest.place_schematic(vector.add(gamestate.pos, {x=0,y=-1,z=-2}),gamestate.schematic,0, "air", true)

			-- Set start positions
			pacmine.game_reset(gamestate.id, player)
			minetest.sound_play("pacmine_beginning", {pos = pos,max_hear_distance = 20,gain = 10.0,})
		end)
	end

	if gamestate.score / score_for_life_award >= 1 + gamestate.awarded_lives then
		minetest.chat_send_player(name, "You reached " .. gamestate.score .. " points and earned an extra life!")
		gamestate.lives = gamestate.lives + 1
		gamestate.awarded_lives = gamestate.awarded_lives + 1
	end
end

-- A player got a power pellet, update the state
function pacmine.on_player_got_power_pellet(player)
	local name = player:get_player_name()
	local gamestate = pacmine.get_game_by_player(name)
	if not gamestate then return end

	minetest.chat_send_player(name, "You got a POWER PELLET")
	gamestate.power_pellet = os.time() + power_pellet_duration
	gamestate.score = gamestate.score + 50
	pacmine.update_hud(gamestate.id, player)

	local boardcenter = vector.add(gamestate.pos, {x=13,y=0.5,z=15})
	local powersound = minetest.sound_play("pacmine_powerup", {pos = boardcenter,max_hear_distance = 20, object=player, loop=true})

	minetest.after(power_pellet_duration, function()
		minetest.sound_stop(powersound)
		if os.time() >= (gamestate.power_pellet or 0) then
			gamestate.power_pellet = false
			minetest.chat_send_player(name, "POWER PELLET wore off")
		end
	end)
end

-- A player got a fruit, update the state
function pacmine.on_player_got_fruit(player, points)
	local name = player:get_player_name()
	local gamestate = pacmine.get_game_by_player(name)
	if not gamestate then return end
	gamestate.score = gamestate.score + points
	minetest.chat_send_player(name, points .. " bonus points!")
	minetest.sound_play("pacmine_eatfruit", {pos = pos, max_hear_distance = 6})
end

-- Get the game that the given player is playing
function pacmine.get_game_by_player(player_name)
	for _,gamestate in pairs(pacmine.games) do
		if gamestate.player_name == player_name then
			return gamestate
		end
	end
end

---------------------------------------------------------
--- Private functions (only can be used inside this file)


-- Called every 0.5 seconds for each player that is currently playing
local function on_player_gamestep(player, gameid)
	local player_pos = player:getpos()
	local positions = {
		{x=0.5,y=0.5,z=0.5},
		{x=-0.5,y=0.5,z=-0.5},
	}
	for _,pos in pairs(positions) do
		pos = vector.round(vector.add(player_pos, pos))
		local node = minetest.get_node(pos)
		local nodedef = minetest.registered_nodes[node.name]

		if nodedef and nodedef.on_player_collision then
			nodedef.on_player_collision(pos, player, gameid)
		end
	end
end

-------------------
--- Execution code


-- Time counters
local tmr_gamestep = 0
minetest.register_globalstep(function(dtime)
	tmr_gamestep = tmr_gamestep + dtime;
	if tmr_gamestep > 0.2 then
		for id,player in pairs(pacmine.players) do
			on_player_gamestep(player, id)
		end
		tmr_gamestep = 0
	end
end)

minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
	for id,game in pairs(pacmine.games) do
		if game.player_name == name then
			pacmine.game_end(id)
		end
	end
end)

minetest.register_on_shutdown(function()
	minetest.log("action", "Server shuts down. Ending all pacmine games")
	for id,game in pairs(pacmine.games) do
		pacmine.game_end(id)
	end
end)

-- Chatcommand to end the game for the current player
minetest.register_chatcommand("pacmine_exit", {
	params = "",
	description = "Loads and saves all rooms",
	func = function(name, param)
		local gamestate = pacmine.get_game_by_player(name)
		if gamestate then
			pacmine.game_end(gamestate.id)
			minetest.chat_send_player(name, "You are no longer playing pacmine")
		else
			minetest.chat_send_player(name, "You are not currently in a pacmine game")
		end
	end
})
