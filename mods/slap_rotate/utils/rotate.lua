local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local ROTATE = dofile(path.."/data/rotate.lua")

local axis_util = dofile(path.."/utils/axis.lua")
local paramtype_util = dofile(path.."/utils/paramtype.lua")

local util = {}

util.rotate = function(paramtype, axis, rotation)
	local paramtype_index = paramtype_util.get_index(paramtype)
	local axis_index = type(axis)=='number' and axis or axis_util.get_axis_index(axis)
    return ROTATE[paramtype_index][axis_index][rotation]
end

util.rotation_exist = function(paramtype)
	return pcall(util.rotate, paramtype, 0, 0)
end

util.can_rotate = function(node)
	local ndef = minetest.registered_nodes[node.name]
	return util.rotation_exist(ndef.paramtype2)
		and (paramtype_util.is_wallmounted_group(node) or paramtype_util.is_facedir_group(node))
end

util.get_repetition = function(angle)
    local get_positive_angle = function(angle)
        angle = angle % 360
        return angle % 90 == 0 and angle or 0--=do not rotate
    end
    return get_positive_angle(angle) / 90
end

return util
