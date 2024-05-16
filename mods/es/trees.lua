-- es/trees.lua
es = {}

local modpath = minetest.get_modpath("es")


-- Grow sapling
local function grow_new_strange_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		---minetest.get_node_timer(pos):start(math.random(240, 600))
		minetest.get_node_timer(pos):start(math.random(20, 60))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-4, y = pos.y, z = pos.z-4}, modpath.."/schematics/strange_tree.mts", "random", nil, false)
end

local function grow_new_aiden_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		---minetest.get_node_timer(pos):start(math.random(240, 600))
		minetest.get_node_timer(pos):start(math.random(20, 60))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-10, y = pos.y-1, z = pos.z-8}, modpath.."/schematics/aiden_tree.mts", "random", nil, false)
end





--ES plants
minetest.register_node("es:strange_leaves", {
	description = "Strange Tree Leaves",
    drawtype = "allfaces_optional",
	--drawtype = "plantlike",
	tiles = {"es_strange_leaves.png"},
	inventory_image = "es_strange_leaves.png",
	wield_image = "es_strange_leaves.png",
	light_source = default.LIGHT_MAX,
	--light_source = 14,
	paramtype = "light",
	--param2 = "0",
	is_ground_content = false,
	sunlight_propagates = true,
	walkable = false,
	on_use = minetest.item_eat(1),
	--groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'es:strange_tree_sapling'},
                rarity = 45,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'es:strange_leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	--after_place_node = default.after_place_leaves,
	after_place_node = after_place_leaves,	--def
})

minetest.register_node("es:aiden_tree_leaves", {
	description = "Aiden Tree Leaves",
    drawtype = "allfaces_optional",
	--drawtype = "plantlike",
	tiles = {"es_aiden_tree_leaves.png"},
	inventory_image = "es_aiden_tree_leaves.png",
	wield_image = "es_aiden_tree_leaves.png",
	light_source = default.LIGHT_MAX-7,
	--light_source = 14,
	paramtype = "light",
	--param2 = "0",
	is_ground_content = false,
	sunlight_propagates = true,
	walkable = false,
	
	--groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'es:aiden_tree_sapling'},
                rarity = 55,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'es:aiden_tree_leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	--after_place_node = default.after_place_leaves,
	after_place_node = after_place_leaves,	--def
})

minetest.register_node("es:strange_shrub", {
	description = "Strange shrub",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"es_strange_bush.png"},
	inventory_image = "es_strange_bush.png",
	wield_image = "es_strange_bush.png",
	light_source = default.LIGHT_MAX,
	--light_source = 14,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2, leaves = 1, flora = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("es:dry_shrub", {
	description = "ES Dry Shrub  -=Irritating to walk through",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"es_strange_shrub.png"},
	inventory_image = "es_strange_shrub.png",
	wield_image = "es_strange_shrub.png",
	paramtype = "light",
	light_source = 9,
	sunlight_propagates = true,
--	walkable = false,
	walkable =true,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1, flora = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

minetest.register_node("es:junglegrass", {
	description = "ES Jungle Grass  -=It pokes!",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.3,
	tiles = {"es_strange_tall_grass.png"},
	inventory_image = "es_strange_tall_grass.png",
	wield_image = "es_strange_tall_grass.png",
	paramtype = "light",
	light_source = 5,
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	damage_per_second = 1,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

--ES trees
minetest.register_node("es:strange_tree", {
	description = "Strange_tree",
	tiles = {"es_strange_tree_top.png", "es_strange_tree_top.png", "es_strange_tree.png"},
	paramtype2 = "facedir",
	groups = {tree = 1, choppy = 1},
	drop = 'es:strange_tree',
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("es:strange_tree_wood", {
	description = "Strange Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"es_strange_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("es:strange_tree_sapling", {
	description = "Strange Tree Sapling",
	drawtype = "plantlike",
	tiles = {"es_strange_tree_sapling.png"},
	inventory_image = "es_strange_tree_sapling.png",
	wield_image = "es_strange_tree_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_strange_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"es:strange_tree_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -7, y = 1, z = -7},
			{x = 7, y = 7, z = 7},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,

})







minetest.register_node("es:aiden_tree", {
	description = "Aiden Tree",
	tiles = {"es_aiden_tree_top.png", "es_aiden_tree_top.png", "es_aiden_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	drop = 'es:aiden_tree',
	groups = {tree = 1, choppy = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("es:aiden_tree_wood", {
	description = "Aiden Tree Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"es_aiden_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("es:aiden_tree_sapling", {
	description = "Aiden Tree Tree Sapling",
	drawtype = "plantlike",
	tiles = {"es_aiden_tree_sapling.png"},
	inventory_image = "es_aiden_tree_sapling.png",
	wield_image = "es_aiden_tree_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_aiden_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"es:aiden_tree_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -20, y = 1, z = -20},
			{x = 20, y = 30, z = 20},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,

})





minetest.register_node("es:old_tree", {
	description = "Old Tree",
	tiles = {"default_tree_top.png^es_leavedead.png", "default_tree_top.png^es_leavedead.png", "default_tree.png^es_leavedead.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	drop = 'es:old_tree',
	groups = {choppy = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

