local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local AXIS, LOOK_DIR = dofile(path.."/data/axis.lua")

local util = {}

util.axis_exists = function(axis)
	return not not AXIS[axis]
end

util.get_axis_index = function(axis)
	if not util.axis_exists(axis) then
		error("Are you trying to open new dimension? Not in this universe!")
	end
	return AXIS[axis]
end

util.get_look_dir = function(index)
	return LOOK_DIR[index]
end

util.get_look_dir_by_user = function(user)
	local index = minetest.dir_to_facedir(user:get_look_dir(), false)
	return util.get_look_dir(index)
end

util.get_look_dir_by_sidedir = function(dir)
	if dir.x ~= 0 then
		return LOOK_DIR[(dir.x*-1)+2]
	end

	if dir.z ~= 0 then
		return LOOK_DIR[(dir.z*-1)+1]
	end
	error('Unsupported sidedir: '..minetest.pos_to_string(dir))
end

return util
