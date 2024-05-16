local S = minetest.get_translator("hades_core")
--[[
minetest.register_node("hades_core:dry_shrub", {
	description = S("Dry Shrub"),
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_dry_shrub.png"},
	inventory_image = "default_dry_shrub.png",
	wield_image = "default_dry_shrub.png",
	paramtype = "light",
	waving = 1,
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	floodable = true,
	groups = {snappy=3,flammable=3,attached_node=1},
	sounds = hades_sounds.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6/16, -0.5, -6/16, 6/16, 4/16, 6/16},
	},
})


minetest.register_node("hades_core:grass_1", {
	description = S("Grass"),
	drawtype = "plantlike",
	tiles = {"default_grass_1.png"},
	-- use a bigger inventory image
	inventory_image = "default_grass_3.png",
	wield_image = "default_grass_3.png",
	paramtype = "light",
	waving = 1,
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	floodable = true,
	groups = {snappy=3,flammable=3,flora=1,grass=1,attached_node=1},
	sounds = hades_sounds.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6/16, -0.5, -6/16, 6/16, -5/16, 6/16},
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("hades_core:grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("hades_core:grass_1 "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

for i=2,5 do
	minetest.register_node("hades_core:grass_"..i, {
		description = S("Grass"),
		drawtype = "plantlike",
		tiles = {"default_grass_"..i..".png"},
		inventory_image = "default_grass_"..i..".png",
		wield_image = "default_grass_"..i..".png",
		paramtype = "light",
		waving = 1,
		walkable = false,
		buildable_to = true,
		floodable = true,
		is_ground_content = true,
		drop = "hades_core:grass_1",
		groups = {snappy=3,flammable=3,flora=1,grass=1,attached_node=1,not_in_creative_inventory=1},
		sounds = hades_sounds.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6/16, -0.5, -6/16, 6/16, -3/16, 6/16},
		},
	})
end

minetest.register_node("hades_core:junglegrass", {
	description = S("Jungle Grass"),
	drawtype = "plantlike",
	visual_scale = 1.3,
	tiles = {"default_junglegrass.png"},
	inventory_image = "default_junglegrass.png",
	wield_image = "default_junglegrass.png",
	waving = 1,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	floodable = true,
	is_ground_content = true,
	groups = {snappy=3,flammable=2,flora=1,grass=1,attached_node=1},
	sounds = hades_sounds.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -0.5, -7/16, 7/16, 0.9, 7/16},
	},
})
]]
minetest.register_node("hades_core:snag", {
	description = S("Snag"),
	tiles = {"default_tree.png", "default_tree.png", "default_tree.png"},
                      paramtype = "light",
	-- paramtype2 = "facedir",
	is_ground_content = true,
                     drawtype = "nodebox",
                      node_box = {
		type = "fixed",
		fixed = {
			{-0.03125, -0.5, -0.03125, 0.03125, -0.0625, 0.03125},
			{0.03125, -0.15625, -0.03125, 0.09375, -0.09375, 0.03125},
			{0.0625, -0.1875, -0.03125, 0.125, 0.0625, 0.03125},
			{-0.09375, -0.21875, -0.03125, -0.03125, -0.15625, 0.03125},
			{-0.15625, -0.25, -0.03125, -0.09375, -0.125, 0.03125},
			{-0.03125, -0.34375, 0.03125, 0.03125, -0.28125, 0.09375},
			{-0.03125, -0.46875, -0.09375, 0.03125, -0.40625, -0.03125},
			{-0.03125, -0.375, 0.09375, 0.03125, -0.25, 0.15625},
		}
	},
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2},
                     drop = {
		max_items = 1,
		items = {
			{
				items = {'hades_core:snag'},
				rarity = 5,
			},
			{
				items = {'default:wood'},
			}
		}
	},
	floodable = true,
	sounds = hades_sounds.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})
--[[
minetest.register_node("hades_core:cactus", {
	description = S("Cactus"),
	_tt_help = S("Grows on ash and sand"),
	tiles = {"default_cactus_top.png", "default_cactus_top.png", "default_cactus_side.png"},
	paramtype = "light",
	is_ground_content = true,
	drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5,-0.5,-3/16, 0.5,0.5,3/16},
				{-7/16,-0.5,-5/16, 7/16,0.5,5/16},
				{-6/16,-0.5,-6/16, 6/16,0.5,6/16},
				{-5/16,-0.5,-7/16, 5/16,0.5,7/16},
				{-3/16,-0.5,-0.5, 3/16,0.5,0.5},
			},
		},
	groups = {snappy=1,choppy=3,flammable=2},
	sounds = hades_sounds.node_sound_wood_defaults(),
})
]]

minetest.register_node("hades_core:cactus_block", {
	description = S("Cactus Block"),
	tiles = {"default_cactus_block.png"},
	is_ground_content = false,
	groups = {choppy=3,flammable=2},
	sounds = hades_sounds.node_sound_wood_defaults(),
})

minetest.register_node("hades_core:cactus_brick", {
	description = S("Cactus Brick"),
	tiles = {"default_cactus_brick.png"},
	is_ground_content = false,
	groups = {choppy=3,flammable=2},
	sounds = hades_sounds.node_sound_wood_defaults(),
})

minetest.register_node("hades_core:glowing_cactus_block", {
	description = S("Glowing Cactus Block"),
	tiles = {"default_cactus_block.png"},
	is_ground_content = false,
	light_source = 5,
	groups = {choppy=3,flammable=2},
	sounds = hades_sounds.node_sound_wood_defaults(),
})

-- Dig nodes upwards from
local function dig_up(pos, node, digger)
	if digger == nil then
		return
	end
	local np = {x = pos.x, y = pos.y + 1, z = pos.z}
	local nn = minetest.get_node(np)
	if nn.name == node.name then
		minetest.node_dig(np, nn, digger)
	end
end
--[[
minetest.register_node("hades_core:papyrus", {
	description = S("Papyrus"),
	_tt_help = S("Grows on Dirt with Grass near water"),
	drawtype = "nodebox",
	tiles = {
		"default_papyrus_3d.png",
		"default_papyrus_3d.png",
		"default_papyrus_3d_s1.png",
		"default_papyrus_3d_s1.png",
		"default_papyrus_3d_s2.png",
		"default_papyrus_3d_s2.png",
	},
	inventory_image = "default_papyrus.png",
	wield_image = "default_papyrus.png",
	paramtype = "light",
	is_ground_content = true,
	floodable = true,
	walkable = false,
	selection_box = {
		 type = "fixed",
		 fixed = {-0.4375, -0.5, -0.4375, 0.4375, 0.5, 0.4375}
	},
	node_box = {
		type = "fixed",
		fixed = {
			--papyrus 1
			{-0.03-0.1,-0.5,-0.03-0.1, 0.03-0.1,0.5,0.03-0.1},
			{-0.06-0.1,-0.02-0.1,-0.06-0.1, 0.06-0.1,0.02-0.1,0.06-0.1},
			--papyrus 2
			{-0.03-0.4,-0.5,-0.03-0.3, 0.03-0.4,0.5,0.03-0.3},
			{-0.06-0.4,-0.02-0.2,-0.06-0.3, 0.06-0.4,0.02-0.2,0.06-0.3},
			--papyrus 3
			{-0.03+0.4,-0.5,-0.03-0.3,0.03+0.4,0.5,0.03-0.3},
			{-0.06+0.4,-0.02+0.2,-0.06-0.3, 0.06+0.4,0.02+0.2,0.06-0.3},
			--papyrus 4
			{-0.03-0.4,-0.5,-0.03+0.4, 0.03-0.4,0.5,0.03+0.4},
			{-0.06-0.4,0.02+0.4,-0.06+0.4, 0.06-0.4,0.02+0.4,0.06+0.4},
			--papyrus 5
			{-0.03-0.2,-0.5,-0.03+0.2, 0.03-0.2,0.5,0.03+0.2},
			{-0.06-0.2,0.02-0.4,-0.06+0.2, 0.06-0.2,0.02-0.4,0.06+0.2},
			--papyrus 6
			{-0.03+0.1,-0.5,-0.03+0.2, 0.03+0.1,0.5,0.03+0.2},
			{-0.06+0.1,0.02+0.3,-0.06+0.2, 0.06+0.1,0.02+0.3,0.06+0.2},
		},
	},
	groups = {snappy = 3,flammable = 2},
	sounds = hades_sounds.node_sound_leaves_defaults(),
	
	after_dig_node = function(pos, node, metadata, digger)
		dig_up(pos, node, digger)
	end,
})
]]
minetest.register_node("hades_core:sugarcane", {
	description = S("Sugarcane"),
	_tt_help = S("Grows on Dirt with Grass near water"),
	drawtype = "plantlike",
	tiles = {"default_sugarcane.png"},
	inventory_image = "default_sugarcane.png",
	wield_image = "default_sugarcane.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	floodable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy=3,flammable=2},
	sounds = hades_sounds.node_sound_leaves_defaults(),
	
	after_dig_node = function(pos, node, metadata, digger)
		dig_up(pos, node, digger)
	end,
})

