--Originally made by TenPlus1
--maikerumine added slabs and stairs
--20160321
--20171121  -added more blocks and intergrate with moreblocks / stairs plus
--20200119 remade for minetest 0.4.9
--20200915 added reverse cooking to extract dyes
--20220708  added ores and ore gen to all the stone blocks
--for extreme survival game

cblocks = {}



--black
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_black_with_coal",
		wherein        = "cblocks:stone_black",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_black_with_iron",
		wherein        = "cblocks:stone_black",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_black_with_copper",
		wherein        = "cblocks:stone_black",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_black_with_tin",
		wherein        = "cblocks:stone_black",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_black_with_gold",
		wherein        = "cblocks:stone_black",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_black_with_mese",
		wherein        = "cblocks:stone_black",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_black_with_diamond",
		wherein        = "cblocks:stone_black",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--blue
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_blue_with_coal",
		wherein        = "cblocks:stone_blue",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_blue_with_iron",
		wherein        = "cblocks:stone_blue",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_blue_with_copper",
		wherein        = "cblocks:stone_blue",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_blue_with_tin",
		wherein        = "cblocks:stone_blue",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_blue_with_gold",
		wherein        = "cblocks:stone_blue",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_blue_with_mese",
		wherein        = "cblocks:stone_blue",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_blue_with_diamond",
		wherein        = "cblocks:stone_blue",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--brown
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_brown_with_coal",
		wherein        = "cblocks:stone_brown",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_brown_with_iron",
		wherein        = "cblocks:stone_brown",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_brown_with_copper",
		wherein        = "cblocks:stone_brown",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_brown_with_tin",
		wherein        = "cblocks:stone_brown",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_brown_with_gold",
		wherein        = "cblocks:stone_brown",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_brown_with_mese",
		wherein        = "cblocks:stone_brown",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_brown_with_diamond",
		wherein        = "cblocks:stone_brown",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--cyan
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_cyan_with_coal",
		wherein        = "cblocks:stone_cyan",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_cyan_with_iron",
		wherein        = "cblocks:stone_cyan",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_cyan_with_copper",
		wherein        = "cblocks:stone_cyan",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_cyan_with_tin",
		wherein        = "cblocks:stone_cyan",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_cyan_with_gold",
		wherein        = "cblocks:stone_cyan",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_cyan_with_mese",
		wherein        = "cblocks:stone_cyan",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_cyan_with_diamond",
		wherein        = "cblocks:stone_cyan",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--dark_green
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_green_with_coal",
		wherein        = "cblocks:stone_dark_green",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_green_with_iron",
		wherein        = "cblocks:stone_dark_green",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_green_with_copper",
		wherein        = "cblocks:stone_dark_green",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_green_with_tin",
		wherein        = "cblocks:stone_dark_green",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_green_with_gold",
		wherein        = "cblocks:stone_dark_green",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_green_with_mese",
		wherein        = "cblocks:stone_dark_green",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_green_with_diamond",
		wherein        = "cblocks:stone_dark_green",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--dark_grey
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_grey_with_coal",
		wherein        = "cblocks:stone_dark_grey",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_grey_with_iron",
		wherein        = "cblocks:stone_dark_grey",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_grey_with_copper",
		wherein        = "cblocks:stone_dark_grey",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_grey_with_tin",
		wherein        = "cblocks:stone_dark_grey",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_grey_with_gold",
		wherein        = "cblocks:stone_dark_grey",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_grey_with_mese",
		wherein        = "cblocks:stone_dark_grey",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_dark_grey_with_diamond",
		wherein        = "cblocks:stone_dark_grey",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--green
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_green_with_coal",
		wherein        = "cblocks:stone_green",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_green_with_iron",
		wherein        = "cblocks:stone_green",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_green_with_copper",
		wherein        = "cblocks:stone_green",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_green_with_tin",
		wherein        = "cblocks:stone_green",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_green_with_gold",
		wherein        = "cblocks:stone_green",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_green_with_mese",
		wherein        = "cblocks:stone_green",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_green_with_diamond",
		wherein        = "cblocks:stone_green",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--grey
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_grey_with_coal",
		wherein        = "cblocks:stone_grey",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_grey_with_iron",
		wherein        = "cblocks:stone_grey",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_grey_with_copper",
		wherein        = "cblocks:stone_grey",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_grey_with_tin",
		wherein        = "cblocks:stone_grey",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_grey_with_gold",
		wherein        = "cblocks:stone_grey",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_grey_with_mese",
		wherein        = "cblocks:stone_grey",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_grey_with_diamond",
		wherein        = "cblocks:stone_grey",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--magenta
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_magenta_with_coal",
		wherein        = "cblocks:stone_magenta",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_magenta_with_iron",
		wherein        = "cblocks:stone_magenta",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_magenta_with_copper",
		wherein        = "cblocks:stone_magenta",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_magenta_with_tin",
		wherein        = "cblocks:stone_magenta",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_magenta_with_gold",
		wherein        = "cblocks:stone_magenta",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_magenta_with_mese",
		wherein        = "cblocks:stone_magenta",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_magenta_with_diamond",
		wherein        = "cblocks:stone_magenta",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--orange
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_orange_with_coal",
		wherein        = "cblocks:stone_orange",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_orange_with_iron",
		wherein        = "cblocks:stone_orange",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_orange_with_copper",
		wherein        = "cblocks:stone_orange",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_orange_with_tin",
		wherein        = "cblocks:stone_orange",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_orange_with_gold",
		wherein        = "cblocks:stone_orange",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_orange_with_mese",
		wherein        = "cblocks:stone_orange",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_orange_with_diamond",
		wherein        = "cblocks:stone_orange",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--pink
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_pink_with_coal",
		wherein        = "cblocks:stone_pink",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_pink_with_iron",
		wherein        = "cblocks:stone_pink",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_pink_with_copper",
		wherein        = "cblocks:stone_pink",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_pink_with_tin",
		wherein        = "cblocks:stone_pink",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_pink_with_gold",
		wherein        = "cblocks:stone_pink",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_pink_with_mese",
		wherein        = "cblocks:stone_pink",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_pink_with_diamond",
		wherein        = "cblocks:stone_pink",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--red
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_red_with_coal",
		wherein        = "cblocks:stone_red",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_red_with_iron",
		wherein        = "cblocks:stone_red",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_red_with_copper",
		wherein        = "cblocks:stone_red",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_red_with_tin",
		wherein        = "cblocks:stone_red",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_red_with_gold",
		wherein        = "cblocks:stone_red",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_red_with_mese",
		wherein        = "cblocks:stone_red",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_red_with_diamond",
		wherein        = "cblocks:stone_red",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})
	
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

--white
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_white_with_coal",
		wherein        = "cblocks:stone_white",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_white_with_iron",
		wherein        = "cblocks:stone_white",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_white_with_copper",
		wherein        = "cblocks:stone_white",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_white_with_tin",
		wherein        = "cblocks:stone_white",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_white_with_gold",
		wherein        = "cblocks:stone_white",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_white_with_mese",
		wherein        = "cblocks:stone_white",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_white_with_diamond",
		wherein        = "cblocks:stone_white",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

--yellow
--oregen
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_yellow_with_coal",
		wherein        = "cblocks:stone_yellow",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_yellow_with_iron",
		wherein        = "cblocks:stone_yellow",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_yellow_with_copper",
		wherein        = "cblocks:stone_yellow",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_yellow_with_tin",
		wherein        = "cblocks:stone_yellow",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})
		
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_yellow_with_gold",
		wherein        = "cblocks:stone_yellow",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_yellow_with_mese",
		wherein        = "cblocks:stone_yellow",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cblocks:stone_yellow_with_diamond",
		wherein        = "cblocks:stone_yellow",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})


--endgen default





	
	
	