--Originally made by TenPlus1
--maikerumine added slabs and stairs
--20160321
--20171121  -added more blocks and intergrate with moreblocks / stairs plus
--20200119 remade for minetest 0.4.9
--20200915 added reverse cooking to extract dyes
--for extreme survival game

cblocks = {}


--CBLOCK ORE

--=========================================================
--violet
--coal
minetest.register_node("cblocks:stone_violet_with_coal", {
	description = "Coal Ore",
	tiles = {"default_stone.png^cblocks_violet.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = "default:coal_lump",
	sounds = default.node_sound_stone_defaults(),
})

--iron
minetest.register_node("cblocks:stone_violet_with_iron", {
	description = "Iron Ore",
	tiles = {"default_stone.png^cblocks_violet.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = "default:iron_lump",
	sounds = default.node_sound_stone_defaults(),
})

--copper
minetest.register_node("cblocks:stone_violet_with_copper", {
	description = "Copper Ore",
	tiles = {"default_stone.png^cblocks_violet.png^default_mineral_copper.png"},
	groups = {cracky = 2},
	drop = "default:copper_lump",
	sounds = default.node_sound_stone_defaults(),
})

--tin
minetest.register_node("cblocks:stone_violet_with_tin", {
	description = "Tin Ore",
	tiles = {"default_stone.png^cblocks_violet.png^default_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "default:tin_lump",
	sounds = default.node_sound_stone_defaults(),
})

--mese
minetest.register_node("cblocks:stone_violet_with_mese", {
	description = "Mese Ore",
	tiles = {"default_stone.png^cblocks_violet.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

--gold
minetest.register_node("cblocks:stone_violet_with_gold", {
	description = "Gold Ore",
	tiles = {"default_stone.png^cblocks_violet.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

--diamond
minetest.register_node("cblocks:stone_violet_with_diamond", {
	description = "Diamond Ore",
	tiles = {"default_stone.png^cblocks_violet.png^default_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})
--=========================================================




--[[
--=====================================
--=====================================
--=====================================
--=====================================
--violet
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_violet_with_coal",
		wherein        = "cblocks:stone_violet",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_violet_with_iron",
		wherein        = "cblocks:stone_violet",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_violet_with_copper",
		wherein        = "cblocks:stone_violet",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_violet_with_tin",
		wherein        = "cblocks:stone_violet",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_violet_with_gold",
		wherein        = "cblocks:stone_violet",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_violet_with_mese",
		wherein        = "cblocks:stone_violet",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_violet_with_diamond",
		wherein        = "cblocks:stone_violet",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})
]]

	
	