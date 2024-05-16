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
	register_stair_slab_panel_micro("es", "granite", "es:granite",
	{cracky=3},
	{"technic_granite.png"},
	"Granite",
	"granite",
	0)
end

	if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "granitebricks", "es:granite_bricks",
	{cracky=3},
	{ "technic_granite_bricks.png",},
	"Granite Bricks",
	"granitebricks",
	0)
end

	if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "marble", "es:marble",
	{cracky=3},
	{"technic_marble.png"},
	"Marble",
	"marble",
	0)
end

	if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "marblebricks", "es:marble_bricks",
	{cracky=3},
	{"technic_marble_bricks.png"},
	"Marble Bricks",
	"marblebricks",
	0)
end

	if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "emeraldblock", "es:emeraldblock",
	{cracky=3},
	{"es_emerald_block.png"},
	"Emerald Block",
	"emeraldblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "rubyblock", "es:rubyblock",
	{cracky=3},
	{"es_ruby_block.png"},
	"Ruby Block",
	"rubyblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "aikerumblock", "es:aikerumblock",
	{cracky=3},
	{"es_aikerum_block.png"},
	"Aikerum Block",
	"aikerumblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "infiniumblock", "es:infiniumblock",
	{cracky=3},
	{"es_infinium_block.png"},
	"Infinium Block",
	"infiniumblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "purpelliumblock", "es:purpelliumblock",
	{cracky=3},
	{"es_purpellium_block.png"},
	"Purpellium Block",
	"purpelliumblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "boneblock", "es:boneblock",
	{cracky=3},
	{
	"es_bones_top.png",
	"es_bones_bottom.png",
	"es_bones_side.png",
	"es_bones_side.png",
	"es_bones_rear.png",
	"es_bones_front.png"
	},
	"Bone Block",
	"boneblock",
	0)
end

if minetest.get_modpath("moreblocks") and enable_stairsplus then
	register_stair_slab_panel_micro("es", "messymese", "es:messymese",
	{cracky=3},
	{"es_messy_mese.png"},
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
	table.insert(circular_saw.known_stairs, "es:purpelliumblock")
	table.insert(circular_saw.known_stairs, "es:boneblock")
	table.insert(circular_saw.known_stairs, "es:messymese")
	table.insert(circular_saw.known_stairs, "default:dirt_with_grass")


