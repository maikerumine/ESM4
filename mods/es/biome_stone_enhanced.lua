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
-- Register biomes
--

-- All mapgens except mgv6

function es.register_biomes()

	minetest.register_biome({
		name = "stone",
		node_dust = "",
		node_top = "default:stone",
		depth_top = 1,
		node_filler = "default:stone",
		depth_filler = 3,
		node_water_top = "default:water_source",
		depth_water_top = 10,
		node_cave_liquid = "default:water_source",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = -255,
		heat_point = 50,
		humidity_point = 35,
	})
	
	minetest.register_biome({
		name = "stone_under",
		node_cave_liquid = {"default:water_source", "default:lava_source", "es:toxic_water_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -18000,
		heat_point = 50,
		humidity_point = 35,
	})
	
		minetest.register_biome({
		name = "stone_end",
		node_top = "es:hgglass",
		depth_top = 1,
		node_filler = "es:stoneblock",
		depth_filler = 3,
		node_cave_liquid = {"es:hgglass", "es:hgglass2"},
		node_dungeon = "es:steelblock",
		node_dungeon_alt = "es:steelblock",
		node_dungeon_stair = "es:steelblock",
		y_max = -18001,
		y_min = -31000,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "stonea",
		node_dust = "",
		node_top = "default:stone",
		depth_top = 1,
		node_filler = "default:stone",
		depth_filler = 3,
		node_water_top = "default:water_source",
		depth_water_top = 10,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = -255,
		heat_point = 20,
		humidity_point = 45,
	})
	
		minetest.register_biome({
		name = "stoneb",
		node_dust = "",
		node_top = "default:stone",
		depth_top = 1,
		node_filler = "default:stone",
		depth_filler = 3,
		node_water_top = "default:water_source",
		depth_water_top = 10,
		node_cave_liquid = "default:water_source",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = -255,
		heat_point = 60,
		humidity_point = 25,
	})
	
		minetest.register_biome({
		name = "stonec",
		node_dust = "",
		node_top = "default:stone",
		depth_top = 1,
		node_filler = "default:stone",
		depth_filler = 3,
		node_water_top = "default:water_source",
		depth_water_top = 10,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = -255,
		heat_point = 80,
		humidity_point = 85,
	})

	
	--magic
		minetest.register_biome({
		name = "Mstone",
		node_dust = "",
		node_top = "es:oremagicinator",
		depth_top = 1,
		node_filler = "es:oremagicinator",
		depth_filler = 3,
		node_water_top = "es:toxic_water_source",
		depth_water_top = 10,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = -255,
		heat_point = 90,
		humidity_point = 10,
	})
	
	minetest.register_biome({
		name = "Mstone_under",
		node_cave_liquid = { "es:toxic_water_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -18000,
		heat_point = 90,
		humidity_point = 10,
	})
	
		minetest.register_biome({
		name = "Mstone_end",
		node_top = "es:hgglass",
		depth_top = 1,
		node_filler = "es:stoneblock",
		depth_filler = 3,
		node_cave_liquid = {"es:hgglass", "es:hgglass2"},
		node_dungeon = "es:steelblock",
		node_dungeon_alt = "es:steelblock",
		node_dungeon_stair = "es:steelblock",
		y_max = -18001,
		y_min = -31000,
		heat_point = 90,
		humidity_point = 10,
	})
--[[
cblocks:stone_black
cblocks:stone_blue
cblocks:stone_brown
cblocks:stone_cyan
cblocks:stone_dark_green
cblocks:stone_dark_grey
cblocks:stone_green
cblocks:stone_grey
cblocks:stone_magenta
cblocks:stone_orange
cblocks:stone_pink
cblocks:stone_red
cblocks:stone_violet
cblocks:stone_white
cblocks:stone_yellow


]]	
	-- Icesheet

	minetest.register_biome({
		name = "icesheet",
		node_dust = "cblocks:stone_white",
		node_top = "cblocks:stone_white",
		depth_top = 1,
		node_filler = "cblocks:stone_white",
		depth_filler = 3,
		node_stone = "default:cave_ice",
		node_water_top = "default:ice",
		depth_water_top = 10,
		node_river_water = "default:ice",
		node_riverbed = "cblocks:stone_grey",
		depth_riverbed = 2,
		node_dungeon = "default:ice",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		y_max = 31000,
		y_min = -8,
		heat_point = 0,
		humidity_point = 73,
	})

	minetest.register_biome({
		name = "icesheet_ocean",
		node_dust = "cblocks:stone_white",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_water_top = "default:ice",
		depth_water_top = 10,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "cblocks:cobble_white",
		node_dungeon_alt = "cblocks:stonebrick_white",
		node_dungeon_stair = "stairs:stair_white_cobble",
		y_max = -9,
		y_min = -255,
		heat_point = 0,
		humidity_point = 73,
	})

	minetest.register_biome({
		name = "icesheet_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "cblocks:cobble_white",
		node_dungeon_alt = "cblocks:stonebrick_white",
		node_dungeon_stair = "stairs:stair_white_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 0,
		humidity_point = 73,
	})

	-- Tundra

	minetest.register_biome({
		name = "tundra_highland",
		node_dust = "default:snow",
		node_riverbed = "cblocks:stone_grey",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_grey",
		node_dungeon_alt = "cblocks:stonebrick_grey",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		y_max = 31000,
		y_min = 47,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra",
		node_top = "default:permafrost_with_stones",
		depth_top = 1,
		node_filler = "default:permafrost",
		depth_filler = 1,
		node_riverbed = "cblocks:stone_grey",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_grey",
		node_dungeon_alt = "cblocks:stonebrick_grey",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		vertical_blend = 4,
		y_max = 46,
		y_min = 2,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_beach",
		node_top = "cblocks:stone_grey",
		depth_top = 1,
		node_filler = "cblocks:stone_grey",
		depth_filler = 2,
		node_riverbed = "cblocks:stone_grey",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_grey",
		node_dungeon_alt = "cblocks:stonebrick_grey",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		vertical_blend = 1,
		y_max = 1,
		y_min = -3,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_ocean",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_grey",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "cblocks:cobble_grey",
		node_dungeon_alt = "cblocks:stonebrick_grey",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		vertical_blend = 1,
		y_max = -4,
		y_min = -255,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "cblocks:cobble_grey",
		node_dungeon_alt = "cblocks:stonebrick_grey",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 0,
		humidity_point = 40,
	})

	-- Taiga

	minetest.register_biome({
		name = "taiga",
		node_dust = "default:snow",
		node_top = "cblocks:stone_white",
		depth_top = 1,
		node_filler = "cblocks:stone_brown",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_white",
		node_dungeon_alt = "cblocks:stonebrick_white",
		node_dungeon_stair = "stairs:stair_white_cobble",
		y_max = 31000,
		y_min = 4,
		heat_point = 25,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "taiga_ocean",
		node_dust = "default:snow",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "cblocks:cobble_white",
		node_dungeon_alt = "cblocks:stonebrick_white",
		node_dungeon_stair = "stairs:stair_white_cobble",
		vertical_blend = 1,
		y_max = 3,
		y_min = -255,
		heat_point = 25,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "taiga_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "cblocks:cobble_white",
		node_dungeon_alt = "cblocks:stonebrick_white",
		node_dungeon_stair = "stairs:stair_white_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 25,
		humidity_point = 70,
	})

	-- Snowy grassland

	minetest.register_biome({
		name = "snowy_grassland",
		node_dust = "default:snow",
		node_top = "cblocks:stone_white",
		depth_top = 1,
		node_filler = "cblocks:stone_brown",
		depth_filler = 1,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_white",
		node_dungeon_alt = "cblocks:stonebrick_white",
		node_dungeon_stair = "stairs:stair_white_cobble",
		y_max = 31000,
		y_min = 4,
		heat_point = 20,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "snowy_grassland_ocean",
		node_dust = "default:snow",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "cblocks:cobble_white",
		node_dungeon_alt = "cblocks:stonebrick_white",
		node_dungeon_stair = "stairs:stair_white_cobble",
		vertical_blend = 1,
		y_max = 3,
		y_min = -255,
		heat_point = 20,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "snowy_grassland_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "cblocks:cobble_white",
		node_dungeon_alt = "cblocks:stonebrick_white",
		node_dungeon_stair = "stairs:stair_white_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 20,
		humidity_point = 35,
	})

	-- Grassland

	minetest.register_biome({
		name = "grassland",
		node_top = "cblocks:stone_dark_green",
		depth_top = 1,
		node_filler = "cblocks:stone_brown",
		depth_filler = 1,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_dark_green",
		node_dungeon_alt = "cblocks:stonebrick_dark_green",
		node_dungeon_stair = "stairs:stair_dark_green_cobble",
		y_max = 31000,
		y_min = 6,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_dunes",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 2,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_yellow",
		node_dungeon_alt = "cblocks:stonebrick_yellow",
		node_dungeon_stair = "stairs:stair_yellow_cobble",
		vertical_blend = 1,
		y_max = 5,
		y_min = 4,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_ocean",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "cblocks:cobble_yellow",
		node_dungeon_alt = "cblocks:stonebrick_yellow",
		node_dungeon_stair = "stairs:stair_yellow_cobble",
		y_max = 3,
		y_min = -255,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "cblocks:cobble_dark_green",
		node_dungeon_alt = "cblocks:stonebrick_dark_green",
		node_dungeon_stair = "stairs:stair_dark_green_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 50,
		humidity_point = 35,
	})

	-- Coniferous forest

	minetest.register_biome({
		name = "coniferous_forest",
		node_top = "cblocks:stone_grey",
		depth_top = 1,
		node_filler = "cblocks:stone_brown",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_cyan",
		node_dungeon_alt = "cblocks:stonebrick_grey",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		y_max = 31000,
		y_min = 6,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "coniferous_forest_dunes",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_cyan",
		node_dungeon_alt = "cblocks:stonebrick_grey",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		vertical_blend = 1,
		y_max = 5,
		y_min = 4,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "coniferous_forest_ocean",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "cblocks:cobble_grey",
		node_dungeon_alt = "cblocks:stonebrick_grey",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		y_max = 3,
		y_min = -255,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "coniferous_forest_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "cblocks:cobble_grey",
		node_dungeon_alt = "cblocks:stonebrick_grey",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 45,
		humidity_point = 70,
	})

	-- Deciduous forest

	minetest.register_biome({
		name = "deciduous_forest",
		node_top = "cblocks:stone_dark_green",
		depth_top = 1,
		node_filler = "cblocks:stone_brown",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_green",
		node_dungeon_alt = "cblocks:stonebrick_dark_green",
		node_dungeon_stair = "stairs:stair_dark_green_cobble",
		y_max = 31000,
		y_min = 1,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "deciduous_forest_shore",
		node_top = "cblocks:stone_brown",
		depth_top = 1,
		node_filler = "cblocks:stone_brown",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_dark_green",
		node_dungeon_alt = "cblocks:stonebrick_dark_green",
		node_dungeon_stair = "stairs:stair_dark_green_cobble",
		y_max = 0,
		y_min = -1,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "deciduous_forest_ocean",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "cblocks:cobble_dark_green",
		node_dungeon_alt = "cblocks:stonebrick_dark_green",
		node_dungeon_stair = "stairs:stair_dark_green_cobble",
		vertical_blend = 1,
		y_max = -2,
		y_min = -255,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "deciduous_forest_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "cblocks:cobble_green",
		node_dungeon_alt = "cblocks:stonebrick_dark_green",
		node_dungeon_stair = "stairs:stair_dark_green_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 60,
		humidity_point = 68,
	})

	-- Desert

	minetest.register_biome({
		name = "desert",
		node_top = "cblocks:stone_orange",
		depth_top = 1,
		node_filler = "cblocks:stone_orange",
		depth_filler = 1,
		node_stone = "cblocks:stone_red",
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "default:desert_stone",
		node_dungeon_stair = "stairs:stair_desert_stone",
		y_max = 31000,
		y_min = 4,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_ocean",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_stone = "cblocks:stone_red",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "default:desert_stone",
		node_dungeon_stair = "stairs:stair_desert_stone",
		vertical_blend = 1,
		y_max = 3,
		y_min = -255,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 92,
		humidity_point = 16,
	})

	-- Sandstone desert

	minetest.register_biome({
		name = "sandstone_desert",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 1,
		node_stone = "default:sandstone",
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "default:sandstonebrick",
		node_dungeon_stair = "stairs:stair_sandstone_block",
		y_max = 31000,
		y_min = 4,
		heat_point = 60,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "sandstone_desert_ocean",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_stone = "default:sandstone",
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "default:sandstonebrick",
		node_dungeon_stair = "stairs:stair_sandstone_block",
		y_max = 3,
		y_min = -255,
		heat_point = 60,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "sandstone_desert_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 60,
		humidity_point = 0,
	})

	-- Cold desert

	minetest.register_biome({
		name = "cold_desert",
		node_top = "cblocks:stone_grey",
		depth_top = 1,
		node_filler = "cblocks:stone_grey",
		depth_filler = 1,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_grey",
		node_dungeon_alt = "cblocks:stonebrick_grey",
		node_dungeon_stair = "stairs:stair_grey_cobble",
		y_max = 31000,
		y_min = 4,
		heat_point = 40,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "cold_desert_ocean",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		vertical_blend = 1,
		y_max = 3,
		y_min = -255,
		heat_point = 40,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "cold_desert_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 40,
		humidity_point = 0,
	})

	-- Savanna

	minetest.register_biome({
		name = "savanna",
		node_top = "cblocks:stone_orange",
		depth_top = 1,
		node_filler = "default:dry_dirt",
		depth_filler = 1,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_orange",
		node_dungeon_alt = "cblocks:stonebrick_orange",
		node_dungeon_stair = "stairs:stair_orange_cobble",
		y_max = 31000,
		y_min = 1,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_shore",
		node_top = "default:dry_dirt",
		depth_top = 1,
		node_filler = "default:dry_dirt",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_orange",
		node_dungeon_alt = "cblocks:stonebrick_orange",
		node_dungeon_stair = "stairs:stair_orange_cobble",
		y_max = 0,
		y_min = -1,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_ocean",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "cblocks:cobble_orange",
		node_dungeon_alt = "cblocks:stonebrick_orange",
		node_dungeon_stair = "stairs:stair_orange_cobble",
		vertical_blend = 1,
		y_max = -2,
		y_min = -255,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 89,
		humidity_point = 42,
	})

	-- Rainforest

	minetest.register_biome({
		name = "rainforest",
		node_top = "cblocks:stone_dark_grey",
		depth_top = 1,
		node_filler = "cblocks:stone_brown",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_dark_grey",
		node_dungeon_alt = "cblocks:stonebrick_dark_grey",
		node_dungeon_stair = "stairs:stair_dark_grey_cobble",
		y_max = 31000,
		y_min = 1,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_swamp",
		node_top = "cblocks:stone_brown",
		depth_top = 1,
		node_filler = "cblocks:stone_brown",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_dungeon = "cblocks:cobble_dark_grey",
		node_dungeon_alt = "cblocks:stonebrick_dark_grey",
		node_dungeon_stair = "stairs:stair_dark_grey_cobble",
		y_max = 0,
		y_min = -1,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_ocean",
		node_top = "cblocks:stone_yellow",
		depth_top = 1,
		node_filler = "cblocks:stone_yellow",
		depth_filler = 3,
		node_riverbed = "cblocks:stone_yellow",
		depth_riverbed = 2,
		node_cave_liquid = "es:toxic_water_source",
		node_dungeon = "cblocks:cobble_dark_grey",
		node_dungeon_alt = "cblocks:stonebrick_dark_grey",
		node_dungeon_stair = "stairs:stair_dark_grey_cobble",
		vertical_blend = 1,
		y_max = -2,
		y_min = -255,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 86,
		humidity_point = 65,
	})


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
		heat_point = 22,
		humidity_point = 56,
	})

	minetest.register_biome({
		name = "strangeland_ocean",
		--node_dust = "",
		node_top = "default:clay",
		depth_top = 1,
		node_filler = "default:clay",
		depth_filler = 3,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 22,
		humidity_point = 56,
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
		heat_point = 72,
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
		heat_point = 86,
		humidity_point = 10,
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
		heat_point = 86,
		humidity_point = 10,
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
		heat_point = 3,
		humidity_point = 2,
	})
	minetest.register_biome({
		name = "aidenland_ocean",
		--node_dust = "",
		node_top = "default:gravel",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 3,
		node_stone = "default:gravel",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -28,
		y_max = 1,
		heat_point = 3,
		humidity_point = 2,
	})

	
end

local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		name = "default:grass_" .. length,
		deco_type = "simple",
		place_on = {"default:dirt_with_grass", "cblocks:stone_green", "cblocks:stone_dark_green", "cblocks:stone_dark_gray", "cblocks:stone_grey"},
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
		biomes = {"stone","grassland", "deciduous_forest"},
		y_max = 31000,
		y_min = 1,
		decoration = "default:grass_" .. length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		name = "default:dry_grass_" .. length,
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass", "cblocks:stone_magenta", "cblocks:stone_orange"},
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
		biomes = {"stone", "savanna"},
		y_max = 31000,
		y_min = 1,
		decoration = "default:dry_grass_" .. length,
	})
end

local function register_fern_decoration(seed, length)
	minetest.register_decoration({
		name = "default:fern_" .. length,
		deco_type = "simple",
		place_on = {"default:dirt_with_coniferous_litter", "cblocks:stone_cyan", "cblocks:stone_dark_grey", "cblocks:stone_grey"},
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
		biomes = {"stone", "coniferous_forest"},
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
		place_on = {"cblocks:stone_magenta", "cblocks:stone_orange"},
		sidelen = 4,
		noise_params = {
			offset = -1.5,
			scale = -1.5,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 4,
			persist = 1.0
		},
		biomes = {"savanna"},
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
		place_on = {"default:dirt_with_grass", "default:dirt", "cblocks:stone_green", "cblocks:stone_dark_green"},
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
		biomes = {"stone", "deciduous_forest"},
		y_max = 51,
		y_min = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--=================
--Underground
	minetest.register_decoration({
		name = "default:apple_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "default:dirt", "cblocks:stone_green", "cblocks:stone_dark_green", "default:stone",},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.009,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6,
		},
		--biomes = {"stone"},
		biomes = {"stone", "deciduous_forest", "stone_under"},
		y_max = -51,
		y_min = -10000,
		schematic = minetest.get_modpath("default") .. "/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
--=================
	minetest.register_decoration({
		name = "default:apple_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "cblocks:stone_green", "cblocks:stone_dark_green"},
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
		biomes = {"deciduous_forest"},
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
			place_on = {"default:dirt_with_rainforest_litter", "cblocks:stone_violet", "cblocks:stone_dark_grey"},
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
			biomes = {"rainforest"},
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
		place_on = {"default:dirt_with_rainforest_litter", "cblocks:stone_violet", "cblocks:stone_dark_grey"},
		noise_params = {
			offset = 0,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 33,
			octaves = 3,
			persist = 0.6,
		},
		--biomes = {"stone"},
		biomes = {"stone", "rainforest"},
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
		biomes = {"rainforest_swamp"},
		y_max = 0,
		y_min = -1,
		schematic = minetest.get_modpath("default") .. "/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "default:jungle_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_rainforest_litter", "cblocks:stone_violet", "cblocks:stone_dark_grey"},
		place_offset_y = 1,
		sidelen = 80,
		--fill_ratio = 0.005,
		fill_ratio = 0.00005,
		biomes = {"rainforest"},
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
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter", "cblocks:stone_cyan", "cblocks:stone_dark_green", "cblocks:stone_dark_grey", "cblocks:stone_grey"},
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
		biomes = {"taiga", "coniferous_forest"},
		y_max = 31000,
		y_min = 4,
		schematic = minetest.get_modpath("default") .. "/schematics/pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})
	
	minetest.register_decoration({
		name = "default:small_pine_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter", "cblocks:stone_cyan", "cblocks:stone_dark_green", "cblocks:stone_dark_grey", "cblocks:stone_grey"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 719,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"stone", "taiga", "coniferous_forest"},
		y_max = 31000,
		y_min = 55,
		schematic = minetest.get_modpath("default") .. "/schematics/small_pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		name = "default:pine_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter", "cblocks:stone_cyan", "cblocks:stone_dark_green", "cblocks:stone_dark_grey", "cblocks:stone_grey"},
		place_offset_y = 1,
		sidelen = 80,
		--fill_ratio = 0.0018,
		fill_ratio = 0.00018,
		biomes = {"taiga", "coniferous_forest"},
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
		place_on = {"default:dirt_with_dry_grass", "cblocks:stone_magenta", "cblocks:stone_orange"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 1929,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"stone", "savanna"},
		y_max = 80,
		y_min = 10,
		schematic = minetest.get_modpath("default") .. "/schematics/acacia_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "default:acacia_log",
		deco_type = "schematic",
		place_on = {"default:dry_dirt_with_dry_grass", "cblocks:stone_magenta", "cblocks:stone_orange"},
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
		biomes = {"savanna"},
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
		place_on = {"default:dirt_with_grass", "cblocks:stone_green", "cblocks:stone_grey", "cblocks:stone_dark_green"},
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
		biomes = {"deciduous_forest"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/aspen_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		name = "default:aspen_log",
		deco_type = "schematic",
        place_on = {"default:dirt_with_grass", "cblocks:stone_green", "cblocks:stone_grey", "cblocks:stone_dark_green"},
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
		biomes = {"deciduous_forest"},
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
		biomes = {"desert"},
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
		biomes = {"desert"},
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
			"cblocks:stone_yellow", "cblocks:stone_orange", "cblocks:stone_grey", "cblocks:stone_dark_grey"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.09,
			spread = {x = 200, y = 200, z = 200},
			seed = 1234,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"stone", "rainforest_swamp"},
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
		biomes = {"stone", "savanna_shore"},
		y_max = 0,
		y_min = 0,
		schematic = minetest.get_modpath("default") ..
			"/schematics/papyrus_on_dry_dirt.mts",
	})

	-- Bush

	minetest.register_decoration({
		name = "default:bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "cblocks:stone_green", "cblocks:stone_dark_green"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.009,
			spread = {x = 200, y = 200, z = 200},
			seed = 9329,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"stone", "grassland", "deciduous_forest"},
		y_max = 31000,
		y_min = 11,
		schematic = minetest.get_modpath("default") .. "/schematics/bush.mts",
		flags = "place_center_x, place_center_z",
	})
	
	

	-- Blueberry bush

	minetest.register_decoration({
		name = "default:blueberry_bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "default:dirt_with_snow", "cblocks:stone_green", "cblocks:stone_white", "cblocks:stone_dark_green"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.009,
			spread = {x = 200, y = 200, z = 200},
			seed = 4229,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"stone", "grassland", "snowy_grassland"},
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
		place_on = {"default:dirt_with_dry_grass", "cblocks:stone_magenta", "cblocks:stone_orange"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.009,
			spread = {x = 200, y = 200, z = 200},
			seed = 199,
			octaves = 3,
			persist = 0.6,
		},
		biomes = {"stone", "savanna"},
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
		biomes = {"stone", "taiga", "snowy_grassland"},
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
		place_on = {"default:dirt_with_rainforest_litter", "cblocks:stone_violet", "cblocks:stone_dark_grey", "cblocks:stone_grey"},
		noise_params = {
			offset = 0,
			scale = 0.009,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.66,
		},
		biomes = {"stone", "rainforest"},
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
		biomes = {"stone", "desert", "sandstone_desert", "cold_desert"},
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
		biomes = {"stone", "coniferous_forest_dunes", "grassland_dunes"},
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
		biomes = {"tundra"},
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
		biomes = {"stone","tundra", "tundra_beach"},
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
		biomes = {"stone", "desert_ocean",
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
			"stone", "taiga_ocean",
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
		biomes = {"barren"},
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
		biomes = {"barren","clay","strangeland","aidenland"},
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
		biomes = {"barren","clay", "tundra"},
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
		biomes = {"barren","clay", "tundra"},
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
		biomes = {"barren","clay","savanna","sandstone_grassland", "tundra"},
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

--==============================
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:stone","cblocks:stone_dark_green","cblocks:stone_dark_grey", "cblocks:stone_orange"},
		sidelen = 16,
		noise_params = {
			offset = -0.002,
			scale = 0.0054,
			spread = {x = 100, y = 100, z = 100},
			seed = 245,
			octaves = 3,
			persist = 0.66
		},
		--biomes = {"barren"},
		y_min = 6,
		y_max = 200,
		schematic = minetest.get_modpath("es").."/schematics/old_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})	
--==============================	
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


--hades
	-- Dry shrub

	minetest.register_decoration({
		name = "hades_core:snag",
		deco_type = "simple",
		place_on = {"default:desert_sand",
			"default:sand", "default:silver_sand", "default:stone", 
			"cblocks:stone_yellow", "cblocks:stone_orange", "cblocks:stone_grey", "es:dry_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.66,
		},
		biomes = {"stone", "desert", "sandstone_desert", "cold_desert", "barren"},
		y_max = 31000,
		y_min = 2,
		decoration = "hades_core:snag",
		param2 = 4,
	})
	


	
end

minetest.clear_registered_biomes()
--minetest.clear_registered_ores()
minetest.clear_registered_decorations()

local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
	--es.register_mgv6_ores()
	es.register_mgv6_decorations()
else
	es.register_biomes()
	--es.register_ores()
	es.register_decorations()
end
