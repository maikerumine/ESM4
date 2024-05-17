--Extreme Survival created by maikerumine
-- Minetest 0.4.9 mod: "Extreme Survival"
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
local modpath = minetest.get_modpath("es")
-- Required wrapper to allow customization of default.after_place_leaves
local function after_place_leaves(...)
	return default.after_place_leaves(...)
end

-- Required wrapper to allow customization of default.grow_sapling
local function grow_sapling(...)
	return default.grow_sapling(...)
end

if minetest.get_mapgen_setting("mg_name") == "v6" then
	default.register_leafdecay({
		trunks = {"es:strange_tree"},
		leaves = {"default:apple", "es:strange_leaves"},
		radius = 3,
	})

	default.register_leafdecay({
		trunks = {"es:aiden_tree"},
		leaves = {"es:aiden_tree_leaves"},
		radius = 7,
	})

else
	default.register_leafdecay({
		trunks = {"es:strange_tree"},
		leaves = {"default:apple", "es:strange_leaves"},
		radius = 3,
	})

	default.register_leafdecay({
		trunks = {"es:aiden_tree"},
		leaves = {"es:aiden_tree_leaves"},
		radius = 7,
	})
end



--ES Special blocks

--MAGIC ORE

minetest.register_node("es:oremagicinator", {
	description = "Ore Generator Block -= Dig for random ore or cobble.",
	tiles = {"default_stone.png"},
	groups = {cracky = 2, stone = 1},
	drop = {
		max_items = 1,
		items = {
		--[[
		--cblocks--
		--======================================================
		--black
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_black_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_black_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_black_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_black_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_black_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_black_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_black_with_diamond'},
				rarity = 260,
			},
		--blue
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_blue_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_blue_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_blue_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_blue_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_blue_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_blue_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_blue_with_diamond'},
				rarity = 260,
			},		
		--brown
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_brown_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_brown_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_brown_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_brown_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_brown_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_brown_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_brown_with_diamond'},
				rarity = 260,
			},		
		--cyan
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_cyan_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_cyan_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_cyan_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_cyan_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_cyan_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_cyan_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_cyan_with_diamond'},
				rarity = 260,
			},		
		--dark_green
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_green_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_green_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_green_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_green_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_green_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_green_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_green_with_diamond'},
				rarity = 260,
			},		
		--dark_grey
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_grey_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_grey_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_grey_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_grey_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_grey_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_grey_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_dark_grey_with_diamond'},
				rarity = 260,
			},		
		--green
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_green_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_green_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_green_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_green_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_green_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_green_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_green_with_diamond'},
				rarity = 260,
			},		
		--grey
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_grey_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_grey_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_grey_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_grey_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_grey_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_grey_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_grey_with_diamond'},
				rarity = 260,
			},		
		--magenta
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_magenta_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_magenta_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_magenta_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_magenta_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_magenta_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_magenta_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_magenta_with_diamond'},
				rarity = 260,
			},		
		--orange
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_orange_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_orange_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_orange_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_orange_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_orange_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_orange_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_orange_with_diamond'},
				rarity = 260,
			},		
		--pink
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_pink_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_pink_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_pink_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_pink_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_pink_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_pink_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_pink_with_diamond'},
				rarity = 260,
			},		
		--red
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_red_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_red_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_red_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_red_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_red_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_red_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_red_with_diamond'},
				rarity = 260,
			},
		--violet
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_violet_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_violet_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_violet_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_violet_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_violet_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_violet_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_violet_with_diamond'},
				rarity = 260,
			},
		--white
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_white_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_white_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_white_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_white_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_white_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_white_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_white_with_diamond'},
				rarity = 260,
			},
		--yellow
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_yellow_with_coal'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_yellow_with_iron'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_yellow_with_copper'},
				rarity = 230,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_yellow_with_tin'},
				rarity = 220,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_yellow_with_mese'},
				rarity = 250,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_yellow_with_gold'},
				rarity = 240,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'cblocks:stone_yellow_with_diamond'},
				rarity = 260,
			},

		]]
		--======================================================
			{
				-- player will get ore with 1/20 chance
				items = {'default:stone_with_coal'},
				rarity = 120,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'default:stone_with_iron'},
				rarity = 130,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'default:stone_with_copper'},
				rarity = 130,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'default:stone_with_tin'},
				rarity = 120,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'default:stone_with_mese'},
				rarity = 150,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'default:stone_with_gold'},
				rarity = 140,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'default:stone_with_diamond'},
				rarity = 160,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:sand_with_diamond'},
				rarity = 160,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:desert_stone_with_gold'},
				rarity = 140,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:desert_stone_with_iron'},
				rarity = 140,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:desert_stone_with_coal'},
				rarity = 140,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:stone_with_emeralds'},
				rarity = 170,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:stone_with_rubys'},
				rarity = 175,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:stone_with_aikerums'},
				rarity = 180,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:stone_with_infiniums'},
				rarity = 190,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:stone_with_purpelliums'},
				rarity = 1100,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:desert_stone_with_meatz'},
				rarity = 1100,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:stone_with_unobtainiums'},
				rarity = 2100,
			},
						{
				-- player will get ore with 1/20 chance
				items = {'es:stone_with_beedos'},
				rarity = 2100,
			},
			{
				-- player will get ore with 1/20 chance
				items = {'es:depleted_uraniums'},
				rarity = 168,
			},

			{
				-- player will get cobble only if he get no ore,
				-- this is because max_items is 1
				items = {'default:cobble'},
			}
		}
	},
	sounds = default.node_sound_stone_defaults(),
})


--nopenode
--useless wood
minetest.register_node("es:nopenode", {
	description = "Nope Node",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"es_nopenode.png"},
	is_ground_content = false,
	drop = "dye:brown",
	groups = {choppy = 1},
	sounds = default.node_sound_dirt_defaults(),
})


--useless wood
minetest.register_node("es:rotten_wood", {
	description = "Rotten Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"es_rotten_wood.png"},
	is_ground_content = false,
	drop = "dye:brown",
	groups = {choppy = 3, oddly_breakable_by_hand = 3, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

default.register_fence("es:rotten_fence_wood", {
	description = "Rotten Wood Fence",
	texture = "es_rotten_wood.png",
	inventory_image = "default_fence_overlay.png^es_rotten_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^es_rotten_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	material = "es:rotten_wood",
	drop = "default:stick",
	groups = {choppy = 3, oddly_breakable_by_hand = 3, falling_node = 1},
	sounds = default.node_sound_dirt_defaults()
})



--compressed cobble
minetest.register_node("es:compressedcobble", {
	description = "Compressed Cobblestone  -=Store 891 cobble in ONE block!",
	tiles = {"es_compressed_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

--jt blocks
minetest.register_node("es:griefer_soul_block", {
	description = "A Block Of Griefer Souls -= Up Down 20 meters for the griefers.",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"bones_front.png^[colorize:red:120", "bones_front.png^[colorize:red:120", "bones_front.png^[colorize:red:120"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1,dig_immediate=2},
	sounds =default.node_sound_wood_defaults(),
})

minetest.register_node("es:meselamp_white", {
	description = "Mese Lamp White",
	drawtype = "glasslike",
	tiles = {"light.png^default_obsidian_glass.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 2},
	sounds =default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})


--A simple way to store your cookable Mese, and it gives off light!
minetest.register_node("es:messymese", {
	description = "Messy MESE Block",
	--tiles = {"default_clay.png^bubble.png^mese_cook_mese_crystal.png"},
    tiles = {"es_messy_mese.png"},
	light_source = 14,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})


--A simple way to store your depleted uranium!
minetest.register_node("es:depleted_uraniumblock", {
	description = "Depleted Uranium Block	-=Burntime 3600 seconds",
	tiles = {"es_depleted_uranium_block.png"},
	light_source = 1,
	is_ground_content = false,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})	

--GREEN Mese
minetest.register_node("es:mese_green", {
	description = "Green MESE Block",
	tiles = {"es_mese_green_block.png"},
	light_source = 1,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

	
minetest.register_node("es:what", {
	description = "The What Block - Dig for random gift",
	drawtype = "glasslike_framed_optional",
	--tiles = {"default_obsidian_glass.png^bubble.png", "default_obsidian_glass_detail.png^bubble.png"},
    	tiles = {"es_what_block.png"},
		
	use_texture_alpha = "clip", -- only needed for stairs API
	
	
	inventory_image = minetest.inventorycube("es_what_block.png"),
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	is_ground_content = false,
	sunlight_propagates = true,
	sounds = default.node_sound_glass_defaults(),
	groups = {cracky = 3},
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

--TECHNIC Marble and Granite Blocks
minetest.register_node( "es:granite", {
	description = "Granite",
	tiles = { "technic_granite.png" },
	--tiles = { "mcl_core_granite.png" },
	is_ground_content = true,
	groups = {cracky=1, granite=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "es:granite_bricks", {
	description = "Granite Bricks",
	tiles = { "technic_granite_bricks.png",},
	--tiles = { "mcl_core_granite_smooth.png",},
	is_ground_content = true,
	groups = {cracky=1, granite=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "es:marble", {
	description = "Marble",
	tiles = { "technic_marble.png" },
	--tiles = { "mcl_core_diorite.png" },
	is_ground_content = true,
	groups = {cracky=1, marble=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "es:marble_bricks", {
	description = "Marble Bricks",
	tiles = { "technic_marble_bricks.png" },
	--tiles = { "mcl_core_diorite_smooth.png" },
	is_ground_content = true,
	groups = {cracky=1, marble=1},
	sounds = default.node_sound_stone_defaults(),
})

--ES Ore Definition
--ES Desert ores
--Diamond located in sand?
minetest.register_node("es:sand_with_diamond", {
	description = "The buried treasure chest is gone, however this gem remains.  Use a shovel!",
	--tiles = {"default_sand.png^default_diamond.png"},
	tiles = {"default_sand.png^default_mineral_diamond.png"},
	--light_source = 7,
	is_ground_content = true,
	groups = {crumbly=1,level=2},
	drop = "default:diamond",
	sounds = default.node_sound_dirt_defaults(),
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

minetest.register_node("es:desert_stone_with_meatz", {
	description = "Meat Ore",
	tiles = {"default_desert_stone.png^mobs_meat_raw.png"},
	groups = {cracky = 3},
	drop = 'mobs:meat_raw',
	sounds = default.node_sound_stone_defaults(),
})

--==================================
--==================================
--==================================
-- Flame nodes
--[[

	tiles = {{
		name = "fire_basic_flame_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1
		}}

]]










--==================================
--==================================






minetest.register_node("es:stone_with_emeralds", {
	description = "Emerald Ore",
	tiles = {"default_stone.png^es_emerald_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = "es:emerald_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_rubys", {
	description = "Ruby Ore",
	tiles = {"default_stone.png^es_ruby_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = "es:ruby_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_aikerums", {
	description = "Aikerum Ore",
	tiles = {"default_stone.png^es_aikerum_ore.png"},
	is_ground_content = true,
	groups = {cracky=1,level = 2},
	drop = "es:aikerum_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_infiniums", {
	description = "Infinium Ore - Slightly Radioactive",
	tiles = {"default_stone.png^es_infinium_ore.png"},
	is_ground_content = true,
	--groups = {cracky=1,level = 2, radioactive = (state == "source" and 2 or 2)},
	groups = {cracky=1,level = 2, radioactive = 1},
	drop = "es:infinium_goo",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_purpelliums", {
	description = "Purlellium Ore - Oddly interesting",
	tiles = {"default_stone.png^es_purpellium_ore.png"},
	is_ground_content = true,
	--groups = {cracky=2,level = 2,fall_damage_add_percent = -1000, radioactive = (state == "source" and 2 or 2)},
	groups = {cracky=2,level = 2,fall_damage_add_percent = -1000, radioactive = 0},
	drop = "es:purpellium_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_unobtainiums", {
	description = "Unobtainium Ore - Mine only with TNT",
	tiles = {"default_stone.png^es_unobtainium_ore.png"},
	is_ground_content = true,
	--groups = {cracky=2,level = 2,fall_damage_add_percent = -1000, radioactive = (state == "source" and 2 or 2)},
	groups = {cracky=0,level = 2,fall_damage_add_percent = -1000, radioactive = 1},
	drop = "es:unobtainium_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:depleted_uraniums", {
	description = "Depleted Uranium Ore RADIOACTIVE",
	tiles = {"default_stone.png^es_uranium_ore.png"},
	--groups = {cracky = 3, radioactive = (state == "source" and 3 or 2)},
	--groups = {cracky = 3, radioactive = 1},
	groups = {cracky = 3, radioactive = 1},
	drop = 'es:depleted_uranium_lump',
	sounds = default.node_sound_stone_defaults(),
	light_source = 12,
})

minetest.register_node("es:stone_with_beedos", {
	description = "Beedo Ore",
	tiles = {"default_stone.png^es_beedo_ore.png"},
	groups = {cracky = 1},
	drop = 'es:beedo_crystal',
	sounds = default.node_sound_stone_defaults(),
	--light_source = 12,
})

--Emerald located at -1000
minetest.register_node("es:emeraldblock", {
	description = "Emerald Block",
	tiles = {"es_emerald_block.png"},
	light_source = 7,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

--Ruby located at -3000
minetest.register_node("es:rubyblock", {
	description = "Ruby Block",
	tiles = {"es_ruby_block.png"},
	light_source = 7,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

--Aikerum located at -4000
minetest.register_node("es:aikerumblock", {
	description = "Aikerum Block",
	tiles = {"es_aikerum_block.png"},
	light_source = 7,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

--Infinium located at -5000
minetest.register_node("es:infiniumblock", {
	description = "infinium Block",
	tiles = {"es_infinium_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

--Purpellium located at -6000
minetest.register_node("es:purpelliumblock", {
	description = "Purpellium Block -=Safe to fall on from great height!=-",
	tiles = {"es_purpellium_block.png"},
	light_source = 7,
	is_ground_content = true,
	groups = {cracky=1,level=2, fall_damage_add_percent=-100},
	sounds = default.node_sound_stone_defaults(),
})

--Unobtainium located at -15000
minetest.register_node("es:unobtainiumblock", {
	description = "Unobtainium Block",
	tiles = {"es_unobtainium_block.png"},
	light_source = 7,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("es:beedo_block", {
	description = "BEEDO!",
	--tiles = {"es_beedo_block.png^default_diamond.png"},
	tiles = {"es_beedo_block.png"},
	light_source = 7,
	is_ground_content = false,
	groups = {cracky=1,level=2},
	--drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

--OLD long way to get mese
--[[
minetest.register_node("es:stone_with_mese", {
	description = "Cookable Mese Ore",
	tiles = {"default_stone.png^default_mineral_mese.png"},
	paramtype = "light",
	groups = {cracky = 1},
	drop = "es:mesecook_crystal",
	sounds = default.node_sound_stone_defaults(),
	light_source = 1,
})
]]


--BONEBLOCK
minetest.register_node("es:boneblock", {
	description = "Bone Blok  --=Use for non stealable decoration.",
	tiles = {
	"es_bones_top.png",
	"es_bones_bottom.png",
	"es_bones_side.png",
	"es_bones_side.png",
	"es_bones_rear.png",
	"es_bones_front.png"
	},
	paramtype2 = "facedir",
	groups = {dig_immediate=2},
	sounds = default.node_sound_dirt_defaults({
	footstep = {name="default_gravel_footstep", gain=0.5},
	dug = {name="default_gravel_footstep", gain=1.0},
	}),
})





--CUSTOM biome stuff





--ES Clays
minetest.register_node("es:strange_clay_blue", {
	description = "Strange Clay Blue",
	tiles = {"es_strange_clay_blue.png"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_red", {
	description = "Strange Clay Red",
	--tiles = {"default_clay.png^[colorize:#FA5858:180"},
	tiles = {"es_strange_clay_red.png"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_maroon", {
	description = "Strange Clay Maroon",
	--tiles = {"default_clay.png^[colorize:#8A0808:180"},
	tiles = {"es_strange_clay_maroon.png"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_brown", {
	description = "Strange Clay Brown",
	tiles = {"es_strange_clay_brown.png"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_orange", {
	description = "Strange Clay Orange",
	tiles = {"es_strange_clay_orange.png"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_black", {
	description = "Strange Clay Black",
	tiles = {"es_strange_clay_black.png"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_grey", {
	description = "Strange Clay Grey",
	tiles = {"es_strange_clay_grey.png"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

--ES ground blocks
minetest.register_node("es:strange_grass", {
	description = "Strange Grass",
	tiles = {("es_strange_grass.png"),
		"default_clay.png",
		{name = "default_clay.png^es_strange_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, es_grass = 1, spreading_dirt_type = 1},
	drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("es:aiden_grass", {
	description = "Aiden Grass",
	tiles = {("es_aiden_grass.png"),
		"default_clay.png",
		{name = "default_clay.png^es_aiden_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, es_grass = 1, spreading_dirt_type = 1},
	drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

--Dry dirt added
minetest.register_node("es:dry_dirt", {
	description = "Some dry dirt  -=Use to make mud for space farming.",
	tiles = {"es_dry_dirt.png"},
	--tiles = {"dry_dirt.png"},
	groups = {crumbly = 3},
	drop = 'es:dry_dirt',
	sounds = default.node_sound_dirt_defaults(),
})


