minetest.register_node("pathv6alt:junglewood", {
	description = "Mod jungle wood",
	tiles = {"default_junglewood.png"},
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:path", {
	description = "Dirt path",
	tiles = {"pathv6alt_path.png"},
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("pathv6alt:bridgewood", {
	description = "Bridge wood",
	tiles = {"pathv6alt_bridgewood.png"},
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:stairn", { -- stair rising to the north
	description = "Jungle wood stair N",
	tiles = {"default_junglewood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:stairs", {
	description = "Jungle wood stair S",
	tiles = {"default_junglewood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, -0.5, 0.5, 0.5, 0},
		},
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:staire", {
	description = "Jungle wood stair E",
	tiles = {"default_junglewood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{0, 0, -0.5, 0.5, 0.5, 0.5},
		},
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:stairw", {
	description = "Jungle wood stair W",
	tiles = {"default_junglewood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, -0.5, 0, 0.5, 0.5},
		},
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:stairne", {
	description = "Jungle wood stair NE",
	tiles = {"default_junglewood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{0, 0, 0, 0.5, 0.5, 0.5},
		},
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:stairnw", {
	description = "Jungle wood stair NW",
	tiles = {"default_junglewood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0, 0.5, 0.5},
		},
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:stairse", {
	description = "Jungle wood stair SE",
	tiles = {"default_junglewood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{0, 0, -0.5, 0.5, 0.5, 0},
		},
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:stairsw", {
	description = "Jungle wood stair SW",
	tiles = {"default_junglewood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, -0.5, 0, 0.5, 0},
		},
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:pstairn", {
	description = "Dirt stair N",
	tiles = {"pathv6alt_path.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	drop = "default:dirt",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
	},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("pathv6alt:pstairs", {
	description = "Dirt stair S",
	tiles = {"pathv6alt_path.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	drop = "default:dirt",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, -0.5, 0.5, 0.5, 0},
		},
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("pathv6alt:pstaire", {
	description = "Dirt stair E",
	tiles = {"pathv6alt_path.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	drop = "default:dirt",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{0, 0, -0.5, 0.5, 0.5, 0.5},
		},
	},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("pathv6alt:pstairw", {
	description = "Dirt stair W",
	tiles = {"pathv6alt_path.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	drop = "default:dirt",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, -0.5, 0, 0.5, 0.5},
		},
	},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("pathv6alt:pstairne", {
	description = "Dirt stair NE",
	tiles = {"pathv6alt_path.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	drop = "default:dirt",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{0, 0, 0, 0.5, 0.5, 0.5},
		},
	},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("pathv6alt:pstairnw", {
	description = "Dirt stair NW",
	tiles = {"pathv6alt_path.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	drop = "default:dirt",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0, 0.5, 0.5},
		},
	},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("pathv6alt:pstairse", {
	description = "Dirt stair SE",
	tiles = {"pathv6alt_path.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	drop = "default:dirt",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{0, 0, -0.5, 0.5, 0.5, 0},
		},
	},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("pathv6alt:pstairsw", {
	description = "Dirt stair SW",
	tiles = {"pathv6alt_path.png"},
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {immortal=1,not_in_creative_inventory=1},
	drop = "default:dirt",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, -0.5, 0, 0.5, 0},
		},
	},
	sounds = default.node_sound_dirt_defaults(),
})

