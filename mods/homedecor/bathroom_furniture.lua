local S = homedecor.gettext



homedecor.register("medicine_cabinet", {
	description = S("Medicine Cabinet"),
	mesh = "homedecor_medicine_cabinet.obj",
	tiles = {
		'default_wood.png',
		'homedecor_medicine_cabinet_mirror.png'
	},
	inventory_image = "homedecor_medicine_cabinet_inv.png",
	selection_box = {
		type = "fixed",
		fixed = {-0.3125, -0.1875, 0.3125, 0.3125, 0.5, 0.5}
	},
	walkable = false,
	groups = { snappy = 3 },
	sounds = default.node_sound_wood_defaults(),
	on_punch = function(pos, node, puncher, pointed_thing)
		node.name = "homedecor:medicine_cabinet_open"
		minetest.swap_node(pos, node)
	end,
	infotext=S("Medicine cabinet"),
	inventory = {
		size=6,
	},
})

homedecor.register("medicine_cabinet_open", {
	mesh = "homedecor_medicine_cabinet_open.obj",
	tiles = {
		'default_wood.png',
		'homedecor_medicine_cabinet_mirror.png',
		'homedecor_medicine_cabinet_inside.png'
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.3125, -0.1875, -0.25, 0.3125, 0.5, 0.5}
	},
	walkable = false,
	groups = { snappy = 3, not_in_creative_inventory=1 },
	drop = "homedecor:medicine_cabinet",
	on_punch = function(pos, node, puncher, pointed_thing)
		node.name = "homedecor:medicine_cabinet"
		minetest.swap_node(pos, node)
	end,
})

