-- Simple fences
--[[
minetest.register_craft({
	output = 'hades_fences:fence_wood 4',
	recipe = {
		{'hades_trees:wood', 'group:stick', 'hades_trees:wood'},
		{'hades_trees:wood', 'group:stick', 'hades_trees:wood'},
	}
})
minetest.register_craft({
	output = 'hades_fences:fence_jungle_wood 4',
	recipe = {
		{'hades_trees:jungle_wood', 'group:stick', 'hades_trees:jungle_wood'},
		{'hades_trees:jungle_wood', 'group:stick', 'hades_trees:jungle_wood'},
	}
})

minetest.register_craft({
	output = 'hades_fences:fence_pale_wood 4',
	recipe = {
		{'hades_trees:pale_wood', 'group:stick', 'hades_trees:pale_wood'},
		{'hades_trees:pale_wood', 'group:stick', 'hades_trees:pale_wood'},
	}
})

minetest.register_craft({
	output = 'hades_fences:fence_birch_wood 4',
	recipe = {
		{'hades_trees:birch_wood', 'group:stick', 'hades_trees:birch_wood'},
		{'hades_trees:birch_wood', 'group:stick', 'hades_trees:birch_wood'},
	}
})
]]
minetest.register_craft({
	output = 'hades_fences:fence_rusty 4',
	recipe = {
		{'default:iron_lump', 'default:iron_lump', 'default:iron_lump'},
		{'default:iron_lump', 'default:iron_lump', 'default:iron_lump'},
	}
})

-- Colored fences

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_black',
	recipe = {'group:fence_wood', 'dye:black'},
})

minetest.register_craft({
	type = "shapeless",
	type = "shapeless",
	output = 'hades_fences:fence_wood_blue',
	recipe = {'group:fence_wood', 'dye:blue'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_brown',
	recipe = {'group:fence_wood', 'dye:brown'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_cyan',
	recipe = {'group:fence_wood', 'dye:cyan'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_dark_green',
	recipe = {'group:fence_wood', 'dye:dark_green'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_dark_grey',
	recipe = {'group:fence_wood', 'dye:dark_grey'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_green',
	recipe = {'group:fence_wood', 'dye:green'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_grey',
	recipe = {'group:fence_wood', 'dye:grey'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_magenta',
	recipe = {'group:fence_wood', 'dye:magenta'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_orange',
	recipe = {'group:fence_wood', 'dye:orange'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_pink',
	recipe = {'group:fence_wood', 'dye:pink'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_red',
	recipe = {'group:fence_wood', 'dye:red'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_violet',
	recipe = {'group:fence_wood', 'dye:violet'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_white',
	recipe = {'group:fence_wood', 'dye:white'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_fences:fence_wood_yellow',
	recipe = {'group:fence_wood', 'dye:yellow'},
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:fence_wood",
	burntime = 15,
})


