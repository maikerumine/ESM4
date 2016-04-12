-- melt snow cover and ice around light sources
minetest.register_abm({
	nodenames = {"default:snow", "default:ice"},
	interval = 3,
	chance = 10,
	action = function(pos, node, active_object_count, active_object_count_wider)
			if minetest.get_node_light(pos, 0) >= 5 then
				if node.name == "default:snow" then
					minetest.remove_node(pos)
					if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "default:dirt_with_snow" then
						minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z}, {name="default:dirt_with_grass"})
					end
				elseif node.name == "default:ice" then
					minetest.set_node(pos, {name="default:water_source"})
				end
			end
	end,
})
