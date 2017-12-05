
local path = minetest.get_modpath("mobs_monster")

-- Intllib
local S
if minetest.get_modpath("intllib") then
	S = intllib.Getter()
else
	S = function(s) return s end
end
mobs.intllib = S

-- Monsters

dofile(path .. "/dirt_monster.lua") -- PilzAdam
dofile(path .. "/dungeon_master.lua")
dofile(path .. "/oerkki.lua")
dofile(path .. "/sand_monster.lua")
dofile(path .. "/stone_monster.lua")
dofile(path .. "/tree_monster.lua")
dofile(path .. "/lava_flan.lua") -- Zeg9
dofile(path .. "/mese_monster.lua")
dofile(path .. "/spider.lua") -- AspireMint

dofile(path .. "/lucky_block.lua")

print ("[MOD] Mobs Redo 'Monsters' loaded")
