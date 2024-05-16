local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local cone_name = dofile(path.."/entities/cone.lua")

local controller = {}

local attached_cone = {}

local force_stop_animation = function(player)
	player_api.set_animation(player, "walk")
	player_api.set_animation(player, "stand", 0)
end

controller.attach = function(player)
	local cone = minetest.add_entity(player:get_pos(), cone_name)
	local player_yaw = player:get_look_horizontal()
	cone:set_rotation({x=0,y=player_yaw,z=0})
	cone:set_attach(player, "", {x=0, y=0, z=0}, {x=0, y=0, z=0})
	force_stop_animation(player)
	
	local name = player:get_player_name()
	attached_cone[name] = cone
end

controller.remove = function(player)
	local name = player:get_player_name()
	local cone = attached_cone[name]
	if cone then
		cone:remove()
		player_api.set_animation(player, "stand")
	end
end

return controller
