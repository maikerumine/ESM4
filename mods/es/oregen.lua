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


--TECHNIC ORES
minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:marble",
	wherein        = "default:stone",
	clust_scarcity = 1,
	clust_num_ores = 1,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -50,
	noise_threshhold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=150, y=150, z=150}, seed=23, octaves=3, persist=0.70}
})

minetest.register_ore({
	ore_type       = "sheet",
	ore            = "es:granite",
	wherein        = "default:stone",
	clust_scarcity = 1,
	clust_num_ores = 1,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = -150,
	noise_threshhold = 0.4,
	noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
})

--ES LIQUIDS
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:toxic_water_source",
		wherein        =  {"default:dry_dirt", "default:dirt_with_dry_grass","default:dirt", "default:stone"},
		clust_scarcity = 24*24*24,
		clust_num_ores = 4,
		clust_size     = 4,
		y_min          = -9000,
		y_max          = 5,

	})


minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:mud",
		wherein        =  {"default:dry_dirt", "default:dirt_with_dry_grass", "default:dirt"},
		clust_scarcity = 11*5*10,
		clust_num_ores = 4,
		clust_size     = 12,
		y_min          = -31,
		y_max          = 75,

	})


--ES Node Registration and location
minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_emerald",
		    wherein        = "default:stone",
		    clust_scarcity = 24*24*24,
		    clust_num_ores = 4,
		    clust_size     = 4,
		    height_min     = -1000,
		    height_max     = -400,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_emerald",
		    wherein        = "default:stone",
		    clust_scarcity = 24*24*24,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    height_min     = -1000,
		    height_max     = -400,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_ruby",
		    wherein        = "default:stone",
		    clust_scarcity = 20*20*20,
		    clust_num_ores = 7,
		    clust_size     = 3,
		    height_min     = -3000,
		    height_max     = -1300,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_ruby",
		    wherein        = "default:stone",
		    clust_scarcity = 20*20*20,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    height_min     = -3000,
		    height_max     = -1110,
	})


minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_aikerum",
		    wherein        = "default:stone",
		    clust_scarcity = 23*23*23,
		    clust_num_ores = 5,
		    clust_size     = 4,
		    height_min     = -31000,
		    height_max     = -2400,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_aikerum",
		    wherein        = "default:stone",
		    clust_scarcity = 23*23*23,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    height_min     = -4000,
		    height_max     = -1140,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_infinium",
		    wherein        = "default:stone",
		    clust_scarcity = 20*12*20,
		    clust_num_ores = 5,
		    clust_size     = 3,
		    height_min     = -31000,
		    height_max     = -4430,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_infinium",
			wherein        = "default:stone",
			clust_scarcity = 16*18*16,
			clust_num_ores = 1,
			clust_size     = 1,
			height_min     = -31000,
			height_max     = -3190,
	})


minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_purpellium",
			wherein        = "default:stone",
			clust_scarcity = 16*18*16,
			clust_num_ores = 5,
			clust_size     = 5,
			height_min     = -31000,
			height_max     = -4090,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_mese",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 5,
			clust_size     = 3,
			y_min          = -31000,
			y_max          = -256,
	})

	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_mese",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 9,
			clust_size     = 3,
			y_min          = -31000,
			y_max          = -5256,
	})
minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:depleted_uranium",
			wherein        = "default:stone",
			clust_scarcity = 54 * 14 * 54,
			clust_num_ores = 3,
			clust_size     = 1,
			y_min          = -14210,
			y_max          = -156,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:depleted_uranium",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 6,
			clust_size     = 5,
			y_min          = -15000,
			y_max          = -256,
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:lava_source",
		wherein        = "default:desert_stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 1140,
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:lava_source",
		wherein        = "default:stone",
		clust_scarcity = 25*25*20,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 1140,
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:water_source",
		wherein        = "default:stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -20000,
		y_max          = 1140,
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


