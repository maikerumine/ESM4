local S = homedecor.gettext

homedecor.register("ceiling_tile", {
	description = S("Drop-Ceiling Tile"),
	drawtype = 'signlike',
	tiles = { 'homedecor_ceiling_tile.png' },
	wield_image = 'homedecor_ceiling_tile.png',
	inventory_image = 'homedecor_ceiling_tile.png',
	walkable = false,
	groups = { snappy = 3 },
	sounds = default.node_sound_leaves_defaults(),
	selection_box = { type = "wallmounted" },
})


homedecor.register("beer_tap", {
	description = "Beer tap",
	tiles = {
		"homedecor_beertap_front.png",
		"homedecor_beertap_front.png",
		"homedecor_beertap_right.png",
		"homedecor_beertap_right.png^[transformFX",
		"homedecor_beertap_front.png",
		"homedecor_beertap_front.png"
	},
	inventory_image = "homedecor_beertap_inv.png",
	groups = { snappy=3 },
	walkable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.4375, 0.25, -0.48, 0}, -- NodeBox1
			{-0.0625, -0.48, -0.1875, 0.0625, 0.125, -0.0625}, -- NodeBox2
			{-0.1875, 0, -0.375, -0.125, 0.0315, -0.125}, -- NodeBox3
			{-0.1875, 0, -0.1875, 0.1875, 0.0315, -0.125}, -- NodeBox4
			{0.125, 0, -0.375, 0.1875, 0.0315, -0.125}, -- NodeBox5
			{0.135, 0.0315, -0.3225, 0.1775, 0.235, -0.29}, -- NodeBox6
			{-0.1775, 0.0315, -0.3225, -0.135, 0.235, -0.29}, -- NodeBox7
			{-0.1675, -0.0825, -0.355, -0.145, 0, -0.3325}, -- NodeBox8
			{0.145, -0.0825, -0.355, 0.1675, 0, -0.3325}, -- NodeBox9
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.25, -0.5, -0.4375, 0.25, 0.235, 0 }
	},
	on_punch = function(pos, node, puncher, pointed_thing)
		local wielditem = puncher:get_wielded_item()
		local inv = puncher:get_inventory()

		local wieldname = wielditem:get_name()
		if wieldname == "vessels:drinking_glass" then
			if inv:room_for_item("main", "homedecor:beer_mug 1") then
				wielditem:take_item()
				puncher:set_wielded_item(wielditem)
				inv:add_item("main", "homedecor:beer_mug 1")
				minetest.chat_send_player(puncher:get_player_name(), "Ahh, a frosty cold beer - look in your inventory for it!")
			else
				minetest.chat_send_player(puncher:get_player_name(), "No room in your inventory to add a beer mug!")
			end
		end
	end
})

local beer_cbox = {
	type = "fixed",
	fixed = { -5/32, -8/16, -9/32 , 7/32, -2/16, 1/32 }
}

homedecor.register("beer_mug", {
	description = "Beer mug",
	drawtype = "mesh",
	mesh = "homedecor_beer_mug.obj",
	tiles = { "homedecor_beer_mug.png" },
	inventory_image = "homedecor_beer_mug_inv.png",
	groups = { snappy=3, oddly_breakable_by_hand=3 },
	walkable = false,
	sounds = default.node_sound_glass_defaults(),
	selection_box = beer_cbox
})

local pframe_cbox = {
	type = "fixed",
	fixed = { -0.18, -0.5, -0.08, 0.18, -0.08, 0.18 }
}
local n = { 1, 2 }

for _, i in ipairs(n) do
	homedecor.register("picture_frame"..i, {
		description = S("Picture Frame"),
		mesh = "homedecor_picture_frame.obj",
		tiles = {
			"homedecor_picture_frame_image"..i..".png",
			"default_wood.png^[colorize:#000000:50",
			"homedecor_picture_frame_back.png",
		},
		inventory_image = "homedecor_picture_frame"..i.."_inv.png",
		wield_image = "homedecor_picture_frame"..i.."_inv.png",
		groups = {snappy = 3},
		selection_box = pframe_cbox,
		walkable = false,
		sounds = default.node_sound_glass_defaults()
	})
end

for i = 1,20 do
	homedecor.register("painting_"..i, {
		description = "Decorative painting #"..i,
		tiles = {
			"homedecor_painting_edges.png",
			"homedecor_painting_edges.png",
			"homedecor_painting_edges.png",
			"homedecor_painting_edges.png",
			"homedecor_painting_back.png",
			"homedecor_painting"..i..".png"
		},
		node_box = {
			type = "fixed",
			fixed = {
				{ -32/64, -32/64, 28/64, -30/64,  32/64, 32/64 }, -- left edge
				{  30/64, -32/64, 28/64,  32/64,  32/64, 32/64 }, -- right edge
				{ -32/64,  30/64, 28/64,  32/64,  32/64, 32/64 }, -- top edge
				{ -32/64, -30/64, 28/64,  32/64, -32/64, 32/64 }, -- bottom edge
				{ -32/64, -32/64, 29/64,  32/64,  32/64, 29/64 }  -- the canvas
			}
		},
		groups = {snappy=3},
		sounds = default.node_sound_wood_defaults(),
	})
end
