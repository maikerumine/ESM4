
local path = minetest.get_modpath("mobs")

-- Mob API
dofile(path.."/api.lua")
dofile(path.."/bones.lua")

-- Mob Items
dofile(path.."/crafts.lua")

-- Spawner
dofile(path.."/spawner.lua")

print ("[MOD] Mobs Redo loaded")
