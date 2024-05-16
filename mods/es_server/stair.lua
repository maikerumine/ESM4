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



--[[
stairs.register_stair_and_slab("wood", "default:wood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_wood.png"},
		"Wooden Stair",
		"Wooden Slab",
		default.node_sound_wood_defaults())
		
function stairs.register_stair_and_slab(subname, recipeitem, groups, images,
	desc_stair, desc_slab, sounds)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair, sounds)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab, sounds)
end
]]
--TECHNIC STAIRS
stairs.register_stair_and_slab("granite", "es:granite",
		{cracky = 1,not_in_craft_guide=1},
		{"technic_granite.png"},
		"Granite Block Stair",
		"Granite Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("marble", "es:marble",
		{cracky = 1,not_in_craft_guide=1},
		{"technic_marble.png"},
		"Marble Block Stair",
		"Marble Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("marble_bricks", "es:marble_bricks",
		{cracky = 1,not_in_craft_guide=1},
		{"technic_marble_bricks.png" },
		"Marble Bricks Block Stair",
		"Marble Bricks Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("granite_bricks", "es:granite_bricks",
		{cracky = 1,not_in_craft_guide=1},
		{"technic_granite_bricks.png" },
		"Granite Bricks Block Stair",
		"Granite Bricks Block Slab",
		default.node_sound_stone_defaults())


--Extreme Survival Stairs
stairs.register_stair_and_slab("ruby", "es:rubyblock",
		{cracky = 1,not_in_craft_guide=1},
		{"es_ruby_block.png"},
		"Ruby Block Stair",
		"Ruby Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("emerald", "es:emeraldblock",
		{cracky = 1,not_in_craft_guide=1},
		{"es_emerald_block.png"},
		"Emerald Block Stair",
		"Emerald Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("aikerum", "es:aikerumblock",
		{cracky = 1,not_in_craft_guide=1},
		{"es_aikerum_block.png"},
		"Aikerum Block Stair",
		"Aikerum Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("infinium", "es:infiniumblock",
		{cracky = 1,not_in_craft_guide=1},
		{"es_infinium_block.png"},
		"Infinium Block Stair",
		"Infinium Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("purpellium", "es:purpelliumblock",
		{cracky = 1,not_in_craft_guide=1},
		{"es_purpellium_block.png"},
		"Purpellium Block Stair",
		"Purpellium Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("dirt", "default:dirt",
		{ crumbly = 3,not_in_craft_guide=1},
		{"default_dirt.png"},
		"Dirt Block Stair",
		"Dirt Block Slab",
		default.node_sound_stone_defaults())
