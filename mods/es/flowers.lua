--
-- Mgv6
--

local function register_mgv6_flower(flower_name)
	minetest.register_decoration({
		name = "flowers:"..flower_name,
		--place_on = {"default:dirt_with_grass","es:strange_grass","es:aiden_grass"},
		place_on = {"es:strange_grass","es:aiden_grass"},
		sidelen = 16,
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 100, y = 100, z = 100},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		y_max = 30,
		y_min = 1,
		decoration = "flowers:"..flower_name,
	})
end

local function register_mgv6_mushroom(mushroom_name)
	minetest.register_decoration({
		name = "flowers:"..mushroom_name,
		deco_type = "simple",
		--place_on = {"default:dirt_with_grass","es:strange_grass","es:aiden_grass"},
		place_on = {"es:strange_grass","es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.04,
			spread = {x = 100, y = 100, z = 100},
			seed = 7133,
			octaves = 3,
			persist = 0.6
		},
		y_max = 30,
		y_min = 1,
		decoration = "flowers:"..mushroom_name,
		spawn_by = "default:tree",
		num_spawn_by = 1,
	})
end

local function register_mgv6_waterlily()
	minetest.register_decoration({
		name = "flowers:waterlily",
		deco_type = "simple",
		--place_on = {"default:dirt_with_grass","es:strange_grass","es:aiden_grass"},
		place_on = {"es:strange_grass","es:aiden_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.12,
			scale = 0.3,
			spread = {x = 100, y = 100, z = 100},
			seed = 33,
			octaves = 3,
			persist = 0.7
		},
		y_max = 0,
		y_min = 0,
		decoration = "flowers:waterlily_waving",
		param2 = 0,
		param2_max = 3,
		place_offset_y = 1,
	})
end

local function register_mgv6_waterlily()
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt", "cblocks:stone_brown"},
		sidelen = 16,
		noise_params = {
			offset = -0.12,
			scale = 0.003,
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

local function register_flower(seed, flower_name)
	minetest.register_decoration({
		name = "flowers:"..flower_name,
		deco_type = "simple",
		--place_on = {"default:dirt_with_grass", "cblocks:stone_green", "cblocks:stone_cyan"},
		place_on = {"cblocks:stone_green","cblocks:stone_dark_green", "cblocks:stone_cyan", "cblocks:stone_grey"},
		sidelen = 16,
		noise_params = {
			offset = -0.02,
			scale = 0.04,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland", "deciduous_forest"},
		y_max = 31000,
		y_min = 1,
		decoration = "flowers:"..flower_name,
	})
end

local function register_mushroom(mushroom_name)
	minetest.register_decoration({
		name = "flowers:"..mushroom_name,
		deco_type = "simple",
		--place_on = {"default:dirt_with_grass", "default:dirt_with_coniferous_litter"},
		place_on = {"cblocks:stone_green","cblocks:stone_dark_green", "cblocks:stone_cyan", "cblocks:stone_grey"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest", "coniferous_forest"},
		y_max = 31000,
		y_min = 1,
		decoration = "flowers:"..mushroom_name,
	})
end

local function register_waterlily()
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt", "cblocks:stone_brown"},
		sidelen = 16,
		noise_params = {
			offset = -0.12,
			scale = 0.03,
			spread = {x = 200, y = 200, z = 200},
			seed = 33,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"rainforest_swamp"},
		y_max = 0,
		y_min = 0,
		decoration = "flowers:waterlily_waving",
		param2 = 0,
		param2_max = 3,
		place_offset_y = 1,
		--rotation = "random",
	})
end

function flowers.register_decorations()
	register_flower(436,     "rose")
	register_flower(19822,   "tulip")
	register_flower(1220999, "dandelion_yellow")
	register_flower(800081,  "chrysanthemum_green")
	register_flower(36662,   "geranium")
	register_flower(1133,    "viola")
	register_flower(73133,   "dandelion_white")
	register_flower(42,      "tulip_black")

	register_mushroom("mushroom_brown")
	register_mushroom("mushroom_red")

	register_waterlily()
	
end


--
-- Detect mapgen to select functions
--

-- Mods using singlenode mapgen can call these functions to enable
-- the use of minetest.generate_ores or minetest.generate_decorations

local mg_params = minetest.get_mapgen_params()
if mg_params.mgname == "v6" then
	flowers.register_mgv6_decorations()
elseif mg_params.mgname ~= "singlenode" then
	flowers.register_decorations()
end
