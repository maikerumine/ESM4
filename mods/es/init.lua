--Extreme Survival created by maikerumine
-- Minetest 0.5.0 mod: "Extreme Survival"
-- namespace: es
--version 3.1
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2017 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2017) maikerumine; CC-BY-SA 3.0

es = {}


--NOTE:  THIS--v  v--MUST BE FIRST IN THE INIT FOR EVERYTHING TO WORK
enable_stairsplus = true
--==

--==

local modpath = minetest.get_modpath("es")
es.modpath = modpath

dofile(modpath.."/trees.lua")
dofile(modpath.."/oremagicinator.lua")
dofile(modpath.."/nodes.lua")
dofile(modpath.."/fake_craft_guide.lua")
dofile(modpath.."/nodes_player_blocks.lua")
dofile(modpath.."/nodes_es_hd_blocks.lua")
dofile(modpath.."/mt_seasons.lua")
dofile(modpath.."/liquids.lua")


minetest.clear_registered_ores()

	--BIOME GENERATION
	--CHOOSE ONE ONLY

--dofile(modpath.."/biome_cobble.lua")
--dofile(modpath.."/biome_default_with_ore.lua")
--dofile(modpath.."/biome_grass_old_v7.lua")
--dofile(modpath.."/biome_magic_stone.lua")
--dofile(modpath.."/biome_null_stone.lua")
--dofile(modpath.."/biome_stone_enhanced.lua")
dofile(modpath.."/biome_stone_enhanced_depth.lua")
--dofile(modpath.."/biome_wasteland.lua")


	--ORE GENERATION
	--CHOOSE ONE OR ALL

dofile(modpath.."/oregen.lua")
dofile(modpath.."/oregen_cblocks.lua")
--dofile(modpath.."/oregen_hades.lua")
--dofile(modpath.."/oregen_old.lua")	--MT4.11
--================================================================


dofile(modpath.."/chests.lua")
dofile(modpath.."/cooking.lua")
dofile(modpath.."/containers.lua")
dofile(modpath.."/crushingfurnace.lua")
dofile(modpath.."/crafting.lua")
dofile(modpath.."/craft_applesapling.lua")
dofile(modpath.."/craft_bone_collector.lua")
dofile(modpath.."/craft_items.lua")
dofile(modpath.."/def_override.lua")
dofile(modpath.."/def_extra_override.lua")
dofile(modpath.."/tools.lua")


	--ARMOR
--if armor then
--	if es_armor == 1 then	--add 3d_armor
		dofile(minetest.get_modpath("es").."/armor.lua")
--	end
---	if es_shields == 1 then	--add Shields
		dofile(minetest.get_modpath("es").."/shields.lua")
--	end
--end


	--farming redo
--if farming and redo then
	dofile(modpath.."/farming.lua")
--end

	--flowers on es nodes
--if flowers then
	dofile(modpath.."/flowers.lua")
--end

	--MOREBLOCKS / STAIRSPLUS SUPPORT
--if moreblocks then
--	dofile(modpath.."/mostair.lua")
--end

	--STAIR SUPPORT
--if stairs then
--	dofile(modpath.."/stair.lua")
--end
