--esm_map
--sorcerykid made simple spawn map of esm
--20160725
--LGPLv2.1 


--minetest.register_alias("esm_map:map_spawn", "esm_map:map_spawn")
minetest.register_alias("esm_map:map_spawn_201711", "esm_map:map_history")
 
local esm_map = {}

mapnumber = 10

-- register es_map nodes

for i = 1, mapnumber do
	local x = i + 1
	local y = i - 1
	if x > mapnumber then x = 1 end
	if y < 1 then y = mapnumber end

	--Archive
	minetest.register_node("esm_map:map_history", {
		description = "-=Collection of Maps 2014-2020=-  Right-click to cycle through.",
		drawtype = "signlike",	
		tiles = {"map_history.png"},
		inventory_image =  "map_history.png",
		wield_image = "map_history.png",
			paramtype = "light",
			paramtype2 = "wallmounted",
			sunlight_propagates = true,
			walkable = false,
			selection_box = {
				type = "wallmounted",
			},
			groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3},
			sounds = default.node_sound_leaves_defaults(),
		drop = "esm_map:map_history",
			on_rightclick = function(pos, node, clicker)
				node.name = "esm_map:map_8"--..x
				minetest.set_node(pos, node)
					minetest.sound_play("item_drop_pickup", {pos = pos})
			end,
			on_punch = function(pos, node, puncher)
				node.name = "esm_map:map_1"--..y
				minetest.set_node(pos, node)
					minetest.sound_play("item_drop_pickup", {pos = pos})
			end,
	})


	minetest.register_node("esm_map:map_1", {
		description = "-=Map of Just Test Spawn March 2014=-  Created by maikerumine",
		drawtype = "signlike",	
		tiles = {"map_1.png"},
		inventory_image =  "map_1.png",
		wield_image = "map_1.png",
			paramtype = "light",
			paramtype2 = "wallmounted",
			sunlight_propagates = true,
			walkable = false,
			selection_box = {
				type = "wallmounted",
			},
			groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3, not_in_creative_inventory = 1},
			sounds = default.node_sound_leaves_defaults(),
		drop = "esm_map:map_history",
			on_rightclick = function(pos, node, clicker)
				node.name = "esm_map:map_history"--..x
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
			on_punch = function(pos, node, puncher)
				node.name = "esm_map:map_2"--..y
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
	})

	minetest.register_node("esm_map:map_2", {
		description = "-=Map of ESM 1 Spawn August 2015=-  Created by maikerumine",
		drawtype = "signlike",	
		tiles = {"map_2.png"},
		inventory_image =  "map_2.png",
		wield_image = "map_2.png",
			paramtype = "light",
			paramtype2 = "wallmounted",
			sunlight_propagates = true,
			walkable = false,
			selection_box = {
				type = "wallmounted",
			},
			groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3, not_in_creative_inventory = 1},
			sounds = default.node_sound_leaves_defaults(),
		drop = "esm_map:map_history",
			on_rightclick = function(pos, node, clicker)
				node.name = "esm_map:map_1"--..x
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
			on_punch = function(pos, node, puncher)
				node.name = "esm_map:map_3"--..y
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
	})

	minetest.register_node("esm_map:map_3", {
		description = "-=Map of ESM Spawn September 2015=-  Created by maikerumine",
		drawtype = "signlike",	
		tiles = {"map_3.png"},
		inventory_image =  "map_3.png",
		wield_image = "map_3.png",
			paramtype = "light",
			paramtype2 = "wallmounted",
			sunlight_propagates = true,
			walkable = false,
			selection_box = {
				type = "wallmounted",
			},
			groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3, not_in_creative_inventory = 1},
			sounds = default.node_sound_leaves_defaults(),
		drop = "esm_map:map_history",
			on_rightclick = function(pos, node, clicker)
				node.name = "esm_map:map_2"--..x
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
			on_punch = function(pos, node, puncher)
				node.name = "esm_map:map_4"--..y
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
	})

	minetest.register_node("esm_map:map_4", {
		description = "-=Map of Just Test Spawn Feb 2016=-  Created by maikerumine",
		drawtype = "signlike",	
		tiles = {"map_4.png"},
		inventory_image =  "map_4.png",
		wield_image = "map_4.png",
			paramtype = "light",
			paramtype2 = "wallmounted",
			sunlight_propagates = true,
			walkable = false,
			selection_box = {
				type = "wallmounted",
			},
			groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3, not_in_creative_inventory = 1},
			sounds = default.node_sound_leaves_defaults(),
		drop = "esm_map:map_history",
			on_rightclick = function(pos, node, clicker)
				node.name = "esm_map:map_3"--..x
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
			on_punch = function(pos, node, puncher)
				node.name = "esm_map:map_5"--..y
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
	})

	minetest.register_node("esm_map:map_5", {
		description = "-=Map of ESM Spawn July 2017=-  Created by maikerumine",
		drawtype = "signlike",	
		tiles = {"map_5.png"},
		inventory_image =  "map_5.png",
		wield_image = "map_5.png",
			paramtype = "light",
			paramtype2 = "wallmounted",
			sunlight_propagates = true,
			walkable = false,
			selection_box = {
				type = "wallmounted",
			},
			groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3, not_in_creative_inventory = 1},
			sounds = default.node_sound_leaves_defaults(),
		drop = "esm_map:map_history",
			on_rightclick = function(pos, node, clicker)
				node.name = "esm_map:map_4"--..x
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
			on_punch = function(pos, node, puncher)
				node.name = "esm_map:map_6"--..y
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
	})

	minetest.register_node("esm_map:map_6", {
		description = "-=Map of ESM Spawn January 2017=-  Created by maikerumine",
		drawtype = "signlike",	
		tiles = {"map_6.png"},
		inventory_image =  "map_6.png",
		wield_image = "map_6.png",
			paramtype = "light",
			paramtype2 = "wallmounted",
			sunlight_propagates = true,
			walkable = false,
			selection_box = {
				type = "wallmounted",
			},
			groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3, not_in_creative_inventory = 1},
			sounds = default.node_sound_leaves_defaults(),
		drop = "esm_map:map_history",
			on_rightclick = function(pos, node, clicker)
				node.name = "esm_map:map_5"--..x
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
			on_punch = function(pos, node, puncher)
				node.name = "esm_map:map_7"--..y
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
	})

	minetest.register_node("esm_map:map_7", {
		description = "-=Map of JT2 Spawn January 2020=-  Created by maikerumine",
		drawtype = "signlike",	
		tiles = {"map_7.png"},
		inventory_image =  "map_7.png",
		wield_image = "map_7.png",
			paramtype = "light",
			paramtype2 = "wallmounted",
			sunlight_propagates = true,
			walkable = false,
			selection_box = {
				type = "wallmounted",
			},
			groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3, not_in_creative_inventory = 1},
			sounds = default.node_sound_leaves_defaults(),
		drop = "esm_map:map_history",
			on_rightclick = function(pos, node, clicker)
				node.name = "esm_map:map_6"--..x
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
			on_punch = function(pos, node, puncher)
				node.name = "esm_map:map_8"--..y
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
	})

	minetest.register_node("esm_map:map_8", {
		description = "-=Map of ESM Spawn December 2020=-  Created by maikerumine",
		drawtype = "signlike",	
		tiles = {"map_8.png"},
		inventory_image =  "map_8.png",
		wield_image = "map_8.png",
			paramtype = "light",
			paramtype2 = "wallmounted",
			sunlight_propagates = true,
			walkable = false,
			selection_box = {
				type = "wallmounted",
			},
			groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3, not_in_creative_inventory = 1},
			sounds = default.node_sound_leaves_defaults(),
		drop = "esm_map:map_history",
			on_rightclick = function(pos, node, clicker)
				node.name = "esm_map:map_7"--..x
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
			on_punch = function(pos, node, puncher)
				node.name = "esm_map:map_9"--..y
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
	})

	minetest.register_node("esm_map:map_9", {
		description = "-=Current Map of ESM Spawn=-  Created by maikerumine",
		drawtype = "signlike",	
		tiles = {"map.png"},
		inventory_image =  "map.png",
		wield_image = "map.png",
			paramtype = "light",
			paramtype2 = "wallmounted",
			sunlight_propagates = true,
			walkable = false,
			selection_box = {
				type = "wallmounted",
			},
			groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3, not_in_creative_inventory = 1},
			sounds = default.node_sound_leaves_defaults(),
		drop = "esm_map:map_history",
			on_rightclick = function(pos, node, clicker)
				node.name = "esm_map:map_8"--..x
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
			on_punch = function(pos, node, puncher)
				node.name = "esm_map:map_history"--..y
				minetest.set_node(pos, node)
					minetest.sound_play("hitem_drop_pickup", {pos = pos})
			end,
	})

end

minetest.register_node("esm_map:map_spawn", {
	description = "-=Map of ESM Spawn=-",
	--drawtype = "nodebox",
	drawtype = "signlike",
	tiles = {"map.png"},
	inventory_image =  "map.png",
	wield_image = "map.png",
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		walkable = false,
		selection_box = {
			type = "wallmounted",
		},
		groups = {snappy=2, oddly_breakable_by_hand=2, flammable=3},
		sounds = default.node_sound_leaves_defaults(),
})


minetest.register_craft({
	output = "esm_map:map_spawn",
	recipe = {
			{"wool:white", "wool:white", "wool:white"},
			{"wool:white",  "default:diamond", "wool:white"},
			{ "", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "esm_map:map_history",
	recipe = {
			{"wool:white", "wool:white", "wool:white"},
			{"wool:white",  "default:goldblock", "wool:white"},
			{ "", "group:stick", ""},
	}
})

minetest.log("action", "ES: [ES MAP] loaded.")
