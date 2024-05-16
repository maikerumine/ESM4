--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine


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
		name = "barren",
		node_dust = "",
		node_top = "es:dry_dirt",
		depth_top = 1,
		node_filler = "es:dry_dirt",
		depth_filler = 3,
		node_stone = "default:desert_stone",
		--node_water_top = "default:water_source",
		node_water_top = "es:muddy_block",
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
		name = "barren_under",
		node_cave_liquid = {"default:water_source", "default:lava_source", "es:toxic_liquid_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -18000,
		heat_point = 50,
		humidity_point = 35,
	})
	
		minetest.register_biome({
		name = "barren_end",
		node_top = "es:hgglass",
		depth_top = 1,
		node_filler = "es:stoneblock",
		depth_filler = 3,
		node_cave_liquid = {"es:toxic_water_source", "es:toxic_water_source"},
		node_dungeon = "es:steelblock",
		node_dungeon_alt = "es:steelblock",
		node_dungeon_stair = "es:steelblock",
		y_max = -18001,
		y_min = -31000,
		heat_point = 50,
		humidity_point = 35,
	})
	
	
end


function es.register_decorations()
	--Wasteland
	--The buildings found in this mod (in the schems/ folder) have been built by
	--AgentNagel42. See https://forum.minetest.net/viewtopic.php?f=5&t=13297
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
		biomes = {"barren"},
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
