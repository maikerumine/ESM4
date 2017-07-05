--esm_map
--sorcerykid made simple spawn map of esm
--20160725
--LGPLv2.1  
local esm_map = {}

minetest.register_node("esm_map:map_spawn", {
	description = "-=Map of ESM Spawn=-  Created by sorcerykid",
		drawtype = "nodebox",
	tiles = {"2sGp19m.png"},
	inventory_image =  {"2sGp19m.png"},
	wield_image = {"2sGp19m.png"},
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		walkable = false,
		node_box = {
			type = "wallmounted",
			wall_top    = {-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			wall_bottom = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			wall_side   = {-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3, flammable = 3 },
		sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "esm_map:map_spawn",
	recipe = {
			{"wool:white", "wool:white", "wool:white"},
			{"wool:white",  "default:diamond", "wool:white"},
			{ "", "group:stick", ""},
	}
})


