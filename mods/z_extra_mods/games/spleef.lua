-- SPLEEF GAME

local spleef_size = 15;
minetest.register_node("games:spleef", {
description = "spleef game",
	tiles = {"default_copper_block.png"},
	groups = {oddly_breakable_by_hand=1},
	is_ground_content = false,
	paramtype = "light",
	light_source = 10,
	sounds = default.node_sound_wood_defaults(),
	on_punch = function(pos, node, player)
		local name = player:get_player_name(); if name==nil then return end
		for i = 1, spleef_size do -- init game area
			for j = 1, spleef_size do
				minetest.set_node({x=pos.x+i+1,y=pos.y,z=pos.z+j+1},{name = "games:spleefblock"})
			end
		end
	end
}
)

minetest.register_node("games:spleefblock", {
description = "spleef game block",
	tiles = {"default_copper_block.png"},
	groups = {dig_immediate=3},
	is_ground_content = false,
	paramtype = "light",
	light_source = 10,
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		local inv = placer:get_inventory();
		inv:remove_item("main", ItemStack("games:spleefblock 90"))
		minetest.set_node(pos,{name = "air"})
		itemstack:clear();
	end
	}
)