--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine


-- clear default mapgen biomes and decorations
minetest.clear_registered_biomes()
minetest.clear_registered_decorations()




-- Biomes for floatlands

function default.register_floatland_biomes(floatland_level, shadow_limit)

	-- Coniferous forest

	minetest.register_biome({
		name = "floatland_coniferous_forest",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		--node_riverbed = "",
		--depth_riverbed = ,
		y_min = floatland_level + 2,
		y_max = 31000,
		heat_point = 50,
		humidity_point = 70,
	})

	-- Grassland

	minetest.register_biome({
		name = "floatland_grassland",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
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
		y_min = floatland_level + 2,
		y_max = 31000,
		heat_point = 50,
		humidity_point = 35,
	})

	-- Sandstone desert

	minetest.register_biome({
		name = "floatland_sandstone_desert",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 1,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		--node_riverbed = "",
		--depth_riverbed = ,
		y_min = floatland_level + 2,
		y_max = 31000,
		heat_point = 50,
		humidity_point = 0,
	})

	-- Floatland ocean / underground

	minetest.register_biome({
		name = "floatland_ocean",
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
		y_max = floatland_level + 1,
		heat_point = 50,
		humidity_point = 50,
	})
end

--
-- Register biomes
--


-- All mapgens except mgv6 and singlenode


function default.register_biomes(upper_limit)

	-- Icesheet

	minetest.register_biome({
		name = "icesheet",
		node_dust = "default:snowblock",
		node_top = "default:snowblock",
		depth_top = 1,
		node_filler = "default:snowblock",
		depth_filler = 3,
		node_stone = "default:ice",
		node_water_top = "default:ice",
		depth_water_top = 10,
		--node_water = "",
		node_river_water = "default:ice",
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_min = -8,
		y_max = upper_limit,
		heat_point = 0,
		humidity_point = 73,
	})

	minetest.register_biome({
		name = "icesheet_ocean",
		node_dust = "default:snowblock",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		node_water_top = "default:ice",
		depth_water_top = 10,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -9,
		heat_point = 0,
		humidity_point = 73,
	})

	-- Tundra

	minetest.register_biome({
		name = "tundra",
		node_dust = "default:snowblock",
		--node_top = ,
		--depth_top = ,
		--node_filler = ,
		--depth_filler = ,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_min = 2,
		y_max = upper_limit,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_beach",
		--node_dust = "",
		node_top = "default:gravel",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_min = -3,
		y_max = 1,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_ocean",
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
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_min = -112,
		y_max = -4,
		heat_point = 0,
		humidity_point = 40,
	})

	-- Taiga

	minetest.register_biome({
		name = "taiga",
		node_dust = "default:snow",
		node_top = "default:dirt_with_snow",
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
		y_min = 2,
		y_max = upper_limit,
		heat_point = 25,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "taiga_ocean",
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
		y_max = 1,
		heat_point = 25,
		humidity_point = 70,
	})

	-- Snowy grassland

	minetest.register_biome({
		name = "snowy_grassland",
		node_dust = "default:snow",
		node_top = "default:dirt_with_snow",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = upper_limit,
		heat_point = 20,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "snowy_grassland_ocean",
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
		heat_point = 20,
		humidity_point = 35,
	})

	-- Grassland

	minetest.register_biome({
		name = "grassland",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 6,
		y_max = upper_limit,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_dunes",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = 5,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_ocean",
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
		heat_point = 50,
		humidity_point = 35,
	})

	-- Coniferous forest

	minetest.register_biome({
		name = "coniferous_forest",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
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
		y_min = 6,
		y_max = upper_limit,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "coniferous_forest_dunes",
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
		y_min = 5,
		y_max = 5,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "coniferous_forest_ocean",
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
		heat_point = 45,
		humidity_point = 70,
	})

	-- Deciduous forest

	minetest.register_biome({
		name = "deciduous_forest",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
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
		y_min = 1,
		y_max = upper_limit,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "deciduous_forest_shore",
		--node_dust = "",
		node_top = "default:dirt",
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
		y_min = -1,
		y_max = 0,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "deciduous_forest_ocean",
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
		y_max = -2,
		heat_point = 60,
		humidity_point = 68,
	})

	-- Desert

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
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = upper_limit,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 4,
		heat_point = 92,
		humidity_point = 16,
	})

	-- Sandstone desert

	minetest.register_biome({
		name = "sandstone_desert",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 1,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = upper_limit,
		heat_point = 60,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "sandstone_desert_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 4,
		heat_point = 60,
		humidity_point = 0,
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
		y_max = upper_limit,
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

	-- Savanna

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
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 1,
		y_max = upper_limit,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_shore",
		--node_dust = "",
		node_top = "es:mud",
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
		y_min = -1,
		y_max = 0,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_ocean",
		--node_dust = "",
		node_top = "es:mud",
		depth_top = 1,
		node_filler = "es:mud",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "es:mud",
		depth_riverbed = 2,
		y_min = -112,
		y_max = -2,
		heat_point = 89,
		humidity_point = 42,
	})

	-- Rainforest

	minetest.register_biome({
		name = "rainforest",
		--node_dust = "",
		node_top = "default:dirt_with_rainforest_litter",
		depth_top = 1,
		node_filler = "es:mud",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "es:mud",
		depth_riverbed = 2,
		y_min = 1,
		y_max = upper_limit,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_swamp",
		--node_dust = "",
		node_top = "es:mud",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "es:mud",
		depth_riverbed = 2,
		y_min = -1,
		y_max = 0,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_ocean",
		--node_dust = "",
		node_top = "es:mud",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "es:mud",
		depth_riverbed = 2,
		y_min = -112,
		y_max = -2,
		heat_point = 86,
		humidity_point = 65,
	})

	-- Underground

	minetest.register_biome({
		name = "underground",
		--node_dust = "",
		--node_top = "",
		--depth_top = ,
		--node_filler = "",
		--depth_filler = ,
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
--end
--ES BIOMES
--HOT
	minetest.register_biome({
		name = "strangeland",
		--node_dust = "",
		node_top = "es:strange_grass",
		depth_top = 1,
		node_filler = "default:clay",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 1,
		y_max = 31000,
		heat_point = 42,
		humidity_point = 36,
	})

	minetest.register_biome({
		name = "strangeland_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 42,
		humidity_point = 36,
	})

		minetest.register_biome({
		name = "barren",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "es:dry_dirt",
		depth_filler = 1,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 1,
		y_max = 31000,
		heat_point = 82,
		humidity_point = 20,
	})

		minetest.register_biome({
		name = "barren_ocean",
		--node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "es:dry_dirt",
		depth_filler = 1,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 1,
		y_max = 31000,
		heat_point = 82,
		humidity_point = 20,
	})


	minetest.register_biome({
		name = "clay",
		--node_dust = "",
		node_top = "es:strange_clay_brown",
		depth_top = 1,
		node_filler = "es:strange_clay_red",
		depth_filler = 1,
		node_stone = "default:clay",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 0,
		y_max = 55,
		heat_point = 66,
		humidity_point = 30,
	})
	minetest.register_biome({
		name = "clay_ocean",
		--node_dust = "",
		node_top = "es:strange_clay_brown",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 3,
		node_stone = "default:stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 1,
		heat_point = 66,
		humidity_point = 30,
	})

-- COLD

	minetest.register_biome({
		name = "aidenland",
		--node_dust = "",
		node_top = "es:aiden_grass",
		depth_top = 1,
		node_filler = "default:clay",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 2,
		y_max = 31000,
		heat_point = 25,
		humidity_point = 35,
	})
	minetest.register_biome({
		name = "strangeland_ocean",
		--node_dust = "",
		node_top = "default:clay",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 3,
		node_stone = "default:stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 28,
		y_max = 300,
		heat_point = 25,
		humidity_point = 35,
	})
end

--DECORATIONS

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
		biomes = {"barren"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:dry_grass_"..length,
	})
end

	--Wasteland
	--The buildings found in this mod (in the schems/ folder) have been built by
	--AgentNagel42. See https://forum.minetest.net/viewtopic.php?f=5&t=13297


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
		biomes = {"barren","clay","strangeland","aidenland"},
		y_min = 2,
		y_max = 20,
		schematic = minetest.get_modpath("es").."/schematics/bunker.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})


	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:dry_dirt","es:aiden_grass","es:strange_clay_brown"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"barren","clay"},
		y_min = 2,
		y_max = 20,
		schematic = minetest.get_modpath("es").."/schematics/church_old.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:dry_dirt","es:aiden_grass","es:strange_clay_brown"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"barren","clay"},
		y_min = 2,
		y_max = 20,
		schematic = minetest.get_modpath("es").."/schematics/watchtower_old.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

		minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"es:dry_dirt","es:strange_grass","es:strange_clay_brown","default:dirt_with_dry_grass","default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"barren","clay","savanna","sandstone_grassland"},
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
		biomes = {"aidenland"},
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
		biomes = {"barren"},
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
		biomes = {"strangeland"},
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
		biomes = {"desert", "tundra","strangeland","aidenland","barren","clay"},
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
		biomes = {"strangeland","aidenland"},
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
		biomes = {"strangeland","aidenland","underground"},
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
		biomes = {"aidenland","barren","clay"},
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
		biomes = {"strangeland"},
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
		biomes = {"strangeland","aidenland"},
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
		biomes = {"strangeland"},
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
		biomes = {"aidenland"},
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
		biomes = {"aidenland","tundra"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("es").."/schematics/bunker.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
	
	
	
--DEFAULT	V7
function default.register_mgv6_decorations()

	-- Papyrus

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
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
		height_max = 4,
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
	        height_max = 4,
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
		place_on = {"default:desert_sand", "default:dirt_with_snow"},
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
end


-- All mapgens except mgv6

local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass", "default:sand"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland", "grassland_dunes", "deciduous_forest",
			"coniferous_forest", "coniferous_forest_dunes",
			"floatland_grassland", "floatland_coniferous_forest"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:grass_" .. length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"savanna"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:dry_grass_" .. length,
	})
end


function default.register_decorations()

	-- Apple tree and log

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.036,
			scale = 0.022,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
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

	-- Jungle tree and log

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_rainforest_litter", "default:dirt"},
		sidelen = 16,
		fill_ratio = 0.1,
		biomes = {"rainforest", "rainforest_swamp"},
		y_min = -1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_rainforest_litter", "default:dirt"},
		sidelen = 16,
		fill_ratio = 0.005,
		biomes = {"rainforest", "rainforest_swamp"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/jungle_log.mts",
		flags = "place_center_x",
		rotation = "random",
	})

	-- Taiga and temperate coniferous forest pine tree and log

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.036,
			scale = 0.022,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"taiga", "coniferous_forest", "floatland_coniferous_forest"},
		y_min = 2,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_grass"},
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

	-- Acacia tree and log

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/acacia_tree.mts",
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
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.015,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/aspen_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
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
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/large_cactus.mts",
		flags = "place_center_x",
		rotation = "random",
	})

	-- Cactus

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = 31000,
		decoration = "default:cactus",
		height = 2,
		height_max = 5,
	})

	-- Papyrus

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 200, y = 200, z = 200},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"savanna_shore"},
		y_min = 0,
		y_max = 0,
		schematic = minetest.get_modpath("default") .. "/schematics/papyrus.mts",
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
		biomes = {"snowy_grassland", "grassland", "deciduous_forest",
			"floatland_grassland"},
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
		place_on = {"default:dirt_with_rainforest_litter"},
		sidelen = 16,
		fill_ratio = 0.1,
		biomes = {"rainforest"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:junglegrass",
	})

	-- Dry shrub

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand",
			"default:sand", "default:silver_sand"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "sandstone_desert", "cold_desert"},
		y_min = 2,
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
end


--
-- Detect mapgen, flags and parameters to select functions
--

-- Get setting or default
local mgv7_spflags = minetest.get_mapgen_setting("mgv7_spflags") or
	"mountains, ridges, nofloatlands"
local captures_float = string.match(mgv7_spflags, "floatlands")
local captures_nofloat = string.match(mgv7_spflags, "nofloatlands")

local mgv7_floatland_level = minetest.get_mapgen_setting("mgv7_floatland_level") or 1280
local mgv7_shadow_limit = minetest.get_mapgen_setting("mgv7_shadow_limit") or 1024

minetest.clear_registered_biomes()
minetest.clear_registered_ores()
minetest.clear_registered_decorations()

local mg_name = minetest.get_mapgen_setting("mg_name")
if mg_name == "v6" then
	default.register_mgv6_blob_ores()
	default.register_ores()
	default.register_mgv6_decorations()
elseif mg_name == "v7" and captures_float == "floatlands" and
		captures_nofloat ~= "nofloatlands" then
	-- Mgv7 with floatlands
	default.register_biomes(mgv7_shadow_limit - 1)
	default.register_floatland_biomes(mgv7_floatland_level, mgv7_shadow_limit)
	default.register_blob_ores()
	default.register_ores()
	default.register_decorations()
else
	default.register_biomes(31000)
	default.register_blob_ores()
	default.register_ores()
	default.register_decorations()
end
