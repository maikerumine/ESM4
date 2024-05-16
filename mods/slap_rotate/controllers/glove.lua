local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local config = dofile(path.."/config.lua")

local AXIS, LOOK_DIR = dofile(path.."/data/axis.lua")
local axis_util = dofile(path.."/utils/axis.lua")
local node_util = dofile(path.."/utils/node.lua")
local paramtype_util = dofile(path.."/utils/paramtype.lua")
local rotate_util = dofile(path.."/utils/rotate.lua")


local controller = {}

local get_new_rotation = function(paramtype, axis, origin, angle)
    local count = rotate_util.get_repetition(angle)
    local rotation = origin
    for i=1,count do
        rotation = rotate_util.rotate(paramtype, axis, rotation)
    end
    return rotation
end

function sound_play(pos, ndef)
	if config.sound and ndef.sounds and ndef.sounds.place then
		local sound_name = ndef.sounds.place.name
		local sound_gain = ndef.sounds.place.gain
		minetest.sound_play(ndef.sounds.place.name, {
			pos = pos,
			gain = ndef.sounds.place.gain,
			max_hear_distance = 10
		}, true)
	end
end

local handler = function(itemstack, user, pointed_thing, look_dir)
	if pointed_thing.type ~= "node" then
		return
	end
	
	local pos = pointed_thing.under
	
	if not node_util.can_interact(user, pos) then
		return itemstack
	end
	
	local node = minetest.get_node(pos)
	
	if not rotate_util.can_rotate(node) then
		return itemstack
	end

	local ndef = minetest.registered_nodes[node.name]
	local rotation = node.param2 % paramtype_util.get_mask(ndef.paramtype2)
	local angle = -90*look_dir.polarity
	local axis_index = look_dir.perpendicular_axis_index
	local new_rotation = get_new_rotation(ndef.paramtype2, axis_index, rotation, angle)
	local param2_supplement = node.param2 - rotation
	local new_param2 = new_rotation + param2_supplement
	
	if ndef.on_rotate then
		ndef.on_rotate(vector.new(pos),
			{name = node.name, param1 = node.param1, param2 = node.param2},
			user, mode, new_param2)
		sound_play(pos, ndef)
		return itemstack
	end
	
	node.param2 = new_param2
	minetest.swap_node(pos, node)
	sound_play(pos, ndef)
	
	return itemstack
end

controller.on_use = function(itemstack, user, pointed_thing)
	return handler(itemstack, user, pointed_thing, LOOK_DIR.y)
end

controller.on_place = function(itemstack, user, pointed_thing)
	if config.controls.rotate_by_face then
		if pointed_thing.type ~= "node" then
			return
		end
		
		local p1 = pointed_thing.under
		local p2 = pointed_thing.above
		local dir = vector.direction(p2, p1)
		
		--hotfix for nodes bigger than 1 node
		if vector.length(vector.round(dir)) > 1 then
			return
		end
		
		if vector.length(dir) == 0 then
			return
		end
		
		local look_dir = nil
		
		local wallmounted = minetest.dir_to_wallmounted(dir)
		if wallmounted == 0 or wallmounted == 1 then
			look_dir = axis_util.get_look_dir_by_user(user)
		else
			if p2.y ~= p1.y then --multinode
				p2.y = p1.y
				dir = vector.direction(p2, p1)
			end
			look_dir = axis_util.get_look_dir_by_sidedir(dir)
		end
		
		return handler(itemstack, user, pointed_thing, look_dir)
	else
		local look_dir = axis_util.get_look_dir_by_user(user)
		return handler(itemstack, user, pointed_thing, look_dir)
	end
end

return controller
