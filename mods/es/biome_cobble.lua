--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine
--[[
minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("emerald_ore", "es:stone_with_emeralds")
minetest.register_alias("ruby_ore", "es:stone_with_rubys")
minetest.register_alias("aikerum_ore", "es:stone_with_aikerums")
minetest.register_alias("purpellium_ore", "es:stone_with_purpelliums")
minetest.register_alias("infinium_ore", "es:stone_with_infiniums")
minetest.register_alias("mud", "es:mudddy_block")
minetest.register_alias("toxic_water", "es:toxic_water_source")
minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_water_source", "default:water_source")
]]

--Override default biomes
--minetest.clear_registered_biomes()
--minetest.clear_registered_ores()
--minetest.clear_registered_decorations()



--
-- Register ores
--
function es.register_mgv6_ores()

end

function es.register_ores()

--ES DESERT

	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:desert_stone_with_coal",
			wherein        = "default:desert_stone",
			clust_scarcity = 6 * 6 * 6,
			clust_num_ores = 9,
			clust_size     = 6,
			y_min          = -31000,
			y_max          = 200,
		})

		-- Iron
	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:desert_stone_with_iron",
			wherein        = "default:desert_stone",
			clust_scarcity = 6 * 6 * 7,
			clust_num_ores = 3,
			clust_size     = 2,
			y_min          = -150,
			y_max          = 200,
		})


	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:desert_stone_with_gold",
			wherein        = "default:desert_stone",
			clust_scarcity = 13 * 13 * 13,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min          = -214,
			y_max          = 2256,
		})
		
	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:desert_stone_with_coal",
			wherein        = "default:desert_stone",
			clust_scarcity = 6 * 6 * 6,
			clust_num_ores = 9,
			clust_size     = 6,
			y_min          = -31000,
			y_max          = 200,
		})

		-- Iron
	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:desert_stone_with_iron",
			wherein        = "default:desert_stone",
			clust_scarcity = 6 * 6 * 7,
			clust_num_ores = 3,
			clust_size     = 2,
			y_min          = -150,
			y_max          = 200,
		})


	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:desert_stone_with_gold",
			wherein        = "default:desert_stone",
			clust_scarcity = 13 * 13 * 13,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min          = -214,
			y_max          = 2256,
		})

	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:desert_stone_with_meatz",
			wherein        = "default:desert_stone",
			clust_scarcity = 33 * 33 * 33,
			clust_num_ores = 3,
			clust_size     = 3,
			y_min          = -214,
			y_max          = 2256,
		})
		
	--DEFAULT STRATA
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:stone",
		wherein        = {"default:desert_stone","default:desert_sand","es:strange_clay_orange","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 3,
		clust_size     = 4,
		y_min     = 50,
		y_max     = 90,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:clay",
		wherein        = {"default:desert_stone","default:desert_sand","default:stone","es:strange_clay_orange","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 8,
		y_min     = 24,
		y_max     = 50,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:sandstone",
		wherein        ={"default:desert_stone","default:desert_sand","default:stone","es:strange_clay_orange","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 10,
		y_min     = 10,
		y_max     = 30,
		noise_threshold = 0.2,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:dirt",
		wherein        = {"default:desert_stone","default:desert_sand","es:strange_clay_orange","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 4,
		y_min     = -12,
		y_max     = 7,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:gravel",
		wherein        = {"es:strange_clay_orange","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 8,
		clust_size     = 4,
		y_min     = 34,
		y_max     = 70,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:coalblock",
		wherein        = {"es:strange_clay_orange","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 4,
		y_min     = 60,
		y_max     = 96,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:desert_sand",
		wherein        = {"es:strange_clay_orange","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 10,
		y_min     = 44,
		y_max     = 70,
		noise_threshold = 0.7,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})
		minetest.register_ore({
			ore_type       = "blob",
			ore            = "default:lava_source",
			wherein        = "es:strange_clay_orange","es:strange_clay_red",
			clust_scarcity = 15*15*10,
			clust_num_ores = 2,
			clust_size     = 2,
			y_min          = -62,
			y_max          = 50,
		})

	--HARDENED CLAY FOR MESA :)
	--maikerumine

	--MESA STRATA
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:desert_sand",
		wherein        = {"default:desert_stone", "es:strange_clay_orange","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 8,
		clust_size     = 4,
		y_min     = 4,
		y_max     = 70,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})


	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_grey",
		wherein        = {"es:strange_clay_orange","es:strange_clay_red"},
		--clust_scarcity = 1,
		--clust_num_ores = 27,
		clust_size     = 1,
		y_min     = 5,
		y_max     = 14,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_black",
		wherein        = {"es:strange_clay_orange","es:strange_clay_red"},
		--clust_scarcity = 1,
		--clust_num_ores =27,
		clust_size     = 1,
		y_min     = 15,
		y_max     = 17,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70}, 
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_maroon",
		wherein        = {"es:strange_clay_orange","es:strange_clay_red"},
		--clust_scarcity = 1,
		--clust_num_ores = 27,
		clust_size     = 6,
		y_min     = 20,
		y_max     = 29,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_red",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 8,
		clust_size     = 2,
		y_min     = 34,
		y_max     = 37,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_brown",
		wherein        = {"es:strange_clay_orange","es:strange_clay_red"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 1,
		y_min     = 42,
		y_max     = 43,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_blue",
		wherein        = {"es:strange_clay_orange", "es:strange_grass","es:strange_clay_red"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 1,
		y_min     = 43,
		y_max     = 44,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_red",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 1,
		y_min     = 44,
		y_max     = 45,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_red",
		wherein        = {"es:strange_clay_orange", "cblocks:stone_red"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 1,
		y_min     = 45,
		y_max     = 47,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_grey",
		wherein        = {"es:strange_clay_orange","cblocks:stone_red", "es:strange_clay_red"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 1,
		y_min     = 49,
		y_max     = 52,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_black",
		wherein        = {"es:strange_clay_orange","cblocks:stone_red", "es:strange_clay_red"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 4,
		y_min     = 53,
		y_max     = 59,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_grey",
		wherein        = {"es:strange_clay_orange","cblocks:stone_red", "es:strange_clay_red"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 8,
		y_min     = 61,
		y_max     = 70,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_maroon",
		wherein        = {"es:strange_clay_orange","cblocks:stone_red", "es:strange_clay_red"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 8,
		y_min     = 66,
		y_max     = 75,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_black",
		wherein        = {"es:strange_clay_orange","cblocks:stone_red", "es:strange_clay_red"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 8,
		y_min     = 161,
		y_max     = 170,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	--CLAY!!
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_maroon",
		wherein        = {"default:desert_stone","cblocks:stone_red", "es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 3,
		clust_size     = 4,
		y_min     = 70,
		y_max     = 190,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_black",
		wherein        = {"default:desert_stone","cblocks:stone_red", "default:stone","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 4,
		y_min     = 60,
		y_max     = 96,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_red",
		wherein        = {"default:desert_stone","cblocks:stone_red", "es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 8,
		clust_size     = 4,
		y_min     = 44,
		y_max     = 70,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_grey",
		wherein        = {"default:desert_stone","cblocks:stone_red","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 8,
		clust_size     = 4,
		y_min     = 34,
		y_max     = 70,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_orange",
		wherein        ={"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 5,
		clust_size     = 5,
		y_min     = 10,
		y_max     = 40,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_brown",
		wherein        = {"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange","es:strange_clay_red"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 4,
		y_min     = -12,
		y_max     = 7,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_red",
		wherein        = {"es:strange_clay_brown","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange"},
		clust_scarcity = 1,
		clust_num_ores = 9,
		clust_size     = 12,
		y_min     = 0,
		y_max     = 30,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_maroon",
		wherein        = {"es:strange_clay_brown"},
		clust_scarcity = 1,
		clust_num_ores = 9,
		clust_size     = 12,
		y_min     = 0,
		y_max     = 30,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_black",
		wherein        = {"es:strange_clay_brown"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 4,
		y_min     = -5,
		y_max     = 3,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=4, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
	})

	--DEFAULT STRATA
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:stone",
		wherein        = {"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange", "es:strange_clay_orange"},
		clust_scarcity = 1,
		clust_num_ores = 3,
		clust_size     = 4,
		y_min     = 50,
		y_max     = 90,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:clay",
		wherein        = {"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange","default:stone","es:strange_clay_orange"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 8,
		y_min     = 24,
		y_max     = 50,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:sandstone",
		wherein        ={"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange","default:stone","es:strange_clay_orange"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 10,
		y_min     = 10,
		y_max     = 30,
		noise_threshold = 0.2,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:dirt",
		wherein        = {"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange","es:strange_clay_orange"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 4,
		y_min     = -12,
		y_max     = 7,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:gravel",
		wherein        = {"es:strange_clay_orange"},
		clust_scarcity = 1,
		clust_num_ores = 8,
		clust_size     = 4,
		y_min     = 34,
		y_max     = 70,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:coalblock",
		wherein        = {"es:strange_clay_orange"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 4,
		y_min     = 60,
		y_max     = 96,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:desert_sand",
		wherein        = {"es:strange_clay_orange"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 10,
		y_min     = 44,
		y_max     = 70,
		noise_threshold = 0.7,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})
		minetest.register_ore({
			ore_type       = "blob",
			ore            = "default:lava_source",
			wherein        = "es:strange_clay_orange",
			clust_scarcity = 15*15*10,
			clust_num_ores = 2,
			clust_size     = 2,
			y_min          = -62,
			y_max          = 50,
		})

	--HARDENED CLAY FOR MESA :)
	--maikerumine

	--MESA STRATA
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:desert_sand",
		wherein        = {"default:desert_stone","es:strange_clay_red","cblocks:stone_red",  "es:strange_clay_orange"},
		clust_scarcity = 1,
		clust_num_ores = 8,
		clust_size     = 4,
		y_min     = 4,
		y_max     = 70,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})


	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_grey",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 27,
		clust_size     = 1,
		y_min     = 5,
		y_max     = 14,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_black",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores =27,
		clust_size     = 1,
		y_min     = 15,
		y_max     = 17,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70}, 
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_maroon",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 27,
		clust_size     = 6,
		y_min     = 20,
		y_max     = 29,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_red",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 8,
		clust_size     = 2,
		y_min     = 34,
		y_max     = 37,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_brown",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 1,
		y_min     = 42,
		y_max     = 43,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_blue",
		wherein        = {"es:strange_clay_orange", "es:strange_grass"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 1,
		y_min     = 43,
		y_max     = 44,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_red",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 1,
		y_min     = 44,
		y_max     = 45,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_red",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 1,
		y_min     = 45,
		y_max     = 47,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_grey",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 1,
		y_min     = 49,
		y_max     = 52,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_black",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 4,
		y_min     = 53,
		y_max     = 59,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_grey",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 8,
		y_min     = 61,
		y_max     = 70,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_maroon",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 8,
		y_min     = 66,
		y_max     = 75,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:strange_clay_black",
		wherein        = {"es:strange_clay_orange"},
		--clust_scarcity = 1,
		--clust_num_ores = 100,
		clust_size     = 8,
		y_min     = 161,
		y_max     = 170,
		noise_threshold = 0.0,
		noise_params =     {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})


	
	--ES LIQUIDS
	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:toxic_water_source",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 1,
			clust_size     = 4,
			y_min          = -9000,
			y_max          = -35,
			flags          = "absheight",

		})


	
	minetest.register_ore({
			ore_type       = "blob",
			ore            = "es:muddy_block",
			wherein        = "default:stone",
			clust_scarcity = 11*5*10,
			clust_num_ores = 4,
			clust_size     = 12,
			y_min          = -331,
			y_max          = -155,
			flags          = "absheight",

		})
	

	--Default Node Registration and location
		-- Scatter ores

		-- Coal

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_coal",
			wherein        = "default:stone",
			clust_scarcity = 8 * 8 * 8,
			clust_num_ores = 9,
			clust_size     = 3,
			y_max          = 31000,
			y_min          = 1025,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_coal",
			wherein        = "default:stone",
			clust_scarcity = 8 * 8 * 8,
			clust_num_ores = 8,
			clust_size     = 3,
			y_max          = 64,
			y_min          = -127,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_coal",
			wherein        = "default:stone",
			clust_scarcity = 12 * 12 * 12,
			clust_num_ores = 30,
			clust_size     = 5,
			y_max          = -128,
			y_min          = -17654,
		})

		-- Tin

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_tin",
			wherein        = "default:stone",
			clust_scarcity = 10 * 10 * 10,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = 31000,
			y_min          = 1025,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_tin",
			wherein        = "default:stone",
			clust_scarcity = 13 * 13 * 13,
			clust_num_ores = 4,
			clust_size     = 3,
			y_max          = -64,
			y_min          = -127,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_tin",
			wherein        = "default:stone",
			clust_scarcity = 10 * 10 * 10,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = -128,
			y_min          = -17654,
		})

		-- Copper

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_copper",
			wherein        = "default:stone",
			clust_scarcity = 9 * 9 * 9,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = 31000,
			y_min          = 1025,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_copper",
			wherein        = "default:stone",
			clust_scarcity = 12 * 12 * 12,
			clust_num_ores = 4,
			clust_size     = 3,
			y_max          = -64,
			y_min          = -127,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_copper",
			wherein        = "default:stone",
			clust_scarcity = 9 * 9 * 9,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = -128,
			y_min          = -17654,
		})

		-- Iron

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_iron",
			wherein        = "default:stone",
			clust_scarcity = 9 * 9 * 9,
			clust_num_ores = 12,
			clust_size     = 3,
			y_max          = 31000,
			y_min          = 1025,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_iron",
			wherein        = "default:stone",
			clust_scarcity = 7 * 7 * 7,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = -128,
			y_min          = -255,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_iron",
			wherein        = "default:stone",
			clust_scarcity = 12 * 12 * 12,
			clust_num_ores = 29,
			clust_size     = 5,
			y_max          = -256,
			y_min          = -17654,
		})

		-- Gold

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_gold",
			wherein        = "default:stone",
			clust_scarcity = 13 * 13 * 13,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = 31000,
			y_min          = 1025,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_gold",
			wherein        = "default:stone",
			clust_scarcity = 15 * 15 * 15,
			clust_num_ores = 3,
			clust_size     = 2,
			y_max          = -256,
			y_min          = -511,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_gold",
			wherein        = "default:stone",
			clust_scarcity = 13 * 13 * 13,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = -512,
			y_min          = -17654,
		})

		-- Mese crystal

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_mese",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = 31000,
			y_min          = 1025,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_mese",
			wherein        = "default:stone",
			clust_scarcity = 18 * 18 * 18,
			clust_num_ores = 3,
			clust_size     = 2,
			y_max          = -512,
			y_min          = -1023,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_mese",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = -1024,
			y_min          = -17654,
		})

		-- Diamond

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_diamond",
			wherein        = "default:stone",
			clust_scarcity = 15 * 15 * 15,
			clust_num_ores = 4,
			clust_size     = 3,
			y_max          = 31000,
			y_min          = 1025,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_diamond",
			wherein        = "default:stone",
			clust_scarcity = 17 * 17 * 17,
			clust_num_ores = 4,
			clust_size     = 3,
			y_max          = -1024,
			y_min          = -2047,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:stone_with_diamond",
			wherein        = "default:stone",
			clust_scarcity = 15 * 15 * 15,
			clust_num_ores = 4,
			clust_size     = 3,
			y_max          = -2048,
			y_min          = -17654,
		})

		-- Mese block

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:mese",
			wherein        = "default:stone",
			clust_scarcity = 36 * 36 * 36,
			clust_num_ores = 3,
			clust_size     = 2,
			y_max          = 31000,
			y_min          = 1025,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:mese",
			wherein        = "default:stone",
			clust_scarcity = 36 * 36 * 36,
			clust_num_ores = 3,
			clust_size     = 2,
			y_max          = -2048,
			y_min          = -4095,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:mese",
			wherein        = "default:stone",
			clust_scarcity = 28 * 28 * 28,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = -4096,
			y_min          = -17654,
		})

	--Default Node Registration and location
		-- Sheet
		
		-- Desert Stone

	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "default:desert_stone",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -1455,
			y_max          = -1144,
			flags          = "absheight",
		})

		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "default:desert_stone",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -16000,
			y_max          = -13000,
			flags          = "absheight",
		})		

		-- Gravel
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "default:gravel",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -1600,
			y_max          = -130,
			flags          = "absheight",
		})

		-- Dirt
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "default:dirt",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -5000,
			y_max          = -4000,
			flags          = "absheight",
		})
		
	--ES Node Registration and location

	--========================
	--Emerald located at -1000
	--========================
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_emeralds",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 2,
			clust_size     = 3,
			y_min     = -2000,
			y_max     = -1000,
			flags          = "absheight",
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_emeralds",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -2000,
			y_max     = -1000,
			flags          = "absheight",
		})

	--EASY_MODE
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_emeralds",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -10300,
			y_max     = -10100,
			flags          = "absheight",
		})

	--EASY_MODE X3
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_emeralds",
			wherein        = "default:stone",
			clust_scarcity = 10 * 10 * 10,
			clust_num_ores = 9,
			clust_size     = 5,
			y_min     = -12000,
			y_max     = -10300,
			flags          = "absheight",
		})
		
	--========================	
	--Ruby located at -3000
	--========================
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_rubys",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -4000,
			y_max     = -3000,
			flags          = "absheight",
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_rubys",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 2,
			clust_size     = 3,
			y_min     = -4000,
			y_max     = -3000,
			flags          = "absheight",
		})

	--EASY_MODE
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_rubys",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -10300,
			y_max     = -10100,
			flags          = "absheight",
		})
		
	--EASY_MODE X3
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_rubys",
			wherein        = "default:stone",
			clust_scarcity = 10 * 10 * 10,
			clust_num_ores = 9,
			clust_size     = 5,
			y_min     = -12000,
			y_max     = -10300,
			flags          = "absheight",
		})
		
	--========================	
	--Aikerum located at -4000
	--========================
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_aikerums",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -5000,
			y_max     = -4000,
			flags          = "absheight",
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_aikerums",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 2,
			clust_size     = 3,
			y_min     = -5000,
			y_max     = -4000,
			flags          = "absheight",
		})

	--EASY_MODE
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_aikerums",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -10300,
			y_max     = -10100,
			flags          = "absheight",
		})

	--EASY_MODE X3
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_aikerums",
			wherein        = "default:stone",
			clust_scarcity = 10 * 10 * 10,
			clust_num_ores = 9,
			clust_size     = 5,
			y_min     = -12000,
			y_max     = -10300,
			flags          = "absheight",
		})
		
	--========================	
	--Infinium located at -5000
	--========================
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_infiniums",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 2,
			clust_size     = 3,
			y_min     = -6000,
			y_max     = -5000,
			flags          = "absheight",
		})
		
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_infiniums",
			wherein        = "default:stone",
			clust_scarcity = 34*34*34,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -6000,
			y_max     = -5000,
			flags          = "absheight",
		})

	--EASY_MODE
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_infiniums",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -10300,
			y_max     = -10100,
			flags          = "absheight",
		})
		
		--EASY_MODE X3
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_infiniums",
			wherein        = "default:stone",
			clust_scarcity = 10 * 10 * 10,
			clust_num_ores = 9,
			clust_size     = 5,
			y_min     = -12000,
			y_max     = -10300,
			flags          = "absheight",
		})

	--========================	
	--Purpellium located at -6000
	--========================
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_purpelliums",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 2,
			clust_size     = 3,
			y_min     = -7000,
			y_max     = -6000,
			flags          = "absheight",
		})
		
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_purpelliums",
			wherein        = "default:stone",
			clust_scarcity = 34*34*34,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -7000,
			y_max     = -6000,
			flags          = "absheight",
		})

	--EASY_MODE
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_purpelliums",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -10300,
			y_max     = -10100,
			flags          = "absheight",
		})
		
		--EASY_MODE X3
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_purpelliums",
			wherein        = "default:stone",
			clust_scarcity = 10 * 10 * 10,
			clust_num_ores = 9,
			clust_size     = 5,
			y_min     = -12000,
			y_max     = -10300,
			flags          = "absheight",
		})

	--========================	
	--Unobtainium located at -8000
	--========================
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_unobtainiums",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 2,
			clust_size     = 3,
			y_min     = -8000,
			y_max     = -7300,
			flags          = "absheight",
		})
		
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_unobtainiums",
			wherein        = "default:stone",
			clust_scarcity = 34*34*34,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -8000,
			y_max     = -7300,
			flags          = "absheight",
		})

	--EASY_MODE
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_unobtainiums",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min     = -15000,
			y_max     = -10300,
			flags          = "absheight",
		})
		
		--EASY_MODE X3
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_unobtainiums",
			wherein        = "default:stone",
			clust_scarcity = 10 * 10 * 10,
			clust_num_ores = 9,
			clust_size     = 5,
			y_min     = -17654,
			y_max     = -16300,
			flags          = "absheight",
		})
		
	--========================	
	--Depleted Uranium located at -6000
	--========================
	minetest.register_ore({
				ore_type       = "scatter",
				ore            = "es:depleted_uraniums",
			wherein        = "default:stone",
		clust_scarcity = 14*14*14,
		clust_num_ores = 1,
		clust_size     = 3,
				y_min          = -15000,
				y_max          = -700,
				flags          = "absheight",
		})
		
	minetest.register_ore({
				ore_type       = "scatter",
				ore            = "es:depleted_uraniums",
			wherein        = "default:stone",
		clust_scarcity = 14*14*14,
		clust_num_ores = 5,
		clust_size     = 3,
				y_min          = -15000,
				y_max          = -3000,
				flags          = "absheight",
		})
		
--Green Mese		
	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:mese_green",
			wherein        = "default:clay",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 5,
			clust_size     = 3,
			y_max          = 31000,
			y_min          = -1025,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:oremagicinator",
			wherein        = "default:stone",
			clust_scarcity = 18 * 18 * 18,
			clust_num_ores = 3,
			clust_size     = 2,
			y_max          = -512,
			y_min          = -16023,
		})		
		
	--liquids
	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:lava_source",
			wherein        = "default:stone",
			clust_scarcity = 15*15*10,
			clust_num_ores = 2,
			clust_size     = 12,
			y_min          = -10000,
			y_max          = -155,
			flags          = "absheight",
		})

	minetest.register_ore({
			ore_type       = "blob",
			ore            = "default:lava_source",
			wherein        = "default:stone",
			clust_scarcity = 25*25*20,
			clust_num_ores = 1,
			clust_size     = 2,
			y_min          = 9,
			y_max          = 150,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "blob",
			ore            = "default:lava_source",
			wherein        = "default:stone",
			clust_scarcity = 25*25*20,
			clust_num_ores = 2,
			clust_size     = 2,
			y_min          = -10000,
			y_max          = -50,
			flags          = "absheight",
		})

		minetest.register_ore({
			ore_type       = "blob",
			ore            = "default:lava_source",
			wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 6,
			clust_size     = 3,
			y_min          = -862,
			y_max          = -150,
		})
		
	minetest.register_ore({
			ore_type       = "blob",
			ore            = "default:water_source",
			wherein        = "default:stone",
			clust_scarcity = 15*15*10,
			clust_num_ores = 2,
			clust_size     = 2,
			y_min          = 50,
			y_max          = 500,
			flags          = "absheight",
		})
		
	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:water_source",
		wherein        = "default:stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -6000,
		y_max          = -33,
		flags          = "absheight",
	})

--river water_source	
	minetest.register_ore({
			ore_type       = "blob",
			ore            = "default:river_water_source",
			wherein        = "default:stone",
			clust_scarcity = 20*20*16,
			clust_num_ores = 2,
			clust_size     = 2,
			y_min          = 50,
			y_max          = 500,
			flags          = "absheight",
		})
		
	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:river_water_source",
		wherein        = "default:stone",
		clust_scarcity = 20*20*19,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -6000,
		y_max          = -33,
		flags          = "absheight",
	})

		minetest.register_ore({
			ore_type       = "blob",
			ore            = "es:toxic_water_source",
			wherein        = "es:oremagicinator",
			clust_scarcity = 15*15*10,
			clust_num_ores = 2,
			clust_size     = 2,
			y_min          = -62,
			y_max          = 50,
		})	
	
	--========================	
	--Rainbow located at -3000
	--========================
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:rainbow_water_source",
			wherein        = "default:stone",
			clust_scarcity = 24*24*24,
			clust_num_ores = 2,
			clust_size     = 2,
			y_min     = -4000,
			y_max     = -3000,
			flags          = "absheight",
		})

	--TECHNIC ORES
	minetest.register_ore({
		ore_type       = "blob",
		ore            = "es:marble",
		wherein        = "default:stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 5,
		clust_size     = 8,
		y_min          = -300,
		y_max          = -200,
		flags          = "absheight",
	})

	--EASY_MODE X3
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:marble",
		wherein        = "default:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 9,
		clust_size     = 5,
		y_min     = -12000,
		y_max     = -10300,
		flags          = "absheight",
	})
		
	minetest.register_ore({
		ore_type       = "blob",
		ore            = "es:granite",
		wherein        = "default:stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 4,
		clust_size     = 8,
		y_min          = -400,
		y_max          = -300,
		flags          = "absheight",
	})

	--EASY_MODE X3
	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:granite",
		wherein        = "default:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 9,
		clust_size     = 5,
		y_min     = -12000,
		y_max     = -10300,
		flags          = "absheight",
	})
		
	--CLAY!!
	minetest.register_ore({
		ore_type       = "blob",
		ore            = "es:strange_clay_maroon",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 4,
			y_min          = -4000,
			y_max          = -1430,
			flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "es:strange_clay_black",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 3,
			y_min          = -4000,
			y_max          = -1430,
			flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "es:strange_clay_red",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 3,
			y_min          = -4000,
			y_max          = -1430,
			flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "es:strange_clay_grey",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 3,
			y_min          = -4000,
			y_max          = -1430,
			flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "es:strange_clay_orange",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 3,
			y_min          = -4000,
			y_max          = -1430,
			flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "es:strange_clay_brown",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 6,
			y_min          = -4000,
			y_max          = -1430,
			flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "es:strange_clay_blue",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 3,
			y_min          = -4000,
			y_max          = -1430,
			flags          = "absheight",
	})

--thicc clay warning
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "default:clay",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -14551,
			y_max          = -14440,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "es:strange_clay_maroon",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -14551,
			y_max          = -14440,
			flags          = "absheight",
		})
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "es:strange_clay_black",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -14551,
			y_max          = -14440,
			flags          = "absheight",
		})
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "es:strange_clay_red",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -14551,
			y_max          = -14440,
			flags          = "absheight",
		})
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "es:strange_clay_grey",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -14551,
			y_max          = -14440,
			flags          = "absheight",
		})
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "es:strange_clay_orange",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -14551,
			y_max          = -14440,
			flags          = "absheight",
		})
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "es:strange_clay_brown",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -14551,
			y_max          = -14440,
			flags          = "absheight",
		})
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "es:strange_clay_blue",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -14551,
			y_max          = -14440,
			flags          = "absheight",
		})


--===============================
--===============================
--cblocks zone 1
--2000 - 4000 meters deep
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "default:meselamp",
			wherein        = {"cblocks:stone_black","cblocks:stone_blue","cblocks:stone_brown", "cblocks:stone_grey"  },
			clust_scarcity = 24*24*24,
			clust_num_ores = 2,
			clust_size     = 3,
			y_min     = -20000,
			y_max     = -2000,
			flags          = "absheight",
		})


	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_black",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})

	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_blue",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_brown",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_cyan",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_dark_green",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_dark_grey",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_green",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_grey",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_magenta",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_orange",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_pink",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_red",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_violet",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_white",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_yellow",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min          = -4000,
			y_max          = -2000,
			flags          = "absheight",
		})


--cblocks zone 2
--15k-16k meters deep
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_black",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})

	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_blue",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_brown",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_cyan",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_dark_green",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_dark_grey",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_green",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_grey",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_magenta",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_orange",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_pink",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_red",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_violet",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_white",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15000,
			flags          = "absheight",
		})
		
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "cblocks:stone_yellow",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 9,
			y_min          = -17650,
			y_max          = -15500,
			flags          = "absheight",
		})
--=================================
--=================================
--=================================
--=================================
	--EASY_MODE X4
		minetest.register_ore({
			ore_type       = "sheet",
			ore            = "default:stone_with_mese",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min     = -15000,
			y_max     = -12400,
			flags          = "absheight",
		})

		minetest.register_ore({
			ore_type       = "sheet",
			ore            = "default:stone_with_diamond",
			wherein        = "default:stone",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 90,
		clust_size     = 2,
			y_min     = -15000,
			y_max     = -12400,
			flags          = "absheight",
		})

		
--thicc lava
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "default:lava_source",
			wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 22,
		clust_size     = 2,
			y_min          = -16500,
			y_max          = -14550,
			flags          = "absheight",
		})
--thicc toxic
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "es:toxic_water_source",
			wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 22,
		clust_size     = 2,
			y_min          = -16000,
			y_max          = -14550,
			flags          = "absheight",
		})		
--thicc cobble
	minetest.register_ore({
			ore_type       = "sheet",
			ore            = "default:cobble",
			wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 22,
		clust_size     = 2,
			y_min          = -16000,
			y_max          = -14550,
			flags          = "absheight",
		})
		

--ENDZONE
		minetest.register_ore({
			ore_type       = "sheet",
			ore            = "es:hgglass2",
			wherein        = {"default:stone", "es:stoneblock", "es:hgglass", "es:steelblock"  },
			clust_scarcity = 1 * 1 * 1,
			clust_num_ores = 190,
			clust_size     = 12,
			y_min     = -18100,
			y_max     = -20000,
			flags          = "absheight",
		})
		
		minetest.register_ore({
			ore_type       = "sheet",
			ore            = "es:hgglass",
			wherein        = {"default:stone", "es:stoneblock", "es:hgglass", "es:steelblock"  },
			clust_scarcity = 1 * 1 * 1,
			clust_num_ores = 190,
			clust_size     = 12,
			y_min     = -18100,
			y_max     = -20000,
			flags          = "absheight",
		})

--		y_max = -18001,
--		y_min = -31000,



	--DEFAULT STRATA

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:clay",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 5,
			y_min          = -2000,
			y_max          = -750,
			flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:sandstone",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 3,
			y_min          = -2000,
			y_max          = -1500,
			flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "es:dry_dirt",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 7,
			y_min          = -2000,
			y_max          = -333,
			flags          = "absheight",
	})


	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:gravel",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
	--		clust_num_ores = 2,
			clust_size     = 6,
			y_min          = -10000,
			y_max          = -133,
			flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:coalblock",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
			clust_num_ores = 2,
			clust_size     = 4,
			y_min          = -5100,
			y_max          = -5000,
			flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:desert_sand",
		wherein        = "default:stone",
			clust_scarcity = 15*15*10,
			clust_num_ores = 3,
			clust_size     = 3,
			y_min          = -10000,
			y_max          = -1033,
			flags          = "absheight",
	})


	minetest.register_ore({
		ore_type       = "sheet",
		ore            = "es:dry_dirt",
		wherein        = {"default:cobble","default:cobble","default:cobble"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 4,
		y_min     = -42,
		y_max     = -22,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})
	
		minetest.register_ore({
		ore_type       = "sheet",
		ore            = "default:ice",
		wherein        = {"default:cobbledefault:cobble","default:cobble","default:cobble"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 4,
		y_min     = 122,
		y_max     = 155,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

end
--
-- Register biomes
--

-- All mapgens except mgv6

function es.register_biomes()



	
	-- Cobble

	minetest.register_biome({
		name = "cobble",
		node_dust = "",
		node_top = "default:cobble",
		depth_top = 1,
		node_filler = "default:cobble",
		depth_filler = 3,
		node_stone = "default:cobble",
		node_water_top = "default:cobble",
		depth_water_top = 10,
		node_river_water = "default:cobble",
		node_riverbed = "default:cobble",
		depth_riverbed = 2,
		node_dungeon = "default:cobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = -8,
		heat_point = 0,
		humidity_point = 73,
	})

	minetest.register_biome({
		name = "cobble_ocean",
		node_dust = "default:cobble",
		node_top = "default:cobble",
		depth_top = 1,
		node_filler = "default:cobble",
		depth_filler = 3,
		node_water_top = "default:cobble",
		depth_water_top = 10,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "cblocks:stonebrick_white",
		node_dungeon_stair = "stairs:stair_white_cobble",
		y_max = -9,
		y_min = -255,
		heat_point = 0,
		humidity_point = 73,
	})

	minetest.register_biome({
		name = "cobble_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:cobble",
		node_dungeon_stair = "default:cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 0,
		humidity_point = 73,
	})




end

local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		name = "default:grass_" .. length,
		deco_type = "simple",
		place_on = {"default:dirt_with_grass", "cblocks:stone_green"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		--biomes = {"stone"},
		biomes = {"cobble","grassland", "deciduous_forest"},
		y_max = 31000,
		y_min = 1,
		decoration = "default:grass_" .. length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		name = "default:dry_grass_" .. length,
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass", "cblocks:stone_magenta"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		--biomes = {"stone"},
		biomes = {"cobble", "savanna"},
		y_max = 31000,
		y_min = 1,
		decoration = "default:dry_grass_" .. length,
	})
end

local function register_fern_decoration(seed, length)
	minetest.register_decoration({
		name = "default:fern_" .. length,
		deco_type = "simple",
		place_on = {"default:dirt_with_coniferous_litter", "cblocks:stone_cyan"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.2,
			spread = {x = 100, y = 100, z = 100},
			seed = seed,
			octaves = 3,
			persist = 0.7
		},
		--biomes = {"stone"},
		biomes = {"cobble", "coniferous_forest"},
		y_max = 31000,
		y_min = 6,
		decoration = "default:fern_" .. length,
	})
	
end

function es.register_decorations()
	-- Savanna bare dirt patches.
	-- Must come before all savanna decorations that are placed on dry grass.
	-- Noise is similar to long dry grass noise, but scale inverted, to appear
	-- where long dry grass is least dense and shortest.

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"cblocks:stone_magenta"},
		sidelen = 4,
		noise_params = {
			offset = -1.5,
			scale = -1.5,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 4,
			persist = 1.0
		},
		biomes = {"cobble"},
		y_max = 31000,
		y_min = 1,
		decoration = "default:dry_dirt",
		place_offset_y = -1,
		flags = "force_placement",
	})

--Rare Trees

	-- Apple tree and log

	minetest.register_decoration({
		name = "default:apple_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "default:cobble"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6,
		},
		--biomes = {"stone"},
		biomes = {"cobble", "deciduous_forest"},
		y_max = 51,
		y_min = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "default:apple_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "cblocks:stone_green"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0.0012,
			scale = 0.0007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/apple_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "default:dirt_with_grass",
		num_spawn_by = 8,
	})

	-- Emergent jungle tree
	-- Due to 32 node height, altitude is limited and prescence depends on chunksize

	local chunksize = tonumber(minetest.get_mapgen_setting("chunksize"))
	if chunksize >= 5 then
		minetest.register_decoration({
			name = "default:emergent_jungle_tree",
			deco_type = "schematic",
			place_on = {"default:dirt_with_rainforest_litter", "cblocks:stone_violet"},
			sidelen = 80,
			noise_params = {
				offset = 0.0,
				--scale = 0.000025,
				scale = 0.00009,
				spread = {x = 250, y = 250, z = 250},
				seed = 2685,
				octaves = 3,
				persist = 0.7
			},
			biomes = {"cobble"},
			y_max = 32,
			y_min = 1,
			schematic = minetest.get_modpath("default") ..
					"/schematics/emergent_jungle_tree.mts",
			flags = "place_center_x, place_center_z",
			rotation = "random",
			place_offset_y = -4,
		})
	end	
	-- Jungle tree and log

	minetest.register_decoration({
		name = "default:jungle_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_rainforest_litter", "cblocks:stone_violet"},
		noise_params = {
			offset = 0,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 33,
			octaves = 3,
			persist = 0.6,
		},
		--biomes = {"stone"},
		biomes = {"cobble", "rainforest"},
		y_max = 12,
		y_min = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	-- Swamp jungle trees

	minetest.register_decoration({
		name = "default:jungle_tree(swamp)",
		deco_type = "schematic",
		place_on = {"cblocks:stone_brown"},
		sidelen = 16,
		-- Noise tuned to place swamp trees where papyrus is absent
		noise_params = {
			offset = 0.0,
			--scale = -0.1,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 354,
			octaves = 1,
			persist = 0.5
		},
		biomes = {"cobble"},
		y_max = 0,
		y_min = -1,
		schematic = minetest.get_modpath("default") .. "/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "default:jungle_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_rainforest_litter", "cblocks:stone_violet"},
		place_offset_y = 1,
		sidelen = 80,
		--fill_ratio = 0.005,
		fill_ratio = 0.00005,
		biomes = {"cobble"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/jungle_log.mts",
		flags = "place_center_x",
		rotation = "random",
		--spawn_by = "default:dirt_with_rainforest_litter",
		spawn_by = "cblocks:stone_violet",
		num_spawn_by = 8,
	})

	-- Taiga and temperate coniferous forest pine tree, small pine tree and log

	minetest.register_decoration({
		name = "default:pine_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter", "cblocks:stone_cyan"},
		sidelen = 16,
		noise_params = {
			--offset = 0.010,
			offset = 0,
			--scale = 0.048,
			scale = 0.0009,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble", "coniferous_forest"},
		y_max = 31000,
		y_min = 4,
		schematic = minetest.get_modpath("default") .. "/schematics/pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})
	
	minetest.register_decoration({
		name = "default:small_pine_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter", "cblocks:stone_cyan"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 719,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"cobble", "taiga", "coniferous_forest"},
		y_max = 31000,
		y_min = 55,
		schematic = minetest.get_modpath("default") .. "/schematics/small_pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		name = "default:pine_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter", "cblocks:stone_cyan"},
		place_offset_y = 1,
		sidelen = 80,
		--fill_ratio = 0.0018,
		fill_ratio = 0.00018,
		biomes = {"cobble", "coniferous_forest"},
		y_max = 31000,
		y_min = 4,
		schematic = minetest.get_modpath("default") .. "/schematics/pine_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter", "cblocks:stone_cyan"},
		num_spawn_by = 8,
	})
	
		-- Acacia tree and log

	minetest.register_decoration({
		name = "default:acacia_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass", "cblocks:stone_magenta"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 1929,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"cobble", "savanna"},
		y_max = 80,
		y_min = 10,
		schematic = minetest.get_modpath("default") .. "/schematics/acacia_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "default:acacia_log",
		deco_type = "schematic",
		place_on = {"default:dry_dirt_with_dry_grass", "cblocks:stone_magenta"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/acacia_log.mts",
		flags = "place_center_x",
		rotation = "random",
		--spawn_by = "default:dry_dirt_with_dry_grass",
		spawn_by = "cblocks:stone_magenta",
	})
	
	-- Aspen tree and log

	minetest.register_decoration({
		name = "default:aspen_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "cblocks:stone_green"},
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			--scale = -0.015,
			scale = 0.0009,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/aspen_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		name = "default:aspen_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "cblocks:stone_cyan"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			--scale = -0.0008,
			scale = 0.009,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/aspen_log.mts",
		flags = "place_center_x",
		rotation = "random",
		--spawn_by = "default:dirt_with_grass",
		spawn_by = "cblocks:stone_green",
		num_spawn_by = 8,
	})
	
	
	-- Large cactus

	minetest.register_decoration({
		name = "default:large_cactus",
		deco_type = "schematic",
		place_on = {"default:desert_sand", "default:stone", "cblocks:stone_yellow", "cblocks:stone_orange"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 8329,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"cobble"},
		y_max = 31000,
		y_min = 4,
		schematic = minetest.get_modpath("default") .. "/schematics/large_cactus.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	-- Cactus

	minetest.register_decoration({
		name = "default:cactus",
		deco_type = "simple",
		place_on = {"default:desert_sand", "default:stone", "cblocks:stone_yellow", "cblocks:stone_orange"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 84329,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"cobble"},
		y_max = 31000,
		y_min = 4,
		decoration = "default:cactus",
		height = 2,
		y_max = 5,
	})

	-- Papyrus

	-- Dirt version for rainforest swamp

	minetest.register_decoration({
		name = "default:papyrus_on_dirt",
		deco_type = "schematic",
		place_on = {"default:dirt", "default:desert_sand",
			"default:sand", "default:silver_sand", "default:stone", 
			"cblocks:stone_yellow", "cblocks:stone_orange", "cblocks:stone_grey"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.09,
			spread = {x = 200, y = 200, z = 200},
			seed = 1234,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"cobble", "rainforest_swamp"},
		y_max = 0,
		y_min = 0,
		schematic = minetest.get_modpath("default") .. "/schematics/papyrus_on_dirt.mts",
	})

	-- Dry dirt version for savanna shore

	minetest.register_decoration({
		name = "default:papyrus_on_dry_dirt",
		deco_type = "schematic",
		place_on = {"default:dry_dirt", "default:stone"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.09,
			spread = {x = 200, y = 200, z = 200},
			seed = 9,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"cobble", "savanna_shore"},
		y_max = 0,
		y_min = 0,
		schematic = minetest.get_modpath("default") ..
			"/schematics/papyrus_on_dry_dirt.mts",
	})

	-- Bush

	minetest.register_decoration({
		name = "default:bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "cblocks:stone_green"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.009,
			spread = {x = 200, y = 200, z = 200},
			seed = 9329,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"cobble", "grassland", "deciduous_forest"},
		y_max = 31000,
		y_min = 11,
		schematic = minetest.get_modpath("default") .. "/schematics/bush.mts",
		flags = "place_center_x, place_center_z",
	})
	
	

	-- Blueberry bush

	minetest.register_decoration({
		name = "default:blueberry_bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "default:dirt_with_snow", "cblocks:stone_green", "cblocks:stone_white"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.009,
			spread = {x = 200, y = 200, z = 200},
			seed = 4229,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"cobble", "grassland", "snowy_grassland"},
		y_max = 31,
		y_min = 1,
		place_offset_y = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/blueberry_bush.mts",
		flags = "place_center_x, place_center_z",
	})




	-- Acacia bush

	minetest.register_decoration({
		name = "default:acacia_bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass", "cblocks:stone_magenta"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.009,
			spread = {x = 200, y = 200, z = 200},
			seed = 199,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"cobble", "savanna"},
		y_max = 100,
		y_min = 11,
		schematic = minetest.get_modpath("default") .. "/schematics/acacia_bush.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Pine bush

	minetest.register_decoration({
		name = "default:pine_bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "cblocks:stone_white"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.009,
			spread = {x = 200, y = 200, z = 200},
			seed = 62329,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"cobble", "taiga", "snowy_grassland"},
		y_max = 31000,
		y_min = 24,
		schematic = minetest.get_modpath("default") .. "/schematics/pine_bush.mts",
		flags = "place_center_x, place_center_z",
	})




	-- Grasses

	register_grass_decoration(-0.03,  0.09,  5)
	register_grass_decoration(-0.015, 0.075, 4)
	register_grass_decoration(0,      0.06,  3)
	register_grass_decoration(0.015,  0.045, 2)
	register_grass_decoration(0.03,   0.03,  1)

	-- Dry grasses

	register_dry_grass_decoration(0.01, 0.05,  5)
	register_dry_grass_decoration(0.03, 0.03,  4)
	register_dry_grass_decoration(0.05, 0.01,  3)
	register_dry_grass_decoration(0.07, -0.01, 2)
	register_dry_grass_decoration(0.09, -0.03, 1)

	-- Ferns

	register_fern_decoration(14936, 3)
	register_fern_decoration(801,   2)
	register_fern_decoration(5,     1)

	-- Junglegrass

	minetest.register_decoration({
		name = "default:junglegrass",
		deco_type = "simple",
		place_on = {"default:dirt_with_rainforest_litter", "cblocks:stone_violet"},
		noise_params = {
			offset = 0,
			scale = 0.009,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.66,
		},
		biomes = {"cobble", "rainforest"},
		y_max = 31,
		y_min = 1,
		decoration = "default:junglegrass",
	})

	-- Dry shrub

	minetest.register_decoration({
		name = "default:dry_shrub",
		deco_type = "simple",
		place_on = {"default:desert_sand",
			"default:sand", "default:silver_sand", "default:stone", 
			"cblocks:stone_yellow", "cblocks:stone_orange", "cblocks:stone_grey"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.66,
		},
		biomes = {"cobble", "desert", "sandstone_desert", "cold_desert"},
		y_max = 31000,
		y_min = 2,
		decoration = "default:dry_shrub",
		param2 = 4,
	})

	-- Marram grass

	minetest.register_decoration({
		name = "default:marram_grass",
		deco_type = "simple",
		place_on = {"default:sand", "cblocks:stone_yellow"},
		sidelen = 4,
		noise_params = {
			offset = -0.7,
			scale = 4.0,
			spread = {x = 16, y = 16, z = 16},
			seed = 513337,
			octaves = 1,
			persist = 0.0,
			flags = "absvalue, eased"
		},
		biomes = {"cobble", "coniferous_forest_dunes", "grassland_dunes"},
		y_max = 6,
		y_min = 4,
		decoration = {
			"default:marram_grass_1",
			"default:marram_grass_2",
			"default:marram_grass_3",
		},
	})

	-- Tundra moss

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:permafrost_with_stones"},
		sidelen = 4,
		noise_params = {
			offset = -0.8,
			scale = 2.0,
			spread = {x = 100, y = 100, z = 100},
			seed = 53995,
			octaves = 3,
			persist = 1.0
		},
		biomes = {"cobble"},
		y_max = 50,
		y_min = 2,
		decoration = "default:permafrost_with_moss",
		place_offset_y = -1,
		flags = "force_placement",
	})

	-- Tundra patchy snow

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {
			"default:permafrost_with_moss",
			"default:permafrost_with_stones",
			"default:stone", "cblocks:stone_grey",
			"default:gravel"
		},
		sidelen = 4,
		noise_params = {
			offset = 0,
			scale = 0.9,
			spread = {x = 100, y = 100, z = 100}, 
			seed = 172555,
			octaves = 3,
			persist = 0.66,
		},
		biomes = {"cobble","tundra", "tundra_beach"},
		y_max = 50,
		y_min = 1,
		decoration = "default:snow",
	})

	-- Coral reef

	minetest.register_decoration({
		name = "default:corals",
		deco_type = "simple",
		place_on = {"default:desert_sand",
			"default:sand", "default:silver_sand",
			"es:drydirt", "cblocks:stone_grey", "cblocks:stone_yellow",
			"cblocks:stone_orange"},
		place_offset_y = -1,
		sidelen = 4,
		noise_params = {
			offset = -0.00005,	-- -0.15
			scale = 0.1,
			spread = {x = 50, y = 50, z = 50},
			seed = 7013,
			octaves = 3,
			persist = 0.66,
		},
		biomes = {"cobble", "desert_ocean",
			"savanna_ocean",
			"rainforest_ocean"},
		
		y_max = -2,
		y_min = -8,
		flags = "force_placement",
		decoration = {
			"default:coral_green", "default:coral_pink",
			"default:coral_cyan", "default:coral_brown",
			"default:coral_orange", "default:coral_skeleton",
		},
	})

	-- Kelp

	minetest.register_decoration({
		name = "default:kelp",
		deco_type = "simple",
		place_on = {"default:sand", "default:stone", "cblocks:stone_grey", "cblocks:stone_yellow",
			"cblocks:stone_orange"},
		place_offset_y = -1,
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 87112,
			octaves = 3,
			persist = 0.66,
		},
		biomes = {
			"cobble", "taiga_ocean",
			"snowy_grassland_ocean",
			"grassland_ocean",
			"coniferous_forest_ocean",
			"deciduous_forest_ocean",
			"sandstone_desert_ocean",
			"cold_desert_ocean"},
		y_max = -5,
		y_min = -10,
		flags = "force_placement",
		decoration = "default:sand_with_kelp",
		param2 = 48,
		param2_max = 96,
	})


--ESM DECORATIONS

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"es:dry_dirt"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"cobble"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:dry_grass_"..length,
	})
end

	--Wasteland
	--The buildings found in this mod (in the schems/ folder) have been built by
	--AgentNagel42. See https://forum.minetest.net/viewtopic.php?f=5&t=13297

--function default.register_decorations()
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:dry_dirt","es:aiden_grass","es:strange_grass","es:strange_clay_brown"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble","clay","strangeland","aidenland"},
		y_min = 2,
		y_max = 20,
		schematic = minetest.get_modpath("es").."/schematics/bunker.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})


	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:dry_dirt","es:aiden_grass", "default:permafrost_with_stones","default:permafrost", "es:strange_clay_brown"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble","clay", "tundra"},
		y_min = 2,
		y_max = 20,
		schematic = minetest.get_modpath("es").."/schematics/church_old.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:dry_dirt","es:aiden_grass", "default:permafrost_with_stones","default:permafrost", "es:strange_clay_brown"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble","clay", "tundra"},
		y_min = 2,
		y_max = 20,
		schematic = minetest.get_modpath("es").."/schematics/watchtower_old.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:dry_dirt","es:strange_grass","default:permafrost_with_stones", "default:permafrost","es:strange_clay_brown","default:dirt_with_dry_grass","default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble","clay","savanna","sandstone_grassland", "tundra"},
		y_min = 2,
		y_max = 20,
		schematic = minetest.get_modpath("es").."/schematics/cabin_old.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	--old tree
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:dry_dirt","es:aiden_grass","es:strange_clay_brown"},
		sidelen = 16,
		noise_params = {
			offset = -0.002,
			scale = 0.0044,
			spread = {x =120, y = 90, z = 120},
			seed = 25,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble"},
		y_min = 1,
		y_max = 200,
		schematic = minetest.get_modpath("es").."/schematics/old_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:dry_dirt","es:aiden_grass","es:strange_clay_brown"},
		sidelen = 16,
		noise_params = {
			offset = -0.002,
			scale = 0.0054,
			spread = {x = 100, y = 100, z = 100},
			seed = 245,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble"},
		y_min = 6,
		y_max = 200,
		schematic = minetest.get_modpath("es").."/schematics/old_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
	
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:strange_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.003,
			scale = 0.002,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"cobble"},
		y_min = 1,
		y_max = 31000,
		--schematic = minetest.get_modpath("default").."/schematics/apple_tree.mts",
		schematic = minetest.get_modpath("default").."/schematics/aspen_tree.mts",
		flags = "place_center_x, place_center_z",
	})



	-- Dry shrub

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand", "default:dirt_with_snow","es:strange_grass","es:aiden_grass","es:strange_clay_brown","es:dry_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 20, y = 20, z = 20},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"cobble", "tundra","strangeland","aidenland","barren","clay"},
		y_min = 2,
		y_max = 31000,
		decoration = "default:dry_shrub",
	})

		minetest.register_decoration({
		deco_type = "simple",
		place_on = {"es:strange_grass","es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"cobble","aidenland"},
		y_min = 2,
		y_max = 31000,
		decoration = "default:pine_sapling",
	})


			minetest.register_decoration({
		deco_type = "simple",
		place_on = {"es:strange_grass","es:aiden_grass","es:strange_clay_blue"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.04,
			spread = {x = 20, y = 10, z = 20},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"cobble","aidenland","underground"},
		y_min = 2,
		y_max = 31000,
		decoration = "es:strange_shrub",
	})
	
--ES
	-- Junglegrass

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"es:aiden_grass","es:strange_clay_brown"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"cobble","barren","clay"},
		y_min = 1,
		y_max = 31000,
		decoration = "es:junglegrass",
	})
	--es grass

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"es:strange_grass"},
		sidelen = 40,
		fill_ratio = 0.1,
--		noise_params = {
--			offset = offset,
--			scale = scale,
--			spread = {x = 200, y = 200, z = 200},
--			seed = 329,
--			octaves = 3,
--			persist = 0.6
--		},
		biomes = {"cobble"},
		y_min = 1,
		y_max = 100,
		decoration = "default:grass_2",
	})

	-- Dry shrub

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"es:strange_grass","es:aiden_grass","es:strange_clay_brown"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 20, y = 20, z = 20},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"cobble","aidenland"},
		y_min = 2,
		y_max = 31000,
		decoration = "es:dry_shrub",
	})

	--ES SCHEMATICS
	--strange tree
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:strange_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
			},
		biomes = {"cobble"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("es").."/schematics/strange_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	--aiden tree (mese tree)
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
			},
		biomes = {"aidenland"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("es").."/schematics/aiden_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	--rubycane
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
			},
		biomes = {"cobble"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("es").."/schematics/rubycane.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--bunker
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:aiden_grass","default:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
			},
		biomes = {"cobble","tundra"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("es").."/schematics/bunker.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})



	
end

minetest.clear_registered_biomes()
minetest.clear_registered_ores()
minetest.clear_registered_decorations()

local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
	es.register_mgv6_ores()
	es.register_mgv6_decorations()
else
	es.register_biomes()
	es.register_ores()
	es.register_decorations()
end

local layer = -17654 -- determined as appropriate by experiment
local node = {name = "es:stoneblock"}


minetest.register_on_generated(function(minp, maxp)
	if maxp.y >= layer and minp.y <= layer then
		local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
		local data = vm:get_data()
		local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
		local c_bedrock = minetest.get_content_id("es:stoneblock")

		for x = minp.x, maxp.x do
			for z = minp.z, maxp.z do
				local p_pos = area:index(x, layer, z)
				data[p_pos] = c_bedrock
			end
		end

		vm:set_data(data)
		vm:calc_lighting()
		vm:update_liquids()
		vm:write_to_map()
	end
end)
