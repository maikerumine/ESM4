--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine

--
-- Aliases for map generator outputs
--

minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("mapgen_dirt", "default:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "es:dry_dirt")
minetest.register_alias("mapgen_sand", "default:sand")
minetest.register_alias("mapgen_water_source", "es:mud")
minetest.register_alias("mapgen_river_water_source", "es:toxic_water_source")
minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_gravel", "default:gravel")
minetest.register_alias("mapgen_desert_stone", "default:desert_stone")
minetest.register_alias("mapgen_desert_sand", "default:desert_sand")
minetest.register_alias("mapgen_dirt_with_snow", "default:dirt_with_snow")
minetest.register_alias("mapgen_snowblock", "default:snowblock")
minetest.register_alias("mapgen_snow", "default:snow")
minetest.register_alias("mapgen_ice", "air")
minetest.register_alias("mapgen_sandstone", "default:sandstone")

-- Flora

minetest.register_alias("mapgen_tree", "default:tree")
minetest.register_alias("mapgen_leaves", "default:leaves")
minetest.register_alias("mapgen_apple", "default:apple")
minetest.register_alias("mapgen_jungletree", "default:jungletree")
minetest.register_alias("mapgen_jungleleaves", "default:jungleleaves")
minetest.register_alias("mapgen_junglegrass", "default:junglegrass")
minetest.register_alias("mapgen_pine_tree", "default:pine_tree")
minetest.register_alias("mapgen_pine_needles", "default:pine_needles")

-- Dungeons

minetest.register_alias("mapgen_cobble", "default:cobble")
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("mapgen_mossycobble", "default:mossycobble")
minetest.register_alias("mapgen_sandstonebrick", "default:sandstonebrick")
minetest.register_alias("mapgen_stair_sandstonebrick", "stairs:stair_sandstonebrick")




--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

function default.register_ores()

	--Toxic Water
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:toxic_water_source",
		wherein        =  "es:mud",
		clust_scarcity = 11*5*10,
		clust_num_ores = 182,
		clust_size     = 12,
		y_min          = -31,
		y_max          = 2,

	})

		minetest.register_ore({
		ore_type       = "scatter",
		ore            = "es:toxic_water_source",
		wherein        =  {"es:dry_dirt", "default:dirt_with_dry_grass"},
		clust_scarcity = 11*5*10,
		clust_num_ores = 4,
		clust_size     = 12,
		y_min          = -31,
		y_max          = 5,

	})







	--DESERT STONE ORES
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





	-- Clay

	minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:clay",
		wherein          = {"default:sand"},
		clust_scarcity   = 24 * 24 * 24,
		clust_size       = 7,
		y_min            = -15,
		y_max            = 0,
		noise_threshold = 0,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.5
		},
	})

		-- Silver sand

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:silver_sand",
		wherein         = {"default:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_min           = -31000,
		y_max           = 31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
		biomes = {"icesheet_ocean", "tundra", "tundra_beach", "tundra_ocean",
			"taiga", "taiga_ocean", "snowy_grassland", "snowy_grassland_ocean",
			"grassland", "grassland_dunes", "grassland_ocean", "coniferous_forest",
			"coniferous_forest_dunes", "coniferous_forest_ocean", "deciduous_forest",
			"deciduous_forest_shore", "deciduous_forest_ocean", "cold_desert",
			"cold_desert_ocean", "savanna", "savanna_shore", "savanna_ocean",
			"rainforest", "rainforest_swamp", "rainforest_ocean", "underground"}
	})
	
	-- Sand

	minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:sand",
		wherein          = {"default:stone"},
		clust_scarcity   = 24 * 24 * 24,
		clust_size       = 7,
		y_min            = -63,
		y_max            = 4,
		noise_threshold = 0,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.5
		},
	})

	-- Dirt

	minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:dirt",
		wherein          = {"default:stone"},
		clust_scarcity   = 24 * 24 * 24,
		clust_size       = 7,
		y_min            = -63,
		y_max            = 31000,
		noise_threshold = 0,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.5
		},
	})

	-- Gravel

	minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:gravel",
		wherein          = {"default:stone"},
		clust_scarcity   = 24 * 24 * 24,
		clust_size       = 7,
		y_min            = -31000,
		y_max            = 31000,
		noise_threshold = 0,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.5
		},
	})

	-- Coal

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_coal",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_coal",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = 0,
	})

	-- Iron

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -15,
		y_max          = 2,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -63,
		y_max          = -16,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = -64,
	})

	--Mese

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_mese",
		wherein        = "default:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -255,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_mese",
		wherein        = "default:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -256,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:mese",
		wherein        = "default:stone",
		clust_scarcity = 36 * 36 * 36,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = -1024,
	})

	-- Gold

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_gold",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -255,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_gold",
		wherein        = "default:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -256,
	})

	-- Diamond

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_diamond",
		wherein        = "default:stone",
		clust_scarcity = 17 * 17 * 17,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -255,
		y_max          = -128,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_diamond",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -256,
	})

	-- Copper

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_copper",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -63,
		y_max          = -16,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_copper",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -64,
	})
	
if moreores then	
--moreores
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "moreores:stone_with_tin",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 64,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "moreores:desert_stone_with_tin",
		wherein        = "default:desert_stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 64,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "moreores:stone_with_silver",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -2,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "moreores:desert_stone_with_silver",
		wherein        = "default:desert_stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -2,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "moreores:stone_with_mithril",
		wherein        = "default:stone",
		clust_scarcity = 19 * 19 * 19,
		clust_num_ores = 9,
		clust_size     = 5,
		y_min          = -31000,
		y_max          = -512,
	})
	
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "moreores:stone_with_mithril",
		wherein        = "default:stone",
		clust_scarcity = 19 * 19 * 19,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = 90,
		y_max          = 1200,
	})
end	
	
	
end


--
-- Register decorations
--

-- Mgv6

function default.register_mgv6_decorations()
	minetest.clear_registered_decorations()

	-- Papyrus

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 8,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y = 100, z = 100},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		y_min = 1,
		y_max = 1,
		decoration = "default:papyrus",
		height = 2,
		y_max = 4,
		spawn_by = "default:water_source",
		num_spawn_by = 1,
	})

	-- Cacti

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.012,
			scale = 0.024,
			spread = {x = 100, y = 100, z = 100},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "default:cactus",
		height = 3,
	        y_max = 4,
	})

	-- Long grasses

	for length = 1, 5 do
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:dirt_with_grass"},
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.007,
				spread = {x = 100, y = 100, z = 100},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			y_min = 1,
			y_max = 30,
			decoration = "default:grass_"..length,
		})
	end

	-- Dry shrubs

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand", "default:dirt_with_snow", "default:dirt_with_dry_grass","default:clay"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.035,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "default:dry_shrub",
	})


	minetest.register_decoration({
		deco_type = "simple",
		place_on = { "default:dry_dirt", "default:dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.035,
			spread = {x = 20, y = 10, z = 20},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		y_min = -6,
		y_max = 30,
		decoration = "default:dry_shrub",
	})
end





-- All mapgens except mgv6 and singlenode

local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass", "default:sand"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x=200, y=200, z=200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {
			"stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean",
			"coniferous_forest", "coniferous_forest_ocean",
		},
		y_min = 5,
		y_max = 31000,
		decoration = "default:grass_"..length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass", "dry_dirt"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x=200, y=200, z=200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"savanna"},
		y_min = 5,
		y_max = 31000,
		decoration = "default:dry_grass_"..length,
	})
end

function default.register_decorations()
	minetest.clear_registered_decorations()




		-- Dead tree--need to remove leaves

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass", "default:dry_dirt", "default:stone","default:dirt_with_rainforest_litter","default_silver_sand"},
		sidelen = 16,
		noise_params = {
			offset = 0.0004,
			scale = 0.002,
			spread = {x=250, y=250, z=250},
			seed = 2,
			octaves = 3,
			persist = 0.16
		},
		biomes = {"deciduous_forest", "coniferous_forest", "rainforest" ,"tundra" ,"cold_desert" },
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
	})

--stump	
local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dry_dirt", "default:sand", "default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.003,
			scale = 0.0001,
			spread = {x=200, y=200, z=200},
			seed = 9,
			octaves = 3,
			persist = 0.76
		},
		biomes = {
			"stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean",
			"coniferous_forest", "coniferous_forest_ocean",
		},
		y_min = 3,
		y_max = 200,
		schematic = minetest.get_modpath("es").."/schematics/old_tree.mts",
	})
end


--wrecked car

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "default:sand", "default:desert_sand", "default:dirt_with_dry_grass","default:clay", "default:stone"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.00001,
			spread = {x=1, y=1, z=1},
			seed = 2,
			octaves = 3,
			persist = 0.16
		},
		biomes = {
			"stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean",
			"coniferous_forest", "coniferous_forest_ocean","savanna","desert",
		},
		y_min = 3,
		y_max = 20,
		decoration = "es:tree",
		--flags = "place_center_x",
		rotation = "random",
	})


if cityscape then
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "default:sand", "default:desert_sand", "default:dirt_with_dry_grass","default:clay", "default:stone"},
		sidelen = 20,
		noise_params = {
			offset = 0,
			scale = 0.0001,
			spread = {x=1, y=1, z=1},
			seed = 4,
			octaves = 3,
			persist = 0.16
		},
		biomes = {
			"stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean",
			"coniferous_forest", "coniferous_forest_ocean","savanna","desert",
		},
		y_min = -3,
		y_max = 80,
		decoration = "cityscape:car_broken",
		--flags = "place_center_x",
		rotation = "random",
	})



	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "default:sand", "default:desert_sand", "default:dirt_with_dry_grass","default:clay", "default:stone"},
		sidelen = 16,
		noise_params = {
			offset = 0.003,
			scale = 0.0001,
			spread = {x=200, y=200, z=200},
			seed = 7,
			octaves = 3,
			persist = 0.16
		},
		biomes = {
			"stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean",
			"coniferous_forest", "coniferous_forest_ocean","savanna","desert",
		},
		y_min = 3,
		y_max = 200,
		decoration = "cityscape:small_rocks",
		--flags = "place_center_x",
		rotation = "random",
	})
end



	-- Apple tree

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dry_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0.0004,
			scale = 0.02,
			spread = {x=250, y=250, z=250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 6,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
	})

		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dry_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0.0018,
			scale = 0.0011,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/apple_log.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
	-- Jungle tree

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = { "default:mud", "default:dirt_with_rainforest_litter"},
		sidelen = 16,
		fill_ratio = 0.001,
		biomes = {"rainforest", "rainforest_swamp"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
	})

		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:mud", "default:dirt_with_rainforest_litter"},
		sidelen = 80,
		fill_ratio = 0.005,
		biomes = {"rainforest", "rainforest_swamp"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/jungle_log.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
	-- Taiga and temperate forest pine tree

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:snowblock", "default:dirt_with_dry_grass", "default:dry_dirt","default:silver_sand","default:stone"},
		sidelen = 16,
		noise_params = {
			offset = 0.004,
			scale = 0.02,
			spread = {x=250, y=250, z=250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"taiga", "coniferous_forest"},
		y_min = 2,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})

		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:snowblock", "default:dirt_with_dry_grass", "default:dry_dirt","default:silver_sand","default:stone"},
		sidelen = 80,
		noise_params = {
			offset = 0.0018,
			scale = 0.0011,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"taiga", "coniferous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/pine_log.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
	-- Acacia tree

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 80,
		noise_params = {
			offset = 0.0004,
			scale = 0.003,
			spread = {x=250, y=250, z=250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_min = 6,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/acacia_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/acacia_log.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
		-- Aspen tree and log

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass","default:clay" ,"default:dry_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0.0004,
			scale = 0.003,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest","taiga", "coniferous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/aspen_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dry_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.0008,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/aspen_log.mts",
		flags = "place_center_x",
		rotation = "random",
	})
	
	
	-- Large cactus

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:desert_sand"},
		sidelen = 80,
		noise_params = {
			offset = -0.0005,
			scale = 0.0015,
			spread = {x=200, y=200, z=200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/large_cactus.mts",
		flags = "place_center_x",
		rotation = "random",
	})

	-- Cactus

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand"},
		sidelen = 80,
		noise_params = {
			offset = -0.0005,
			scale = 0.0015,
			spread = {x=200, y=200, z=200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = 31000,
		decoration = "default:cactus",
		height = 2,
		y_max = 5,
	})

	-- Papyrus

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:sand","default:mud"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x=200, y=200, z=200},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"savanna_ocean", "desert_ocean"},
		y_min = 0,
		y_max = 0,
		schematic = minetest.get_modpath("default").."/schematics/papyrus.mts",
	})

		-- Bush

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "default:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"snowy_grassland", "grassland", "deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/bush.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Acacia bush

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 90155,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"savanna"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/acacia_bush.mts",
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

	-- Junglegrass

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass","default:dirt_with_rainforest_litter","default:clay"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:junglegrass",
	})

	-- Dry shrub

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand", "default:dirt_with_snow", "default:dry_dirt","default:dirt_with_dry_grass","default:dirt_with_rainforest_litter","default:silver_sand","default:clay"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.2,
			spread = {x=100, y=100, z=100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -6,
		y_max = 31000,
		decoration = "default:dry_shrub",
	})
	
	
		-- Coral reef

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:sand"},
		noise_params = {
			offset = -0.15,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 7013,
			octaves = 3,
			persist = 1,
		},
		biomes = {
			"desert_ocean",
			"savanna_ocean",
			"rainforest_ocean",
		},
		y_min = -8,
		y_max = -2,
		schematic = minetest.get_modpath("default") .. "/schematics/corals.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
	
	
	if scifi_nodes then
--SCIFI_NODES
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "default:dirt_with_dry_grass", "default:clay"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.0006,
			spread = {x = 100, y = 100, z = 100},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "scifi_nodes:plant1",
	})



	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "default:dirt_with_dry_grass", "default:clay"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.0002,
			spread = {x = 1, y = 1, z = 1},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 3000,
		decoration = "scifi_nodes:plant2",
	})


	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:snowblock","default:dirt_with_snow", "default:clay"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.0002,
			spread = {x = 1, y = 1, z = 1},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 13,
		y_max = 3000,
		decoration = "scifi_nodes:plant3",
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:gravel"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.0002,
			spread = {x = 1, y = 1, z = 1},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 21,
		y_max = 3000,
		decoration = "scifi_nodes:plant4",
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.0002,
			spread = {x = 1, y = 1, z = 1},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 31,
		y_max = 3000,
		decoration = "scifi_nodes:plant5",
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 1, y = 1, z = 1},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 51,
		y_max = 3000,
		decoration = "scifi_nodes:plant6",
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.00002,
			spread = {x = 1, y = 1, z = 1},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 100,
		y_max = 3000,
		decoration = "scifi_nodes:plant7",
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt","default:dirt_with_rainforest_litter"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.0002,
			spread = {x = 1, y = 1, z = 1},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "scifi_nodes:flower1",
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.0002,
			spread = {x = 1, y = 1, z = 1},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 44,
		y_max = 3000,
		decoration = "scifi_nodes:flower2",
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.0002,
			spread = {x = 1, y = 1, z = 1},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 60,
		y_max = 3000,
		decoration = "scifi_nodes:flower3",
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.00002,
			spread = {x = 1, y = 1, z = 1},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 100,
		y_max = 3000,
		decoration = "scifi_nodes:flower4",
	})
	end

	if pathogen then
	--pathogen
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:stone", "default:dry_dirt", "default:snowblock","default:dirt_with_snow", "default:clay" , "default:dirt_with_dry_grass"},
			sidelen = 80,
			noise_params = {
				offset = 0,
				scale = 0.0002,
				spread = {x = 1, y = 1, z = 1},
				seed = 436,
				octaves = 3,
				persist = 0.6
			},
			y_min = -100,
			y_max = 3000,
			decoration = "pathogen:fluid_blood",
		})	

		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:stone","default:dry_dirt", "default:snowblock","default:dirt_with_snow", "default:clay" , "default:dirt_with_dry_grass"},
			sidelen = 80,
			noise_params = {
				offset = 0,
				scale = 0.0002,
				spread = {x = 1, y = 1, z = 1},
				seed = 436,
				octaves = 3,
				persist = 0.6
			},
			y_min = -100,
			y_max = 3000,
			decoration = "pathogen:fluid_feces",
		})
		
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:stone","default:dry_dirt", "default:snowblock","default:dirt_with_snow", "default:clay" , "default:dirt_with_dry_grass"},
			sidelen = 80,
			noise_params = {
				offset = 0,
				scale = 0.0002,
				spread = {x = 1, y = 1, z = 1},
				seed = 436,
				octaves = 3,
				persist = 0.6
			},
			y_min = -100,
			y_max = 3000,
			decoration = "pathogen:fluid_vomit",
		})
	end
		
	if bones then	
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:stone","default:dry_dirt", "default:snowblock","default:dirt_with_snow", "default:clay" , "default:dirt_with_dry_grass"},
			sidelen = 80,
			noise_params = {
				offset = 0,
				scale = 0.0002,
				spread = {x = 1, y = 1, z = 1},
				seed = 436,
				octaves = 3,
				persist = 0.6
			},
			y_min = -21,
			y_max = 3000,
			decoration = "bones:bones",
		})
	end	
	
end

--
-- Register biomes
--
minetest.clear_registered_biomes()
-- All mapgens except mgv6

function default.register_biomes(upper_limit)

	-- Permanent ice

	minetest.register_biome({
		name = "glacier",
		node_dust = "default:snow",
		node_top = "default:stone",
		depth_top = 1,
		node_filler = "es:dry_dirt",
		depth_filler = 3,
		node_stone = "default:stone",
		node_water_top = "es:dry_dirt",
		depth_water_top = 15,
		--node_water = "",
		node_river_water = "es:dry_dirt",
		node_riverbed = "es:dry_dirt",
		depth_riverbed = 2,
		y_min = -8,
		y_max = 31000,
		heat_point = 0,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "glacier_ocean",
		node_dust = "es:dry_dirt",
		node_top = "default:stone",
		depth_top = 1,
		node_filler = "default:stone",
		depth_filler = 3,
		--node_stone = "",
		node_water_top = "es:dry_dirt",
		depth_water_top = 15,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -9,
		heat_point = 0,
		humidity_point = 50,
	})

	-- Cold

	minetest.register_biome({
		name = "tundra",
		node_dust = "default:snow",
		node_top = "default:stone",
		depth_top = 1,
		node_filler = "default:stone",
		depth_filler = 1,
		--node_stone = "",
		node_water_top = "es:dry_dirt",
		depth_water_top = 15,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:stone",
		depth_riverbed = 2,
		y_min = 2,
		y_max = 31000,
		heat_point = 15,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "tundra_beach",
		node_dust = "default:snow",
		node_top = "default:stone",
		depth_top = 1,
		node_filler = "default:stone",
		depth_filler = 2,
		--node_stone = "",
		node_water_top = "es:dry_dirt",
		depth_water_top = 15,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:stone",
		depth_riverbed = 2,
		y_min = -3,
		y_max = 1,
		heat_point = 15,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "tundra_ocean",
		node_dust = "default:snow",
		node_top = "default:stone",
		depth_top = 1,
		node_filler = "es:dry_dirt",
		depth_filler = 3,
		--node_stone = "",
		node_water_top = "es:dry_dirt",
		depth_water_top = 15,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:stone",
		depth_riverbed = 2,
		y_min = -112,
		y_max = -4,
		heat_point = 15,
		humidity_point = 35,
	})


	minetest.register_biome({
		name = "taiga",
		node_dust = "default:snow",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:stone",
		depth_filler = 3,
		--node_stone = "",
		node_water_top = "es:dry_dirt",
		depth_water_top = 15,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:stone",
		depth_riverbed = 2,
		y_min = 2,
		y_max = 31000,
		heat_point = 15,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "taiga_ocean",
		node_dust = "default:snow",
		node_top = "default:stone",
		depth_top = 1,
		node_filler = "es:dry_dirt",
		depth_filler = 3,
		--node_stone = "",
		node_water_top = "es:dry_dirt",
		depth_water_top = 15,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:stone",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 1,
		heat_point = 15,
		humidity_point = 65,
	})
	-- Cool

	minetest.register_biome({
		name = "stone_grassland",
		--node_dust = "",
		node_top = "default:dirt_with_dry_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 0,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 6,
		y_max = 31000,
		heat_point = 40,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "stone_grassland_ocean",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 1,
		heat_point = 40,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "coniferous_forest",
		--node_dust = "",
		node_top = "default:clay",
		depth_top = 1,
		node_filler = "es:dry_dirt",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 6,
		y_max = 31000,
		heat_point = 40,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "coniferous_forest_ocean",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:clay",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 1,
		heat_point = 40,
		humidity_point = 65,
	})

	-- Warm

	minetest.register_biome({
		name = "sandstone_grassland",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:clay",
		depth_filler = 0,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 6,
		y_max = 31000,
		heat_point = 60,
		humidity_point = 35,
	})
	
	minetest.register_biome({
		name = "sandstone_grassland_dunes",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 2,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = 5,
		heat_point = 60,
		humidity_point = 35,
	})
	
	minetest.register_biome({
		name = "sandstone_grassland_ocean",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 2,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 5,
		heat_point = 60,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "deciduous_forest",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 6,
		y_max = 31000,
		heat_point = 60,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "deciduous_forest_swamp",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -3,
		y_max = 0,
		heat_point = 60,
		humidity_point = 65,
	})
	
	minetest.register_biome({
		name = "deciduous_forest_ocean",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 1,
		heat_point = 60,
		humidity_point = 65,
	})

	-- Hot

	minetest.register_biome({
		name = "desert",
		--node_dust = "",
		node_top = "default:desert_sand",
		depth_top = 1,
		node_filler = "default:desert_sand",
		depth_filler = 1,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 5,
		y_max = 31000,
		heat_point = 85,
		humidity_point = 20,
	})

	minetest.register_biome({
		name = "desert_ocean",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 2,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 85,
		humidity_point = 20,
	})

	
		-- Cold desert

	minetest.register_biome({
		name = "cold_desert",
		--node_dust = "",
		node_top = "default:silver_sand",
		depth_top = 1,
		node_filler = "default:silver_sand",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = 31000,
		heat_point = 40,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "cold_desert_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 4,
		heat_point = 40,
		humidity_point = 0,
	})
	
	
	minetest.register_biome({
		name = "savanna",
		--node_dust = "",
		node_top = "default:dirt_with_dry_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 5,
		y_max = 31000,
		heat_point = 85,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "savanna_swamp",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "es:dry_dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -3,
		y_max = 0,
		heat_point = 85,
		humidity_point = 50,
	})
	
	minetest.register_biome({
		name = "savanna_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "es:dry_dirt",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 85,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "rainforest",
		--node_dust = "",
		node_top = "default:dirt_with_rainforest_litter",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 1,
		y_max = 31000,
		heat_point = 85,
		humidity_point = 80,
	})

	minetest.register_biome({
		name = "rainforest_swamp",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 0,
		y_max = 0,
		heat_point = 85,
		humidity_point = 80,
	})

	minetest.register_biome({
		name = "rainforest_ocean",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:clay",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -1,
		heat_point = 85,
		humidity_point = 80,
	})

	-- Underground

	minetest.register_biome({
		name = "underground",
		--node_dust = "",
		--node_top = "",
		depth_top = 0,
		--node_filler = "",
		depth_filler = -4,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -31000,
		y_max = -113,
		heat_point = 50,
		humidity_point = 50,
	})
end



-- Biomes for floatlands

-- TODO Temporary simple biomes to be replaced by special floatland biomes later.

function default.register_floatland_biomes(floatland_level, shadow_limit)

	minetest.register_biome({
		name = "floatland_grassland",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		--node_riverbed = "",
		--depth_riverbed = ,
		y_min = floatland_level + 4,
		y_max = 31000,
		heat_point = 50,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "floatland_grassland_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		--node_riverbed = "",
		--depth_riverbed = ,
		y_min = shadow_limit,
		y_max = floatland_level + 3,
		heat_point = 50,
		humidity_point = 50,
	})
end

--
-- Detect mapgen, flags and parameters to select functions
--

-- Get setting or default
local mgv7_spflags = minetest.get_mapgen_setting("mgv7_spflags") or
	"mountains, ridges, nofloatlands, caverns"
local captures_float = string.match(mgv7_spflags, "floatlands")
local captures_nofloat = string.match(mgv7_spflags, "nofloatlands")

-- Get setting or default
-- Make global for mods to use to register floatland biomes
default.mgv7_floatland_level =
	minetest.get_mapgen_setting("mgv7_floatland_level") or 1280
default.mgv7_shadow_limit =
	minetest.get_mapgen_setting("mgv7_shadow_limit") or 1024

minetest.clear_registered_biomes()
minetest.clear_registered_ores()
minetest.clear_registered_decorations()

local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
	default.register_mgv6_ores()
	default.register_mgv6_decorations()
-- Need to check for 'nofloatlands' because that contains
-- 'floatlands' which makes the second condition true.
elseif mg_name == "v7" and
		captures_float == "floatlands" and
		captures_nofloat ~= "nofloatlands" then
	-- Mgv7 with floatlands and floatland biomes
	default.register_biomes(default.mgv7_shadow_limit - 1)
	default.register_floatland_biomes(
		default.mgv7_floatland_level, default.mgv7_shadow_limit)
	default.register_ores()
	default.register_decorations()
else
	default.register_biomes(31000)
	default.register_ores()
	default.register_decorations()
end

