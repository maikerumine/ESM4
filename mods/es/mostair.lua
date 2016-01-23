--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0


es = {}

--Compatibility with Moreblocks / stairsplus
	
	if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "emeraldblock", "es:emeraldblock",
	{cracky=3},
	{"default_diamond_block.png^[colorize:#7CFC00:195"},
	"Emerald Block",
	"emeraldblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "rubyblock", "es:rubyblock",
	{cracky=3},
	{"default_diamond_block.png^[colorize:#FF0000:200"},
	"Ruby Block",
	"rubyblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "aikerumblock", "es:aikerumblock",
	{cracky=3},
	{"default_diamond_block.png^[colorize:#0000CD:195"},
	"Aikerum Block",
	"aikerumblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "infiniumblock", "es:infiniumblock",
	{cracky=3},
	{"infinium_block.png"},
	"Infinium Block",
	"infiniumblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "boneblock", "es:boneblock",
	{cracky=3},
	{
	"bones_top.png",
	"bones_bottom.png",
	"bones_side.png",
	"bones_side.png",
	"bones_rear.png",
	"bones_front.png"
	},
	"Bone Block",
	"boneblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "messymese", "es:messymese",
	{cracky=3},
	{"default_stone.png^mese_cook_mese_crystal.png^default_mineral_mese.png"},
	"Messymese",
	"messymese",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "dirt_with_grass", "default:dirt_with_grass",
	{cracky=3},
	{"default_grass.png"},
	"dirt_with_grass",
	"dirt_with_grass",
	0)
end


--COMMENT OUT STAIRSPLUS IF NOT USE MOREBLOCKS
	table.insert(circular_saw.known_stairs, "es:emeraldblock")
	table.insert(circular_saw.known_stairs, "es:rubyblock")
	table.insert(circular_saw.known_stairs, "es:aikerumblock")
	table.insert(circular_saw.known_stairs, "es:infiniumblock")
	table.insert(circular_saw.known_stairs, "es:boneblock")
	table.insert(circular_saw.known_stairs, "es:messymese")
	table.insert(circular_saw.known_stairs, "default:dirt_with_grass")

	
