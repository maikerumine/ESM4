--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0

es = {}

--AIRBLOCK
--==================
minetest.register_node("es:air", {
	description = "AIR  -=! CANNOT MINE !=-",
	drawtype = "airlike",
	tiles = {"default_glass.png", "default_glass_detail.png"},
	inventory_image = minetest.inventorycube("default_glass.png"),
	wield_image = "default_glass.png",
	use_texture_alpha = "clip", -- only needed for stairs API
	
	light_source = 13,
	paramtype = "light",
	buildable_to = true,
	pointable = false,
	walkable = false,
	sunlight_propagates = true,
	is_ground_content = false,
	on_blast = function() end,
	on_destruct = function () end,
	can_dig = function() return false end,
	diggable = false,
	drop = "es:nopenode",
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
})



--INPERVIOUS NODES  CANNOT BREAK- Great for prison walls.
--==================
minetest.register_node("es:hgglass", {
	description = "High Density Glass  -=! CANNOT MINE !=-",
	drawtype = "glasslike_framed_optional",
	tiles = {"default_glass.png", "default_glass_detail.png"},
	
	use_texture_alpha = "clip", -- only needed for stairs API
	
	
	inventory_image = minetest.inventorycube("default_glass.png"),
	paramtype = "light",
	buildable_to = false,
	pointable = false,
	sunlight_propagates = true,
	is_ground_content = false,
	on_blast = function() end,
	on_destruct = function () end,
	can_dig = function() return false end,
	diggable = false,
	drop = "",
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("es:hgglass2", {
	description = "High Density Glass II  -=! CANNOT MINE !=-",
	drawtype = "glasslike",
	tiles = { "default_obsidian_glass.png"},
	
	use_texture_alpha = "clip", -- only needed for stairs API
	
	
	inventory_image = minetest.inventorycube("default_obsidian_glass.png"),
	paramtype = "light",
	buildable_to = false,
	pointable = false,
	sunlight_propagates = true,
	is_ground_content = false,
	on_blast = function() end,
	on_destruct = function () end,
	can_dig = function() return false end,
	diggable = false,
	drop = "",
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("es:steelblock", {
	description = "High Density Steel Block  -=! CANNOT MINE !=-",
	tiles = {"default_steel_block.png"},
	is_ground_content = false,
	on_blast = function() end,
	on_destruct = function () end,
	can_dig = function() return false end,
	diggable = false,
	drop = "",
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stoneblock", {
	description = "High Density Stone Block  -=! CANNOT MINE !=-",
	tiles = {"default_stone.png"},
	is_ground_content = false,
	on_blast = function() end,
	on_destruct = function () end,
	can_dig = function() return false end,
	diggable = false,
	drop = "",
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:sandstonebrick", {
	description = "High Density Sandstone Brick  -=! CANNOT MINE !=-",
	tiles = {"default_stone_brick.png^[colorize:#CCCC99:150"},
	is_ground_content = false,
	on_blast = function() end,
	on_destruct = function () end,
	can_dig = function() return false end,
	diggable = false,
	drop = "",
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stonebrick", {
	description = "High Density Stone Brick  -=! CANNOT MINE !=-",
	tiles = {"default_stone_brick.png"},
	is_ground_content = false,
	on_blast = function() end,
	on_destruct = function () end,
	can_dig = function() return false end,
	diggable = false,
	drop = "",
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:junglewood", {
	description = "High Density Junglewood Planks -=! CANNOT MINE !=-",
	tiles = {"default_junglewood.png"},
	is_ground_content = false,
	on_blast = function() end,
	on_destruct = function () end,
	can_dig = function() return false end,
	diggable = false,
	drop = "",
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

