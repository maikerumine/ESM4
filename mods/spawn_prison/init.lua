-- rnd : limit usage of spawn once per 15 min = 15*60 s = 900 s
local spawn_limit = {};
local spawn_limit_max = 900; -- how much time must elapse to be able to use spawn again


spawn_prison = {}
spawn_prison.pos = {x=0, y=3, z=0}

if minetest.setting_get_pos("static_spawnpoint") then
 spawn_prison.pos = minetest.setting_get_pos("static_spawnpoint")
end

minetest.register_chatcommand("spawn", {
 description = "Teleport you to spawn point.",
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
	minetest.chat_send_player(name, "Please wait " .. spawn_limit_max-(t-t0) .. "s before using /spawn again");
	return
	else
	spawn_limit[name] = minetest.get_gametime(); -- remember the time when player tried used spawn
	end



 local pos = player:getpos()
 if pos.x>-20 and pos.x<20 and pos.y>-20 and pos.z>-20 and pos.z<20
 then
 minetest.chat_send_player(name, "YOU MUST MOVE FARTHER FROM SPAWN!")
 else
 if pos.x<-47 and pos.x>-255 and pos.y>-20 and pos.z<1078 and pos.z>820
 then
 minetest.chat_send_player(name, "YOU MUST CLIMB OUT!")

 else
 player:setpos(spawn_prison.pos)
 minetest.chat_send_player(name, "Teleported to spawn!")
 end
 end
 end,
})
