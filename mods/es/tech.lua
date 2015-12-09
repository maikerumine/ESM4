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

--Random craft ATM
-- Jack 'O Lantern
--Borrowed from TenPlus1's Farming Plus  Might change to original

--[[
minetest.register_node("es:punkin", {
	description = "Punk 'O Lantern",
	tiles = {"farming_pumpkin_top.png", "farming_pumpkin_top.png", "farming_pumpkin_side.png", "farming_pumpkin_side.png", "farming_pumpkin_side.png", "farming_pumpkin_face_off.png"},
	paramtype2 = "facedir",
	groups = {choppy=1,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	on_punch = function(pos, node, puncher)
		node.name = "es:punkin_on"
		minetest.set_node(pos, node)
	end,
})

minetest.register_node("es:punkin_on", {
	description = "Punk 'O Lantern",
	tiles = {"farming_pumpkin_top.png", "farming_pumpkin_top.png", "farming_pumpkin_side.png", "farming_pumpkin_side.png", "farming_pumpkin_side.png", "farming_pumpkin_face_on.png"},
	light_source = 14,
	paramtype2 = "facedir",
	groups = {choppy=1,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	drop = "es:punkin",
	on_punch = function(pos, node, puncher)
		node.name = "es:punkin"
		minetest.set_node(pos, node)
	end,
})
]]
--[[
--Technic stairs
stairs.register_stair_and_slab("granite", "es:granite",
		{cracky = 1},
		{"technic_granite.png"},
		"Granite Block Stair",
		"Granite Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("marble", "es:marble",
		{cracky = 1},
		{"technic_marble.png"},
		"Marble Block Stair",
		"Marble Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("marble bricks", "es:marble_bricks",
		{cracky = 1},
		{"technic_marble_bricks.png"},
		"Marble Brick Block Stair",
		"Marble Brick Block Slab",
		default.node_sound_stone_defaults())
]]

--[[
stairs.register_stair_and_slab("Brass Block", "technic:brass_block",
		{cracky = 1},
		{"technic_brass_block.png"},
		"Brass Block Stair",
		"Brass Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("Chromium Block", "technic:chromium_block",
		{cracky = 1},
		{"technic_chromium_block.png"},
		"Chromuim Block Stair",
		"Chromium Block Slab",
		default.node_sound_stone_defaults())
		]]