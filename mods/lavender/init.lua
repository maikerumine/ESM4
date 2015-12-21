-- lavender mod by Xanthin
-- June/02/2015

dofile(minetest.get_modpath("lavender").."/mapgen.lua")

minetest.register_node("lavender:lavender", {
	description = "Lavender",
	drawtype = "plantlike",
	visual_scale = 1.3,
	waving = 1,
	tiles = {"lavender_fruitleaves.png"},
	inventory_image = "lavender_fruitleaves.png",
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,flammable=2,attached_node=1},
	drop = {
		max_items = 1,
		items = {
			{items = {"lavender:lavender_fruit 2"},rarity=1},
			{items = {"lavender:lavender_fruit 4"},rarity=20},
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("lavender:lavender_fruit", {
	description = "Lavender Fruit",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"lavender_fruit.png"},
	inventory_image = "lavender_fruit.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {snappy=3,flammable=2,flower=1,attached_node=1,color_violet=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = function(itemstack, user, pointed_thing)
		if itemstack:take_item() ~= nil and user ~= nil then -- this and below as seen in Hunger mod
		local name = user:get_player_name()
		local hp = user:get_hp()
		if hp < 20 then
			hp = hp + 1
			if hp > 20 then
				hp = 20
			end
			user:set_hp(hp)
		end
		local sound = "lavender_mipiace"
		minetest.sound_play(sound, {to_player = name, gain = 0.7})
	end
	return itemstack
end
})

minetest.register_abm({									-- modified from flowers mod
	nodenames = {"lavender:lavender_fruit"},
	neighbors = {"default:sand", "default:desert_sand"},
	interval = 10,
	chance = 30,
	action = function(pos, node)
		pos.y = pos.y - 1
		local under = minetest.get_node(pos)
		pos.y = pos.y + 1
		local light = minetest.get_node_light(pos)
		if not light or light < 13 then
			return
		end
		if under.name == "default:desert_sand" then
			minetest.set_node(pos, {name="default:dry_shrub"})
		elseif under.name == "default:sand" then
			minetest.set_node(pos, {name="lavender:lavender"})
			return
		end
	end
})
