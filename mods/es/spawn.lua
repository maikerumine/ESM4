-- rnd : limit usage of spawn once per 15 min = 15*60 s = 900 s
local spawn_limit = {};
local spawn_limit_max = 180; -- how much time must elapse to be able to use spawn again


spawn_prison = {}
spawn_prison.pos = {x=0, y=10006, z=0}

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
