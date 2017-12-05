-- Minetest 0.4 mod: default
-- See README.txt for licensing and other information.

-- The API documentation in here was moved into game_api.txt

-- Definitions made by this mod that other mods can use too
--default = {}

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "default:dirt_with_dry_grass", "default:clay"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.0006,
			spread = {x = 100, y = 100, z = 100},
			seed = 1436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "scifi_nodes:"..name,
	})
end

--[[
local function register_mgv6_flower(name)
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
end

local function register_mgv6_flower(name)
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
end

local function register_mgv6_flower(name)
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
end

local function register_mgv6_flower(name)
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
end

local function register_mgv6_flower(name)
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
end

local function register_mgv6_flower(name)
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
end

local function register_mgv6_flower(name)
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
end

local function register_mgv6_flower(name)
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
end

local function register_mgv6_flower(name)
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
end

local function register_mgv6_flower(name)
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
end

local function register_mgv6_flower(name)
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
]]
function scifi_nodes.register_mgv6_decorations()
	register_mgv6_flower("flower1")
	register_mgv6_flower("flower2")
	register_mgv6_flower("flower3")
	register_mgv6_flower("flower4")
	
	register_mgv6_flower("plant1")
	register_mgv6_flower("plant2")
	register_mgv6_flower("plant3")
	register_mgv6_flower("plant4")
	register_mgv6_flower("plant5")
	register_mgv6_flower("plant6")
	register_mgv6_flower("plant7")

end

--
-- All other biome API mapgens
--
--examp
--[[
local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland", "deciduous_forest", "coniferous_forest",
			"floatland_grassland", "floatland_coniferous_forest"},
		y_min = 1,
		y_max = 31000,
		decoration = "flowers:"..name,
	})
end
]]



local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:"..name,
	})
end
--[[
local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,

		decoration = "scifi_nodes:plant1",
	})
end

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:plant2",
	})
end

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:plant3",
	})
end

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:plant4",
	})
end

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:plant5",
	})
end

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:plant6",
	})
end

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:plant7",
	})
end

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:flower1",
	})
end

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:flower2",
	})
end

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:flower3",
	})
end

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra","stone_grassland", "stone_grassland_ocean",
			"sandstone_grassland", "sandstone_grassland_ocean",
			"deciduous_forest", "deciduous_forest_ocean", "strangeland", "aidenland", "underground", "barren",
			"coniferous_forest", "coniferous_forest_ocean","deciduous_forest", "coniferous_forest", "savanna_ocean", "desert_ocean", "rainforest","rainforest_ocean"  ,"rainforest_swamp"  ,"tundra" },
		y_min = -600,
		y_max = 31000,
		decoration = "scifi_nodes:flower4",
	})
end
]]

function scifi_nodes.register_decorations()
	register_flower(436,     "flower1")
	register_flower(19822,   "flower2")
	register_flower(1220999, "flower3")
	register_flower(36662,   "flower4")
	
	register_flower(1133,    "plant1")
	register_flower(3473,    "plant2")
	register_flower(18973,    "plant3")
	register_flower(19354,    "plant4")
	register_flower(3465,    "plant5")
	register_flower(974,    "plant6")
	register_flower(73133,   "plant7")

end


--
-- Detect mapgen to select functions
--

local mg_name = minetest.get_mapgen_setting("mg_name")
if mg_name == "v6" then
	scifi_nodes.register_mgv6_decorations()
else
	scifi_nodes.register_decorations()
end



--======================
--======================
--======================
--flowers	code for ref
--[[
--
-- Mgv6
--

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 100, y = 100, z = 100},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "flowers:"..name,
	})
end

local function register_mgv6_mushroom(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.04,
			spread = {x = 100, y = 100, z = 100},
			seed = 7133,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "flowers:"..name,
		spawn_by = "default:tree",
		num_spawn_by = 1,
	})
end

local function register_mgv6_waterlily()
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt"},
		sidelen = 16,
		noise_params = {
			offset = -0.12,
			scale = 0.3,
			spread = {x = 100, y = 100, z = 100},
			seed = 33,
			octaves = 3,
			persist = 0.7
		},
		y_min = 0,
		y_max = 0,
		schematic = minetest.get_modpath("flowers").."/schematics/waterlily.mts",
		rotation = "random",
	})
end

function flowers.register_mgv6_decorations()
	register_mgv6_flower("rose")
	register_mgv6_flower("tulip")
	register_mgv6_flower("dandelion_yellow")
	register_mgv6_flower("geranium")
	register_mgv6_flower("viola")
	register_mgv6_flower("dandelion_white")

	register_mgv6_mushroom("mushroom_brown")
	register_mgv6_mushroom("mushroom_red")

	register_mgv6_waterlily()
end


--
-- All other biome API mapgens
--

local function register_flower(seed, name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.015,
			scale = 0.025,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland", "deciduous_forest", "coniferous_forest",
			"floatland_grassland", "floatland_coniferous_forest"},
		y_min = 1,
		y_max = 31000,
		decoration = "flowers:"..name,
	})
end

local function register_mushroom(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest", "coniferous_forest",
			"floatland_coniferous_forest"},
		y_min = 1,
		y_max = 31000,
		decoration = "flowers:"..name,
	})
end

local function register_waterlily()
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt"},
		sidelen = 16,
		noise_params = {
			offset = -0.12,
			scale = 0.3,
			spread = {x = 200, y = 200, z = 200},
			seed = 33,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"rainforest_swamp", "savanna_shore", "deciduous_forest_shore"},
		y_min = 0,
		y_max = 0,
		schematic = minetest.get_modpath("flowers") .. "/schematics/waterlily.mts",
		rotation = "random",
	})
end

function flowers.register_decorations()
	register_flower(436,     "rose")
	register_flower(19822,   "tulip")
	register_flower(1220999, "dandelion_yellow")
	register_flower(36662,   "geranium")
	register_flower(1133,    "viola")
	register_flower(73133,   "dandelion_white")

	register_mushroom("mushroom_brown")
	register_mushroom("mushroom_red")

	register_waterlily()
end


--
-- Detect mapgen to select functions
--

local mg_name = minetest.get_mapgen_setting("mg_name")
if mg_name == "v6" then
	flowers.register_mgv6_decorations()
else
	flowers.register_decorations()
end
]]