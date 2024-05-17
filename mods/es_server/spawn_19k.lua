-- rnd : limit usage of spawn once per 15 min = 15*60 s = 900 s
local spawn_limit = {};
local spawn_limit_max = 30; -- how much time must elapse to be able to use spawn again


spawn_mine_19k = {}
spawn_mine_19k.pos = {x=0, y=-18991, z=0}

spawn_mine_19k.vel = 0	--20200902 rnd? fix



minetest.register_chatcommand("unter", {
 description = "Teleport you to -19k Unter Der Welt.",
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
	minetest.chat_send_player(name, "Please wait " .. spawn_limit_max-(t-t0) .. "s before using /unter again");
	return
	else
	spawn_limit[name] = minetest.get_gametime(); -- remember the time when player tried used spawn
	end



	local pos = player:get_pos()
	local vel = player:get_velocity()	--20200902 rnd? fix

	if pos.x>-20 and pos.x<20 and pos.y>-20 and pos.y<200 and pos.z>-20 and pos.z<20
	then
	 minetest.chat_send_player(name, "YOU MUST MOVE FARTHER FROM SPAWN!")

	else
	--20k mine_6k system
	if pos.x<20000 and pos.x>19900 and pos.y>-31000 and pos.z<20000 and pos.z>19900
	then
	 minetest.chat_send_player(name, "YOU MUST DIE TO ESCAPE!")
	else

		player:set_velocity(0)	--20200902 rnd? fix
		player:set_pos(spawn_mine_19k.pos)
		minetest.sound_play("default_water_footstep")
		minetest.chat_send_player(name, "Teleported to Unter Der Welt!")
			 
	end
	end
 end,
})

