local S = homedecor.gettext


local curtaincolors = {
	{ "red",    "#ad2323e0:175" },
	{ "green",  "#27a927e0:175" },
	{ "blue",   "#2626c6e0:175" },
	{ "white",  "#ffffffe0:175" },
	{ "pink",   "#ff8fb7e0:175" },
	{ "violet", "#7f29d7e0:175" },
}

for c in ipairs(curtaincolors) do
	local color = curtaincolors[c][1]
	local hue = curtaincolors[c][2]
	local color_d = S(curtaincolors[c][1])

	homedecor.register("curtain_"..color, {
		description = S("Curtains (%s)"):format(color_d),
		tiles = { "homedecor_curtain.png^[colorize:"..hue },
		inventory_image = "homedecor_curtain.png^[colorize:"..hue,
		wield_image = "homedecor_curtain.png^[colorize:"..hue,
		drawtype = 'signlike',
		use_texture_alpha = true,
		walkable = false,
		groups = { snappy = 3 },
		sounds = default.node_sound_leaves_defaults(),
		paramtype2 = 'wallmounted',
		selection_box = { type = "wallmounted" },
	-- Open the curtains
		on_rightclick = function(pos, node, clicker, itemstack)
			local topnode = minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z})
			if string.find(topnode.name, "homedecor:curtainrod") then
				local fdir = node.param2
				minetest.set_node(pos, { name = "homedecor:curtain_open_"..color, param2 = fdir })
			end
		end
	})

	homedecor.register("curtain_open_"..color, {
		description = S("Curtains (%s)"):format(color_d),
		tiles = { "homedecor_curtain_open.png^[colorize:"..hue },
		inventory_image = "homedecor_curtain_open.png^[colorize:"..hue,
		wield_image = "homedecor_curtain_open.png^[colorize:"..hue,
		drawtype = 'signlike',
		use_texture_alpha = true,
		walkable = false,
		groups = { snappy = 3 },
		sounds = default.node_sound_leaves_defaults(),
		paramtype2 = 'wallmounted',
		selection_box = { type = "wallmounted" },
	-- Close the curtains
		on_rightclick = function(pos, node, clicker, itemstack)
			local topnode = minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z})
			if string.find(topnode.name, "homedecor:curtainrod") then
				local fdir = node.param2
				minetest.set_node(pos, { name = "homedecor:curtain_"..color, param2 = fdir })
			end
		end
	})

end

local mats = {
	--{ "brass", "Brass", "homedecor_generic_metal_brass.png" },
	--{ "wrought_iron", "Wrought iron", "homedecor_generic_metal_wrought_iron.png" },
	{ "wood", "Wooden", "default_wood.png" }
}

for i in ipairs(mats) do
	local material = mats[i][1]
	local mat_name = mats[i][2]
	local texture = mats[i][3]
	homedecor.register("curtainrod_"..material, {
		tiles = { texture },
		inventory_image  = "homedecor_curtainrod_"..material.."_inv.png",
		description = "Curtain Rod ("..mat_name..")",
		groups = { snappy = 3 },
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.375, 0.5, -0.4375, 0.4375},
				{-0.4375, -0.5, 0.4375, -0.375, -0.4375, 0.5},
				{0.375, -0.5, 0.4375, 0.4375, -0.4375, 0.5}
			}
		}
	})
end

