--Extreme Survival created by maikerumine
-- Minetest 0.4.16 mod: "Extreme Survival"
-- namespace: es
--version 3.0
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015-2022 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2022) maikerumine; CC-BY-SA 3.0


--[[
	function es.register_mgv6_ores()
	end
	function es.register_ores()
]]

--
-- Register ores
--

	--============================================
	--ES DESERT STONE ORES
	--============================================
	--Coal
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

	--Gold
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
		
	--Coal	
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

	-- Gold
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

	--Meatz
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:desert_stone_with_meatz",
		wherein        = "default:desert_stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 5,--was3
		clust_size     = 3,
		y_min          = -214,
		y_max          = 2256,
	})
		
		
	--============================================
	--Default Node Registration and location
	-- Scatter ores
	--============================================
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


	--============================================
	--ES Node Registration and location
	--============================================
	--Emerald located at -1000
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
		
		
	--Ruby located at -3000
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
		
	
	--Aikerum located at -4000
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
		

	--Infinium located at -5000
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


	--Purpellium located at -6000
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


	--Unobtainium located at -8000
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
		

	--Depleted Uranium located at -6000
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

	--Beedo ore
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:stone_with_beedos",
		wherein        = "default:stone",
		clust_scarcity = 28 * 28 * 28,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -3096,
		y_min          = -17654,
	})

	--EASY_MODE
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:stone_with_beedos",
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
		ore            = "es:stone_with_beedos",
		wherein        = "default:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 9,
		clust_size     = 5,
		y_min     = -12000,
		y_max     = -10300,
		flags          = "absheight",
	})
	


	--MAGIC RANDOM ORE
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

	--=================================
	--OVERLOAD ORE VEINS
	--=================================
	--EASY_MODE X4
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:stone_with_iron",
		wherein        	= "default:stone",
		clust_scarcity 	= 1 * 1 * 1,
		clust_num_ores 	= 90,
		clust_size     	= 2,
		y_min    		= -2500,
		y_max   	  	= -2400,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})
	
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:stone_with_mese",
		wherein        	= "default:stone",
		clust_scarcity 	= 1 * 1 * 1,
		clust_num_ores 	= 90,
		clust_size     	= 2,
		y_min    		= -15000,
		y_max   	  	= -12400,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:stone_with_diamond",
		wherein        	= "default:stone",
		clust_scarcity 	= 1 * 1 * 1,
		clust_num_ores 	= 90,
		clust_size     	= 2,
		y_min     		= -15000,
		y_max     		= -12400,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})
	
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:dirt",
		wherein        	= "default:stone",
		clust_scarcity 	= 1 * 1 * 1,
		clust_num_ores 	= 90,
		clust_size     	= 2,
		y_min     		= -17400,
		y_max     		= -15400,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})


--================================================================
--================================================================
--================================================================
	--===LAVA, WATER, CLAY, DIRT, GRAVEL, CBLOCKS AND STRATA
	--HARDENED CLAY FOR MESA :)++++
	--maikerumine
--================================================================
--================================================================
	--MESA STRATA
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:desert_sand",
		wherein        	= {"default:desert_stone", "es:strange_clay_orange","es:strange_clay_red"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 8,
		clust_size     	= 4,
		y_min     		= 4,
		y_max     		= 70,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_grey",
		wherein        	= {"es:strange_clay_orange","es:strange_clay_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 27,
		clust_size     	= 1,
		y_min     		= 5,
		y_max     		= 14,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_black",
		wherein        	= {"es:strange_clay_orange","es:strange_clay_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	=27,
		clust_size     	= 1,
		y_min     		= 15,
		y_max     		= 17,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70}, 
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_maroon",
		wherein        	= {"es:strange_clay_orange","es:strange_clay_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 27,
		clust_size     	= 6,
		y_min     		= 20,
		y_max     		= 29,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_red",
		wherein        	= {"es:strange_clay_orange"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 8,
		clust_size     	= 2,
		y_min     		= 34,
		y_max     		= 37,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_brown",
		wherein        	= {"es:strange_clay_orange","es:strange_clay_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 100,
		clust_size     	= 1,
		y_min     		= 42,
		y_max     		= 43,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_blue",
		wherein        	= {"es:strange_clay_orange", "es:strange_grass","es:strange_clay_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 100,
		clust_size     	= 1,
		y_min     		= 43,
		y_max     		= 44,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_red",
		wherein        	= {"es:strange_clay_orange"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 100,
		clust_size     	= 1,
		y_min     		= 44,
		y_max     		= 45,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_red",
		wherein        	= {"es:strange_clay_orange", "cblocks:stone_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 100,
		clust_size     	= 1,
		y_min     		= 45,
		y_max     		= 47,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_grey",
		wherein        	= {"es:strange_clay_orange","cblocks:stone_red", "es:strange_clay_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 100,
		clust_size     	= 1,
		y_min     		= 49,
		y_max     		= 52,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_black",
		wherein        	= {"es:strange_clay_orange","cblocks:stone_red", "es:strange_clay_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 100,
		clust_size     	= 4,
		y_min     		= 53,
		y_max     		= 59,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_grey",
		wherein        	= {"es:strange_clay_orange","cblocks:stone_red", "es:strange_clay_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 100,
		clust_size     	= 8,
		y_min     		= 61,
		y_max     		= 70,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_maroon",
		wherein        	= {"es:strange_clay_orange","cblocks:stone_red", "es:strange_clay_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 100,
		clust_size     	= 8,
		y_min     		= 66,
		y_max     		= 75,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})
	
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_black",
		wherein        	= {"es:strange_clay_orange","cblocks:stone_red", "es:strange_clay_red"},
		--clust_scarcity 	= 1,
		--clust_num_ores 	= 100,
		clust_size     	= 8,
		y_min     		= 161,
		y_max     		= 170,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_maroon",
		wherein        	= {"default:desert_stone","cblocks:stone_red", "es:strange_clay_red"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 3,
		clust_size     	= 4,
		y_min     		= 70,
		y_max     		= 190,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_black",
		wherein        	= {"default:desert_stone","cblocks:stone_red", "default:stone","es:strange_clay_red"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 12,
		clust_size     	= 4,
		y_min     		= 60,
		y_max     		= 96,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_red",
		wherein        	= {"default:desert_stone","cblocks:stone_red", "es:strange_clay_red"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 8,
		clust_size     	= 4,
		y_min     		= 44,
		y_max     		= 70,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_grey",
		wherein        	= {"default:desert_stone","cblocks:stone_red","es:strange_clay_red"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 8,
		clust_size     	= 4,
		y_min     		= 34,
		y_max     		= 70,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_orange",
		wherein        	={"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange","es:strange_clay_red"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 5,
		clust_size     	= 5,
		y_min     		= 10,
		y_max     		= 40,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_brown",
		wherein        	= {"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange","es:strange_clay_red"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 12,
		clust_size     	= 4,
		y_min     		= -12,
		y_max     		= 7,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_red",
		wherein        	= {"es:strange_clay_brown","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 9,
		clust_size     	= 12,
		y_min     		= 0,
		y_max     		= 30,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_maroon",
		wherein        	= {"es:strange_clay_brown"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 9,
		clust_size     	= 12,
		y_min     		= 0,
		y_max     		= 30,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_black",
		wherein        	= {"es:strange_clay_brown"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 12,
		clust_size     	= 4,
		y_min     		= -5,
		y_max     		= 3,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=4, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
	})

	--DEFAULT STRATA
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:stone",
		wherein        	= {"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange", "es:strange_clay_orange"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 3,
		clust_size     	= 4,
		y_min     		= 50,
		y_max     		= 90,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:clay",
		wherein        	= {"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange","default:stone","es:strange_clay_orange"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 12,
		clust_size     	= 8,
		y_min     		= 24,
		y_max     		= 50,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:sandstone",
		wherein        	={"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange","default:stone","es:strange_clay_orange"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 12,
		clust_size     	= 10,
		y_min     		= 10,
		y_max     		= 30,
		noise_threshold = 0.2,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:dirt",
		wherein        	= {"default:desert_stone","default:desert_sand","cblocks:stone_red", "cblocks:stone_orange","es:strange_clay_orange"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 12,
		clust_size     	= 4,
		y_min     		= -12,
		y_max     		= 7,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:gravel",
		wherein        	= {"es:strange_clay_orange"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 8,
		clust_size     	= 4,
		y_min     		= 34,
		y_max     		= 70,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:coalblock",
		wherein        	= {"es:strange_clay_orange"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 12,
		clust_size     	= 4,
		y_min     		= 60,
		y_max     		= 96,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.80}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:desert_sand",
		wherein        	= {"es:strange_clay_orange"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 12,
		clust_size     	= 10,
		y_min     		= 44,
		y_max     		= 70,
		noise_threshold = 0.7,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})
	

	--HARDENED CLAY FOR MESA :)
	--maikerumine
	--MESA STRATA
	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "default:desert_sand",
		wherein        	= {"default:desert_stone","es:strange_clay_red","cblocks:stone_red",  "es:strange_clay_orange"},
		clust_scarcity 	= 1,
		clust_num_ores 	= 8,
		clust_size     	= 4,
		y_min     		= 4,
		y_max     		= 70,
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	minetest.register_ore({
		ore_type       	= "sheet",
		ore            	= "es:strange_clay_grey",
		wherein        	= {"es:strange_clay_orange"},
		--clust_scarcity 	= 1,
		--clust_num_ores	 = 27,
		clust_size     	= 1,
		y_min     		= 5,
		y_max     		= 14,
		noise_threshold = 0.0,
		noise_params 	= {offset=0, scale=1, spread={x=3100, y=3100, z=3100}, seed=23, octaves=3, persist=0.70} ,
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})
	
	--=======================================================
	--=======================================================
	--LIQUIDS
	--LAVA
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
	--	clust_num_ores = 6,
		clust_size     = 3,
		y_min          = -862,
		y_max          = -150,
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

	--WATER
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

	--RIVER WATER	
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

	--===============================
	--===============================
	--ES LIQUIDS
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

	--===============================
	--===============================
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	--===============================
	--===============================
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})

	--[[
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
]]

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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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
		noise_threshold = 0.4,
		noise_params 	= {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
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


	--DEFAULT STRATA IN CAVES
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
		wherein        = {"default:desert_stone","default:desert_sand","default:stone"},
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
		wherein        = {"default:desert_stone","default:desert_sand","default:stone"},
		clust_scarcity = 1,
		clust_num_ores = 12,
		clust_size     = 4,
		y_min     = 122,
		y_max     = 155,
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})



--================================================================
--================================================================
--================================================================

local layer_bedrock = -17654 -- determined as appropriate by experiment
local node_bedrock = {name = "es:stoneblock"}


minetest.register_on_generated(function(minp, maxp)
	if maxp.y >= layer_bedrock and minp.y <= layer_bedrock then
		local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
		local data = vm:get_data()
		local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
		local c_bedrock = minetest.get_content_id("es:stoneblock")

		for x = minp.x, maxp.x do
			for z = minp.z, maxp.z do
				local p_pos = area:index(x, layer_bedrock, z)
				data[p_pos] = c_bedrock
			end
		end

		vm:set_data(data)
		vm:calc_lighting()
		vm:update_liquids()
		vm:write_to_map()
	end
end)



local layer_air = -17655 -- determined as appropriate by experiment


local node_air = {name = "es:air"}


minetest.register_on_generated(function(minp, maxp)
	if maxp.y >= layer_air and minp.y <= layer_air then
		local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
		local data = vm:get_data()
		local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
		local c_air = minetest.get_content_id("es:air")

		for x = minp.x, maxp.x do
			for z = minp.z, maxp.z do
				local p_pos = area:index(x, layer_air, z)

				data[p_pos] = c_air
			end
		end

		vm:set_data(data)
		vm:calc_lighting()
		vm:update_liquids()
		vm:write_to_map()
	end
end)


--WEIRD OREGEN--
--==========================
--sheet, puff, scatter, blob, stratum, vein
--		clust_scarcity = 6 * 6 * 6,
--		clust_num_ores = 9,
--		clust_size     = 6,

--[[
	minetest.register_ore({
		--ore_type       = "sheet",
		ore_type       = "blob",
		ore            = "default:ice",
		wherein        = {"default:water_source"},
		--clust_scarcity = 1,
		clust_scarcity = 18 * 8 * 18,
		--clust_num_ores = 12,
		clust_num_ores = 12,
		--clust_size     = 4,
		clust_size     = 18,
		y_max = -19000,
		y_min = -19020,	
		noise_threshold = 0.4,
		noise_params = {offset=0, scale=15, spread={x=130, y=130, z=130}, seed=24, octaves=3, persist=0.70}
	})
	]]
	


minetest.log("action", "ES: [orgen-base] loaded.")
