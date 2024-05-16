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
-- Register ores
--
function es.register_mgv6_ores()

end

function es.register_ores()
	
end
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
	
	
end

	


minetest.clear_registered_biomes()
minetest.clear_registered_ores()
minetest.clear_registered_decorations()

local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
	es.register_mgv6_ores()
	--es.register_mgv6_decorations()
else
	es.register_biomes()
	es.register_ores()
	--es.register_decorations()
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
