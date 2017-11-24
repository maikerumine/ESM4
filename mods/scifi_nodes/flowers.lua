-- Minetest 0.4 mod: default
-- See README.txt for licensing and other information.

-- The API documentation in here was moved into game_api.txt

-- Definitions made by this mod that other mods can use too
--default = {}


--function default.register_decorations()
--	minetest.clear_registered_decorations()

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 936,
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

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 836,
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

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 6,
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

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 36,
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

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 136,
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

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 236,
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

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 336,
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

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 436,
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

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 536,
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

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 636,
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

local function register_mgv6_flower(name)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dry_dirt", "es:dry_dirt", "default:dirt_with_dry_grass", "default:clay", "es:strange_clay_blue", "es:strange_grass", "es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 736,
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
--end