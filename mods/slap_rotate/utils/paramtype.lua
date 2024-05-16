local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local PARAMTYPE, PARAMTYPE_GROUP = dofile(path.."/data/paramtype.lua")

local util = {}

util.get_index = function(paramtype)
	return PARAMTYPE[paramtype].index
end

util.get_mask = function(paramtype)
	return PARAMTYPE[paramtype].mask
end

util.paramtype_or_special_case = function(node)
	if string.match(node.name, 'stairs:slab') then
		return 'special_slab'
	end
	local ndef = minetest.registered_nodes[node.name]
	return ndef.paramtype2
end

util.is_facedir_group = function(node)
	local ndef = minetest.registered_nodes[node.name]
	local param_index = util.get_index(ndef.paramtype2)
	return param_index == PARAMTYPE_GROUP.facedir
end

util.is_wallmounted_group = function(node)
	local ndef = minetest.registered_nodes[node.name]
	local param_index = util.get_index(ndef.paramtype2)
	return param_index == PARAMTYPE_GROUP.wallmounted
end

return util
