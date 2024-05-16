local S = minetest.get_translator("hades_core")

hades_core.register_ladder = function(id, def)
	local odef = {
		description = def.description,
		_doc_items_longdesc = S("A piece of ladder which allows you to climb vertically."),
		drawtype = "signlike",
		is_ground_content = false,
		tiles = { def.texture },
		inventory_image = def.texture,
		wield_image = def.texture,
		paramtype = "light",
		sunlight_propagates = true,
		paramtype2 = "wallmounted",
		walkable = false,
		climbable = true,
		floodable = true,
		node_box = {
			type = "wallmounted",
			wall_side = { -0.5, -0.5, -0.5, -7/16, 0.5, 0.5 },
		},
		selection_box = {
			type = "wallmounted",
			wall_side = { -0.5, -0.5, -0.5, -7/16, 0.5, 0.5 },
		},
		sounds = hades_sounds.node_sound_wood_defaults(),
		node_placement_prediction = "",
		-- Restrict placement of ladders
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				-- no interaction possible with entities
				return itemstack
			end

			local under = pointed_thing.under
			local node = minetest.get_node(under)
			local def = minetest.registered_nodes[node.name]
			if not def then
				return itemstack
			end
			local groups = def.groups

			-- Don't allow to place the ladder at particular nodes
			if groups and (groups.ladder or groups.slab or groups.attached_node) then
				return itemstack
			end

			-- Check special rightclick action of pointed node
			if def and def.on_rightclick then
				if not placer:get_player_control().sneak then
					return def.on_rightclick(under, node, placer, itemstack,
						pointed_thing) or itemstack, false
				end
			end

			local above = pointed_thing.above
			local adef = minetest.registered_nodes[minetest.get_node(above).name]
			if not adef.buildable_to then
				return itemstack
			end

			-- Ladders may not be placed on ceiling or floor
			if under.y ~= above.y then
				return itemstack
			end
			local idef = itemstack:get_definition()
			local itemstack, place_pos = minetest.item_place_node(itemstack, placer, pointed_thing)

			if place_pos ~= nil then
				if idef.sounds and idef.sounds.place then
					minetest.sound_play(idef.sounds.place, {pos=above, gain=1}, true)
				end
			end
			return itemstack
		end,

		on_rotate = function() return false end,
	}

	for k, v in pairs(def) do
		odef[k] = v
	end

	if not odef.groups then
		odef.groups = {}
	end
	odef.groups.ladder = 1
	odef.groups.attached_node = 1


	minetest.register_node(id, odef)
end




hades_core.register_ladder("hades_core:ladder", {
	description = S("Wooden Ladder"),
	texture = "default_ladder.png",
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
	sounds = hades_sounds.node_sound_wood_defaults(),
})

hades_core.register_ladder("hades_core:ladder_bronze", {
	description = S("Bronze Ladder"),
	texture = "default_ladder_bronze.png",
	groups = {cracky=3},
	sounds = hades_sounds.node_sound_metal_defaults(),
})


