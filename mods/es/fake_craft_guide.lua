
    --modified for ESM game by: maikerumine
--[[

Craft Guide for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-craft_guide
License: BSD-3-Clause https://raw.github.com/cornernote/minetest-craft_guide/master/LICENSE

]]--

minetest.register_alias("craft_guide:sign_wall", "es:fake_craft_guide_sign_wall")
minetest.register_alias("craft_guide:lcd_pc", "es:fake_craft_guide_lcd_pc")




-- craft sign
minetest.register_node("es:fake_craft_guide_sign_wall", {
	description = "Fake Craft Sign",
	drawtype = "signlike",
	tiles = {"craft_guide_sign.png"},
	inventory_image = "craft_guide_sign.png",
	paramtype = 'light',
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	groups = {choppy=2,dig_immediate=2},
	--sounds = default.node_sound_defaults(),
	selection_box = {
		type = "wallmounted",
	},
	--on_construct = es.on_construct,
	--on_receive_fields = es.on_receive_fields,
	--allow_metadata_inventory_move = es.allow_metadata_inventory_move,
	--allow_metadata_inventory_put = es.allow_metadata_inventory_put,
	--allow_metadata_inventory_take = es.allow_metadata_inventory_take,
})

minetest.register_node("es:fake_craft_guide_lcd_pc", {
	description = "Fake Craft PC",
	infotext = "Bell CrossOver",
	tiles = {
		"laptop_opti_pc_top.png^laptop_opti_kb_top.png^laptop_opti_ms_top.png^laptop_opti_lcb_top.png^laptop_opti_lcp_top.png^laptop_opti_lcd_top.png",
		"laptop_opti_pc_bottom.png^laptop_opti_kb_bottom.png^laptop_opti_ms_bottom.png^laptop_opti_lcd_bottom.png",
		"laptop_opti_pc_right.png^laptop_opti_kb_right.png^laptop_opti_ms_right.png^laptop_opti_lcb_right.png^laptop_opti_lcp_right.png^laptop_opti_lcd_right.png",
		"laptop_opti_pc_left.png^laptop_opti_kb_left.png^laptop_opti_ms_left.png^laptop_opti_lcb_left.png^laptop_opti_lcp_left.png^laptop_opti_lcd_left.png",
		"laptop_opti_pc_back.png^laptop_opti_kb_back.png^laptop_opti_ms_back.png^laptop_opti_lcb_back.png^laptop_opti_lcp_back.png^laptop_opti_lcd_back.png",
		"laptop_opti_pc_on_front.png^laptop_opti_kb_front.png^laptop_opti_ms_front.png^laptop_opti_lcb_front.png^laptop_opti_lcp_front.png^laptop_opti_lcd_on_front.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.0625, 0.375, -0.3125, 0.4375}, -- tower
			{-0.4375, -0.5, -0.4375, 0.25, -0.4375, -0.1875}, -- keboard
			{0.3125, -0.5, -0.375, 0.4375, -0.4375, -0.1875}, -- mouse
			{-0.25, -0.3125, 0.0625, 0.25, -0.25, 0.3125}, -- lcd_base
			{-0.0625, -0.25, 0.1875, 0.0625, 0.0625, 0.25}, -- lcd_pedestal
			{-0.4375, -0.125, 0.125, 0.4375, 0.4375, 0.1875}, -- lcd_main
		}
	},
	groups = {choppy=2,dig_immediate=2},
	--on_construct = es.on_construct,
	--on_receive_fields = es.on_receive_fields,
	--allow_metadata_inventory_move = es.allow_metadata_inventory_move,
	--allow_metadata_inventory_put = es.allow_metadata_inventory_put,
	--allow_metadata_inventory_take = es.allow_metadata_inventory_take,

})


--REGISTER CRAFTS
-- craft sign
minetest.register_craft({
	output = 'es:fake_craft_guide_sign_wall',
	recipe = {
		{'default:stick', 'default:stick'},
		{'default:stick', 'default:stick'},
		{'default:stick', ''},
	}
})


-- craft pc
minetest.register_craft({
	output = 'es:fake_craft_guide_lcd_pc',
	recipe = {
		{'es:fake_craft_guide_sign_wall'},
		{'default:glass'},
		{'stairs:slab_stone'},
	}
})

