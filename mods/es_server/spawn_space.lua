-- rnd : limit usage of spawn once per 15 min = 15*60 s = 900 s
local spawn_space_limit = {};
local spawn_space_limit_max = 3; -- how much time must elapse to be able to use spawn again


spawn_space = {}
spawn_space.pos = {x=0, y=15002, z=0}
spawn_space.vel = 0	--20200902 rnd? fix

minetest.register_chatcommand("space", {
	description = "Teleport you to space spawn point.",
	func = function(name)
	local player = minetest.get_player_by_name(name)
		if player == nil then
		-- just a check to prevent the server crashing
		return false
	end

	-- spawn timeout
	local t=minetest.get_gametime();
	local t0 = spawn_space_limit[name] or (t-spawn_space_limit_max);
		if t - t0<spawn_space_limit_max then
		minetest.chat_send_player(name, "Please wait " .. spawn_space_limit_max-(t-t0) .. "s before using /space again");
		return
		else
		spawn_space_limit[name] = minetest.get_gametime(); -- remember the time when player tried used spawn
		end

--===========================
				--get_player_velocity() -- returns player speed with a table {x,y,z}, or nil if not a player
				--add_player_velocity(vel) 
				--player:add_player_velocity({x=0, y=10, z=0})
				--player:setvelocity({x=0, y=0, z=0})	--20200902 rnd? fix
--===========================

	local pos = player:getpos()
	local vel = player:getvelocity()	--20200902 rnd? fix

		if pos.x>-3 and pos.x<3 and pos.y>14999 and pos.y<15000 and pos.z>-3 and pos.z<3
		then
			minetest.chat_send_player(name, "YOU MUST MOVE FARTHER FROM SPACE SPAWN POINT!")
		else
		
		if pos.x<20000 and pos.x>19900 and pos.y>-31000 and pos.z<20000 and pos.z>19900
		then
			minetest.chat_send_player(name, "YOU MUST DIE TO ESCAPE!")
		else
			player:setvelocity(0)	--20200902
			minetest.chat_send_player(name, "Setting velocity!")
			player:setvelocity(0)	--20200909
			minetest.chat_send_player(name, "Setting velocity!")
			player:setpos(spawn_space.pos)
			minetest.chat_send_player(name, "Setting position!")
			minetest.sound_play("teleport")
			minetest.chat_send_player(name, "Teleported to space!")		 
		end
		end
	end,
})

