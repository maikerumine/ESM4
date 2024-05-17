--mod: admin tnt for survival server
--Just Test Mods created by maikerumine
--inspired by Andrey "lag01" the creator of the original Just Test server.
-- Minetest 0.4.14 mod: "jt_mods"
-- namespace: admins_tnt
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2016 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2016) maikerumine; CC-BY-SA 3.0
admins_tnt = {}

minetest.register_alias("jt_mods:admin_tnt", "admins_tnt:tnt")
minetest.register_alias("jt_mods:admin_tnt_fake", "admins_tnt:fake")


minetest.register_node("admins_tnt:fake", {
	description = "Fake Admin TNT",
	tiles = {"admins_tnt_top.png", "admins_tnt_bottom.png", "admins_tnt_bottom.png"},
	groups = {choppy = 2,immortal = 1},
	--drop = 'admins_tnt:fake',
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, puncher)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", puncher:get_player_name() or "")
		meta:set_string("infotext", "Fake TNT (placed by " ..
				meta:get_string("owner") .. ")")
	end,
})

minetest.register_node("admins_tnt:tnt", {
	description = "ADMIN TNT  Changes to tnt after 12 hour timer.",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"admins_tnt_top.png", "admins_tnt_bottom.png", "admins_tnt_side.png"},
	is_ground_content = false,
	groups = {cracky = 0,choppy = 1},
	drop ='admins_tnt:fake',
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "ADMIN TNT (placed by " ..
				meta:get_string("owner") .. ")")
				minetest.sound_play("tnt_ignite", {pos=pos})
				minetest.after(60, function()
				minetest.sound_play("tnt_ignite", {pos=pos})
					
				end)
	end,
	on_punch = function(pos, node, puncher)
		if puncher:get_wielded_item():get_name() == "es:griefer_soul_block" then
			minetest.sound_play("tnt_ignite", {pos=pos})
			--minetest.set_node(pos, {name="tnt:tnt_burning"}) --sets to instant explosion
			minetest.set_node(pos, {name="tnt:tnt"})  --sets to regular tnt for controlled demolition
			--boom(pos, 0)
			tnt.boom(pos, def)
		end
	end,
	on_dig = function(pos, node, puncher)
		if puncher:get_wielded_item():get_name() == "default:axe_mese" then
			minetest.sound_play("tnt_ignite", {pos=pos})
			minetest.set_node(pos, {name="tnt:tnt_burning"})
			--boom(pos, 0)
			tnt.boom(pos, def)
			minetest.after(2, function()
			minetest.sound_play("tnt_ignite", {pos=pos})
				minetest.set_node(pos, {name="admins_tnt:fake"})
			end)
		end	
	end,
})

minetest.register_node("admins_tnt:fast", {
	description = "ADMIN TNT  Changes to tnt after 60 second hour timer",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"admins_tnt_vacuum_bomb_top.png", "admins_tnt_bottom.png", "vaccum_bomb.png"},
	is_ground_content = false,
	groups = {cracky = 0},
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "ADMIN TNT FAST (placed by " ..
				meta:get_string("owner") .. ")")
	end,
	on_punch = function(pos, node, puncher)
		if puncher:get_wielded_item():get_name() == "es:griefer_soul_block" then
			minetest.sound_play("tnt_ignite", {pos=pos})
			minetest.set_node(pos, {name="tnt:tnt_burning"})
			--minetest.set_node(pos, {name="tnt:tnt"})
			--boom(pos, 0)
			tnt.boom(pos, def)
		end
	end,
})

minetest.register_abm({
	nodenames = {"admins_tnt:tnt"},
	interval = 43200,
	--interval = 5,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
	minetest.sound_play("tnt_ignite", {pos=pos})
			if node.name == "admins_tnt:tnt" then
				minetest.set_node(pos, {name="tnt:tnt_burning"})
				--boom(pos, 0)
				tnt.boom(pos, def)
			end
			--end
	end,
})

minetest.register_abm({
	nodenames = {"admins_tnt:fast"},
	interval = 60,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
	minetest.sound_play("tnt_ignite", {pos=pos})
			if node.name == "admins_tnt:fast" then
				--minetest.set_node(pos, {name="tnt:tnt_boom"})
				minetest.set_node(pos, {name="tnt:tnt_burning"})
				--boom(pos, 0)
				tnt.boom(pos, def)
			end
			--end
	end,
})


minetest.register_craft({
	output = "admins_tnt:tnt",
	recipe = {
		{"es:missing", "group:wood", "es:missing"},
		{"group:wood", "default:mese", "group:wood"},
		{"es:missing", "group:wood", "es:missing"}
	}
})

minetest.log("action", "ES: [ADMIN TNT] loaded.")