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





--Node Registration and location

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_emerald",
		    wherein        = "default:stone",
		    clust_scarcity = 24*24*24,
		    clust_num_ores = 4,
		    clust_size     = 4,
		    height_min     = -31000,
		    height_max     = -1000,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_emerald",
		    wherein        = "default:stone",
		    clust_scarcity = 24*24*24,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    height_min     = -31000,
		    height_max     = 4,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_ruby",
		    wherein        = "default:stone",
		    clust_scarcity = 20*20*20,
		    clust_num_ores = 7,
		    clust_size     = 3,
		    height_min     = -31000,
		    height_max     = -3000,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_ruby",
		    wherein        = "default:stone",
		    clust_scarcity = 20*20*30,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    height_min     = -31000,
		    height_max     = 10,
	})


minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_aikerum",
		    wherein        = "default:stone",
		    clust_scarcity = 63*23*23,
		    clust_num_ores = 5,
		    clust_size     = 4,
		    height_min     = -31000,
		    height_max     = -4000,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_aikerum",
		    wherein        = "default:stone",
		    clust_scarcity = 23*23*43,
		    clust_num_ores = 1,
		    clust_size     = 1,
		    height_min     = -31000,
		    height_max     = -40,
	})

minetest.register_ore({
		    ore_type       = "scatter",
		    ore            = "es:stone_with_infinium",
		    wherein        = "default:stone",
		    clust_scarcity = 28*28*28,
		    clust_num_ores = 1,
		    clust_size     = 2,
		    height_min     = -31000,
		    height_max     = -4300,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:stone_with_infinium",
			wherein        = "default:stone",
			clust_scarcity = 28*28*28,
			clust_num_ores = 1,
			clust_size     = 1,
			height_min     = -31000,
			height_max     = -190,
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
			ore            = "es:depleted_uranium",
			wherein        = "default:stone",
			clust_scarcity = 54 * 14 * 54,
			clust_num_ores = 3,
			clust_size     = 8,
			y_min          = -8000,
			y_max          = 256,
	})

minetest.register_ore({
			ore_type       = "scatter",
			ore            = "es:depleted_uranium",
			wherein        = "default:stone",
			clust_scarcity = 14 * 14 * 14,
			clust_num_ores = 6,
			clust_size     = 8,
			y_min          = -8000,
			y_max          = -1256,
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:lava_source",
		wherein        = "default:desert_stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = 31,
		y_max          = 1140,
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:lava_source",
		wherein        = "default:stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = 21,
		y_max          = 1140,
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "default:water_source",
		wherein        = "default:stone",
		clust_scarcity = 15*15*10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = 2,
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
		y_min          = 14,
		y_max          = 2256,
	})


