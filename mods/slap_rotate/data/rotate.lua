local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local _, PARAMTYPE_GROUP = dofile(path.."/data/paramtype.lua")
local AXIS = dofile(path.."/data/axis.lua")

local ROTATE = {
	[PARAMTYPE_GROUP.facedir] = {
		[AXIS.x] = {[0]=4, 5, 6, 7, 22, 23, 20, 21, 0, 1, 2, 3, 13, 14, 15, 12, 19, 16, 17, 18, 10, 11, 8, 9},
		[AXIS.y] = {[0]=1, 2, 3, 0, 13, 14, 15, 12, 17, 18, 19, 16, 9, 10, 11, 8, 5, 6, 7, 4, 23, 20, 21, 22},
		[AXIS.z] = {[0]=16, 17, 18, 19, 5, 6, 7, 4, 11, 8, 9, 10, 0, 1, 2, 3, 20, 21, 22, 23, 12, 13, 14, 15}
	},
	[PARAMTYPE_GROUP.wallmounted] = {
		[AXIS.x] = {[0]=4, 5, 2, 3, 1, 0},
		[AXIS.y] = {[0]=0, 1, 5, 4, 2, 3},
		[AXIS.z] = {[0]=3, 2, 0, 1, 4, 5}
	}
}

return ROTATE
