local sbox =  {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0}
		}
	}
local cbox =  {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
		}
	}

--Portals
minetest.register_alias("pacmine:portalr", "pacmine:portalr")
minetest.register_node("pacmine:portalr", {
	description = "Portalr ",
	drawtype = "glasslike",
	tiles = {"pacmine_portal.png"},
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 14,
	alpha = 150,
	paramtype2 = "facedir",
	walkable = false,
	is_ground_content = false,
	groups = {snappy = 2, cracky = 2, dig_immediate = 3,not_in_creative_inventory=1},
	selection_box = sbox,

})
minetest.register_alias("pacmine:portall", "pacmine:portall")
minetest.register_node("pacmine:portall", {
	description = "Portall ",
	drawtype = "glasslike",
	tiles = {"pacmine_portal.png"},
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 14,
	alpha = 150,
	paramtype2 = "facedir",
	walkable = false,
	is_ground_content = false,
	groups = {snappy = 2, cracky = 2, dig_immediate = 3,not_in_creative_inventory=1},
	selection_box = sbox,

})

minetest.register_abm({
	nodenames = {"pacmine:portall"},
	interval = 0.5,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local objs = minetest.env:get_objects_inside_radius(pos, 1)
		for k, player in pairs(objs) do
			if player:get_player_name() then

				player:setpos({x=pos.x-23,y=pos.y+0.5,z=pos.z})
			end
		end
	end
})
minetest.register_abm({
	nodenames = {"pacmine:portalr"},
	interval = 0.5,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local objs = minetest.env:get_objects_inside_radius(pos, 1)
		for k, player in pairs(objs) do
			if player:get_player_name() then

				player:setpos({x=pos.x+23,y=pos.y+0.5,z=pos.z})
			end
		end
	end
})
