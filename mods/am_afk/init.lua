local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local mod_util = dofile(path.."/utils/mod.lua")
local mod = mod_util.export({}).from(current_modname)

mod.config = dofile(path.."/config.lua")

dofile(path.."/afk.lua")
