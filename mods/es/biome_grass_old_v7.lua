--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine


--
-- Register biomes
--

-- All mapgens except mgv6

function es.register_biomes()

	-- Grassland

	minetest.register_biome({
		name = "oldv7",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 4,
		node_riverbed = "default:stone",
		depth_riverbed = 2,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = 1,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "oldv7_ocean",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 4,
		node_riverbed = "default:dirt",
		depth_riverbed = 5,
		node_cave_liquid = "default:water_source",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 0,
		y_min = -255,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "oldv7_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
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
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"oldv7"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:grass_"..length,
	})
end
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"oldv7"},
		y_min = 2,
		y_max = 20,
		schematic = minetest.get_modpath("es").."/schematics/bunker.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})


end

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
	es.register_mgv6_decorations()
else
	es.register_biomes()
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
