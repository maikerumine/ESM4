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


--tweaks and overrides
--rnd code
--cactus tweaks
local function hurt_cactus() -- cactus tweak
	local name = "default:cactus"
	local table = minetest.registered_nodes[name];
	local table2 = {};
	for i,v in pairs(table) do table2[i] = v end
	table2.groups.disable_jump = 1
	table2.damage_per_second = 5
	minetest.register_node(":"..name, table2)
end
hurt_cactus();


--TECHNIC NODES
minetest.register_node( "es:granite", {
	description = "Granite",
	tiles = { "technic_granite.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
}) 

minetest.register_node( "es:marble", {
	description = "Marble",
	tiles = { "technic_marble.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
}) 

minetest.register_node( "es:marble_bricks", {
	description = "Marble Bricks",
	tiles = { "technic_marble_bricks.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--ES Node Definition
minetest.register_node("es:stone_with_emerald", {
	description = "Emerald Ore",
	tiles = {"default_stone.png^emerald_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = "es:emerald_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_ruby", {
	description = "Ruby Ore",
	tiles = {"default_stone.png^ruby_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = "es:ruby_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_aikerum", {
	description = "Ruby Ore",
	tiles = {"default_stone.png^aikerum_ore.png"},
	is_ground_content = true,
	groups = {cracky=1,level = 2},
	drop = "es:aikerum_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_infinium", {
	description = "Infinium Ore",
	tiles = {"default_stone.png^infinium_ore.png"},
	is_ground_content = true,
	groups = {cracky=1,level = 2},
	drop = "es:infinium_goo",
	sounds = default.node_sound_stone_defaults(),
})

--Emerald located at -1000
minetest.register_node("es:emeraldblock", {
	description = "Emerald Block",
	tiles = {"emerald_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:emerald_crystal", {
	description = "Emerald Crystal",
	inventory_image = "emerald.png",
})

--Ruby located at -3000
minetest.register_node("es:rubyblock", {
	description = "Ruby Block",
	tiles = {"ruby_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:ruby_crystal", {
	description = "Ruby Crystal",
	inventory_image = "ruby.png",
})

--Aikerum located at -4000
minetest.register_node("es:aikerumblock", {
	description = "Aikerum Block",
	tiles = {"aikerum_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:aikerum_crystal", {
	description = "Aikerum Crystal",
	inventory_image = "aikerum.png",
})


--Infinium located at -4300
minetest.register_node("es:infiniumblock", {
	description = "infinium Block",
	tiles = {"infinium_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:infinium_goo", {
	description = "Infinium Goo--Need to craft with vessel to contain.",
	inventory_image = "infinium.png",
})

minetest.register_craftitem("es:infinium_ingot", {
	description = "Infinium Ingot--TBD CRAFTING Special Armour and Lab Equipment",
	inventory_image = "infinium_ingot.png",
})

minetest.register_craftitem("es:infinium_container", {
	description = "Infinium Container--Cook to get Infinium Ingot",
	inventory_image = "infinium_container.png",
})


--BONEBLOCK
minetest.register_node("es:boneblock", {
	description = "Bone Blox",
	tiles = {
	"bones_top.png",
	"bones_bottom.png",
	"bones_side.png",
	"bones_side.png",
	"bones_rear.png",
	"bones_front.png"
	},
	paramtype2 = "facedir",
	groups = {dig_immediate=2},
	sounds = default.node_sound_dirt_defaults({
	footstep = {name="default_gravel_footstep", gain=0.5},
	dug = {name="default_gravel_footstep", gain=1.0},
	}),
})

--[[
--Random craft [USE FOR SUPER FOOD]
-- Jack 'O Lantern
--Borrowed from TenPlus1's Farming Plus  Might change to original
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
--INPERVIOUS GLASS  CANNOT BREAK- Great for prison walls.
minetest.register_node("es:hgglass", {
	description = "High Density Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"default_glass.png", "default_glass_detail.png"},
	inventory_image = minetest.inventorycube("default_glass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {immortal=1,cracky=0,},
	sounds = default.node_sound_glass_defaults(),
})

--A simple way to store your cookable Mese, and it gives off light!
minetest.register_node("es:messymese", {
	description = "Messy MESE Block",
	tiles = {"default_clay.png^bubble.png^mese_cook_mese_crystal.png"},
	light_source = 14,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:what", {
	description = "The What Block - Dig for random gift",
	drawtype = "glasslike_framed_optional^bubble.png",
	tiles = {"default_glass.png^bubble.png", "default_glass_detail.png^bubble.png"},
	inventory_image = minetest.inventorycube("default_glass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {crumbly=3,},
	drop = {
		max_items = 2,
		items = {
			{items = {'es:what'}, rarity = 80},
			{items = {'es:sword_aikerum'}, rarity = 50},
			{items = {'es:sword_ruby'}, rarity = 40},
			{items = {'es:sword_emerald'}, rarity = 30},
			{items = {'es:pick_aikerum'}, rarity = 50},
			{items = {'es:pick_ruby'}, rarity = 40},
			{items = {'es:pick_emerald'}, rarity = 30},
			{items = {'farming:bread 20'}, rarity = 3},
			{items = {'default:cobble 10'}, rarity = 3},
			{items = {'default:gold_lump 10'}, rarity = 10},
			{items = {'default:iron_lump 10'}, rarity = 5},
			{items = {'default:apple 10'}, rarity = 5},
			{items = {'default:coal_lump 10'}, rarity = 1},
			{items = {'es:depleted_uranium_ingot 3'}}
		}
	},
	sounds = default.node_sound_glass_defaults(),
})




--Default addons as they should be.  I changed ore generation to keep unique for compatibility.
minetest.register_node("es:stone_with_mese", {
	description = "Cookable Mese Ore",
	tiles = {"default_stone.png^mese_cook_mese_crystal.png^default_mineral_mese.png"},
	paramtype = "light",
	groups = {cracky = 1},
	drop = "es:mesecook_crystal",
	sounds = default.node_sound_stone_defaults(),
	light_source = 1,
})

minetest.register_node("es:desert_stone_with_gold", {
	description = "Gold Ore",
	tiles = {"default_desert_stone.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:desert_stone_with_iron", {
	description = "Iron Ore",
	tiles = {"default_desert_stone.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = 'default:iron_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:desert_stone_with_coal", {
	description = "Coal Ore",
	tiles = {"default_desert_stone.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'default:coal_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:depleted_uranium", {
	description = "Depleted Uranium Ore",
	tiles = {"default_stone.png^es_depleted_uranium_ore.png"},
	groups = {cracky = 3},
	drop = 'es:depleted_uranium_lump',
	sounds = default.node_sound_stone_defaults(),
	light_source = 1,
})

minetest.register_craftitem("es:depleted_uranium_lump", {
	description = "Depleted Uranium use for fuel or food!",
	inventory_image = "es_depleted_uranium_lump.png",
})



--Stairs and moreblocks code that gave me so much trouble...
--[[comment out the stair code if not installed in main game directory-look for global


function stairs.register_stair_and_slab(subname, recipeitem, groups, images,
		desc_stair, desc_slab, sounds)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair, sounds)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab, sounds)
end

--Technic stairs
--comment out if not use technic
stairs.register_stair_and_slab("granite", "technic:granite",
		{cracky = 1},
		{"technic_granite.png"},
		"Granite Block Stair",
		"Granite Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("marble", "technic:marble",
		{cracky = 1},
		{"technic_marble.png"},
		"Marble Block Stair",
		"Marble Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("marble bricks", "technic:marble_bricks",
		{cracky = 1},
		{"technic_marble_bricks.png"},
		"Marble Brick Block Stair",
		"Marble Brick Block Slab",
		default.node_sound_stone_defaults())


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



--Extreme Survival Stairs
stairs.register_stair_and_slab("Ruby", "es:rubyblock",
		{cracky = 1},
		{"ruby_block.png"},
		"Ruby Block Stair",
		"Ruby Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("Emerald", "es:emeraldblock",
		{cracky = 1},
		{"emerald_block.png"},
		"Emerald Block Stair",
		"Emerald Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("Aikerum", "es:aikerumblock",
		{cracky = 1},
		{"aikerum_block.png"},
		"Aikerum Block Stair",
		"Aikerum Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("Infinium", "es:infiniumblock",
		{cracky = 1},
		{"infinium_block.png"},
		"Infinium Block Stair",
		"Infinium Block Slab",
		default.node_sound_stone_defaults())
stairs.register_stair_and_slab("Dirt", "default:dirt",
		{cracky = 1},
		{"default_dirt.png"},
		"Dirt Block Stair",
		"Dirt Block Slab",
		default.node_sound_stone_defaults())

	
if minetest.get_modpath("moreblocks") and enable_stairsplus then
register_stair_slab_panel_micro("es", "emeraldblock", "es:emeraldblock",
{cracky=3},
{"emerald_block.png"},
"Emerald Block",
"emeraldblock",
0)
end
if minetest.get_modpath("moreblocks") and enable_stairsplus then
register_stair_slab_panel_micro("es", "rubyblock", "es:rubyblock",
{cracky=3},
{"ruby_block.png"},
"Ruby Block",
"rubyblock",
0)
end
if minetest.get_modpath("moreblocks") and enable_stairsplus then
register_stair_slab_panel_micro("es", "aikerumblock", "es:aikerumblock",
{cracky=3},
{"aikerum_block.png"},
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
--COMMENT OUT STAIRSPLUS IF NOT USE MOREBLOCKS
table.insert(circular_saw.known_stairs, "es:emeraldblock")
table.insert(circular_saw.known_stairs, "es:rubyblock")
table.insert(circular_saw.known_stairs, "es:aikerumblock")
table.insert(circular_saw.known_stairs, "es:infiniumblock")
]]
