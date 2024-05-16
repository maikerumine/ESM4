local S = minetest.get_translator("hades_fences")

hades_fences = {}
function hades_fences.register_fence(name, def)
	if def.material then
		minetest.register_craft({
			output = name .. " 4",
			recipe = {
				{ def.material, 'group:stick', def.material },
				{ def.material, 'group:stick', def.material },
			}
		})
	end

	local fence_texture = "default_fence_overlay.png^" .. def.texture ..
			"^default_fence_overlay.png^[makealpha:255,126,126"
	-- Allow almost everything to be overridden
	local default_fields = {
		paramtype = "light",
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {{-1/8, -1/2, -1/8, 1/8, 1/2, 1/8}},
			connect_front = {{-1/16,3/16,-1/2,1/16,5/16,-1/8},
				{-1/16,-5/16,-1/2,1/16,-3/16,-1/8}},
			connect_left = {{-1/2,3/16,-1/16,-1/8,5/16,1/16},
				{-1/2,-5/16,-1/16,-1/8,-3/16,1/16}},
			connect_back = {{-1/16,3/16,1/8,1/16,5/16,1/2},
				{-1/16,-5/16,1/8,1/16,-3/16,1/2}},
			connect_right = {{1/8,3/16,-1/16,1/2,5/16,1/16},
				{1/8,-5/16,-1/16,1/2,-3/16,1/16}},
		},
		collision_box = {
			type = "connected",
			fixed = {{-1/8, -1/2, -1/8, 1/8, 1/2, 1/8}},
			connect_front = {{-1/8,-1/2,-1/2,1/8,1/2,-1/8}},
			connect_left = {{-1/2,-1/2,-1/8,-1/8,1/2,1/8}},
			connect_back = {{-1/8,-1/2,1/8,1/8,1/2,1/2}},
			connect_right = {{1/8,-1/2,-1/8,1/2,1/2,1/8}},
		},
		connects_to = {"group:fence_wood", "group:wood", "group:tree", "group:bark"},
		inventory_image = fence_texture,
		wield_image = fence_texture,
		tiles = {def.texture},
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {},
		on_rotate = "simple",
	}
	for k, v in pairs(default_fields) do
		if def[k] == nil then
			def[k] = v
		end
	end

	-- Always add to the fence group, even if no group provided
	def.groups.fence = 1
	-- Always connect to fence gates regardless of type
	table.insert(def.connects_to, "group:fence_gate")

	def.texture = nil
	def.material = nil

	minetest.register_node(name, def)
end

local fences = {
	{ "rusty", S("Rusty Fence"), "default_rusty.png", {cracky=3, fence_metal=1}, {"group:fence_metal", "columnia:rusty_block"}, hades_sounds.node_sound_metal_defaults() },
	{ "wood", S("Common Wood Fence"), "default_wood.png" },
--	{ "pale_wood", S("Pale Wood Fence"), "hades_trees_pale_wood.png" },
	{ "birch_wood", S("Birch Wood Fence"), "default_birchwood.png" },
	{ "jungle_wood", S("Jungle Wood Fence"), "default_junglewood.png" },
	{ "wood_black", S("Black Wood Fence"), "hades_trees_colwood_black.png" },
	{ "wood_blue", S("Blue Wood Fence"), "hades_trees_colwood_blue.png" },
	{ "wood_cyan", S("Cyan Wood Fence"), "hades_trees_colwood_cyan.png" },
	{ "wood_magenta", S("Magenta Wood Fence"), "hades_trees_colwood_magenta.png" },
	{ "wood_violet", S("Violet Wood Fence"), "hades_trees_colwood_violet.png" },
	{ "wood_red", S("Red Wood Fence"), "hades_trees_colwood_red.png" },
	{ "wood_pink", S("Pink Wood Fence"), "hades_trees_colwood_pink.png" },
	{ "wood_orange", S("Orange Wood Fence"), "hades_trees_colwood_orange.png" },
	{ "wood_brown", S("Brown Wood Fence"), "hades_trees_colwood_brown.png" },
	{ "wood_yellow", S("Yellow Wood Fence"), "hades_trees_colwood_yellow.png" },
	{ "wood_green", S("Green Wood Fence"), "hades_trees_colwood_green.png" },
	{ "wood_dark_green", S("Dark Green Wood Fence"), "hades_trees_colwood_dark_green.png" },
	{ "wood_white", S("White Wood Fence"), "hades_trees_colwood_white.png" },
	{ "wood_grey", S("Grey Wood Fence"), "hades_trees_colwood_grey.png" },
	{ "wood_dark_grey", S("Dark Grey Wood Fence"), "hades_trees_colwood_dark_grey.png" },
}

for i=1, #fences do
	local groups = {choppy=2, oddly_breakable_by_hand=2, flammable=2, fence_wood=1}
	local sounds = hades_sounds.node_sound_wood_defaults()
	if fences[i][4] then
		groups = fences[i][4]
	end
	local connects_to = fences[i][5]
	if fences[i][6] then
		sounds = fences[i][6]
	end
	hades_fences.register_fence("hades_fences:fence_"..fences[i][1], {
		description = fences[i][2],
		texture = fences[i][3],
		groups = groups,
		sounds = sounds,
		connects_to = connects_to,
	})
end

dofile(minetest.get_modpath("hades_fences").."/crafting.lua")
