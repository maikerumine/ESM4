-- snow override



minetest.register_abm({ -- dirt with snow
	nodenames = {"default:dirt_with_grass","default:dirt","ethereal:green_dirt"},
	neighbors = {"default:dirt", "default:dirt_with_grass", "default:sand","ethereal:green_dirt"},
	interval = 20,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local p = {x=pos.x, y=pos.y+1, z=pos.z}
		local above = minetest.get_node(p)

		if above.name == "default:dirt_with_snow" then -- depth freezing
			p.y=p.y+1;above = minetest.get_node(p)
			if above.name == "air" then -- only freeze to depth 2
				minetest.set_node(pos, {name="default:dirt_with_snow"})
			end
			return
		end

		if above.name == "air" and minetest.get_node_light(p)<=LIGHT_MAX*0.7 then -- check if above not too bright
			minetest.set_node(pos, {name="default:dirt_with_snow"})
		end
	end,
})


minetest.register_abm({
	nodenames = {"default:dirt_with_snow"},
	neighbors = {""},
	interval = 20,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local p = {x=pos.x, y=pos.y+1, z=pos.z}
		local above = minetest.get_node(p)
		if above.name =="air" and minetest.get_node_light(p)>LIGHT_MAX*0.7 then -- snow melts -- minetest.get_node_light(p)>LIGHT_MAX-7
			minetest.set_node(pos, {name="default:snowblock"})
		end
	end,
})



--Snowblock







minetest.register_abm({
	nodenames = {"default:snowblock"},
	neighbors = {""},
	interval = 50,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		local name = minetest.get_node(pos).name
		if name == "default:dirt_with_snow" or name == "default:dirt_with_grass" or name == "default:snowblock"  then
			pos.y = pos.y+1
			local height = 0
			while minetest.get_node(pos).name == "default:snowblock" and height < 1 do
				height = height+1
				pos.y = pos.y+1
			end
			if height < 1 then
				if minetest.get_node(pos).name == "air" then
					minetest.set_node(pos, {name="default:snowblock"})
				end
			end
		end
	end,
})


