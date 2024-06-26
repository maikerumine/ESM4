-- rnd : limit usage of spawn once per 15 min = 15*60 s = 900 s
local spawn_limit = {};
local spawn_limit_max = 30; -- how much time must elapse to be able to use spawn again


spawn_mine_6k = {}
spawn_mine_6k.pos = {x=0, y=-6000, z=0}
--spawn_mine_6k.pos = {x=4027, y=5, z=14258}  --4027, 4, 14258
--spawn_mine_6k.pos = {x=-7000, y=44, z=-7000}  --4027, 4, 14258
spawn_mine_6k.vel = 0	--20200902 rnd? fix



minetest.register_chatcommand("mine", {
 description = "Teleport you to -6k mine spawn point.",
 func = function(name)
 local player = minetest.get_player_by_name(name)
 if player == nil then
 -- just a check to prevent the server crashing
 return false
 end

	-- spawn timeout
	local t=minetest.get_gametime();
	local t0 = spawn_limit[name] or (t-spawn_limit_max);
	if t - t0<spawn_limit_max then
	minetest.chat_send_player(name, "Please wait " .. spawn_limit_max-(t-t0) .. "s before using /mine again");
	return
	else
	spawn_limit[name] = minetest.get_gametime(); -- remember the time when player tried used spawn
	end



	local pos = player:get_pos()
	local vel = player:get_velocity()	--20200902 rnd? fix

	if pos.x>-20 and pos.x<20 and pos.y>-20 and pos.y<200 and pos.z>-20 and pos.z<20
	then
	 minetest.chat_send_player(name, "YOU MUST MOVE FARTHER FROM SPAWN!")
	 --[[
	 else
	 if pos.x<-47 and pos.x>-255 and pos.y>-20 and pos.z<1078 and pos.z>820
	 then
	 minetest.chat_send_player(name, "YOU MUST CLIMB OUT!")
	 ]]
	else
	--20k mine_6k system
	if pos.x<20000 and pos.x>19900 and pos.y>-31000 and pos.z<20000 and pos.z>19900
	then
	 minetest.chat_send_player(name, "YOU MUST DIE TO ESCAPE!")
	else
	 --set  velocity = 0  then teleport
		--player:setvelocity(spawn_mine_6k.vel)	--20200902 rnd? fix
		player:set_velocity(0)	--20200902 rnd? fix
		player:set_pos(spawn_mine_6k.pos)
		minetest.sound_play("thunder")
		minetest.chat_send_player(name, "Teleported to the -6k mine!")
			 
	end
	end
 end,
})

--[[
--Give initial stuff code
minetest.register_on_newplayer(function(player)
	--print("on_newplayer")
		minetest.log("action", "Giving initial stuff to player "..player:get_player_name())
		player:get_inventory():add_item('main', 'default:sword_mese 1')
		player:get_inventory():add_item('main', 'default:torch 55')
		player:get_inventory():add_item('main', 'shooter:rifle 1')
		player:get_inventory():add_item('main', 'default:pick_steel 1')
		player:get_inventory():add_item('main', 'default:sapling 1')
		player:get_inventory():add_item('main', 'default:wood 3')
		player:get_inventory():add_item('main', 'farming:bread 10')
end)
]]
--disable sneak on player join to make more interesting mining

--Sent: 31 Jan 2016, 10:53
--From: rnd
--To: maikerumine
--to make stuff happen when player joins ( in this case disable sneak) add somewhere
--in some init.lua ( doesnt really matter which one, for sake of order put in your mod in visible place)
-----------------------------------------
--minetest.register_on_joinplayer(function(player)
--player:set_physics_override({sneak=false})
--end)
--------------------------------------------------
