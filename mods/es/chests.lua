
--ESM VAULT
--Code from default chests and protector redo
-- Protected Chest formspec buttons (not working yet)

local function get_locked_chest_formspec(pos)
	local spos = pos.x .. "," .. pos.y .. "," .. pos.z
	local formspec =
		"size[16,10]" ..
		default.gui_bg ..
		default.gui_bg_img ..
		default.gui_slots ..
		"label[0.25,-0.1;EXTREME LOCKED CHEST: ]"..
		"list[nodemeta:" .. spos .. ";main;0,0.3;16,5;]" ..
		"list[current_player;main;4,5.85;8,1;]" ..
		"list[current_player;main;4,7.08;8,3;8]" ..
		"listring[nodemeta:" .. spos .. ";main]" ..
		"listring[current_player;main]" ..
--		"button[0,7.5;2,0.25;toup;To Chest]"..
--		"button[0,8.5;2,0.25;todn;To Inventory]"..
		default.get_hotbar_bg(4,5.85)
 return formspec
end

local function has_locked_chest_privilege(meta, player)
	local name = ""
	if player then
		if minetest.check_player_privs(player, "protection_bypass") then
			return true
		end
		name = player:get_player_name()
	end
	if name ~= meta:get_string("owner") then
		return false
	end
	return true
end

--node def
minetest.register_node("es:vault", {
	description = "Use this to store MANY items.",
	tiles = { 
	"es_vault.png",
	"es_vault.png",
	"es_vault.png",
	"es_vault.png",
	"es_vault.png",
	--"vault.png^nyancat_front.png"
	"default_nc_front.png"
	},
	--inventory_image = "vault.png",
	light_source = 14,
	paramtype2 = "facedir",
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 1, level = 2},
	legacy_facedir_simple = true,
	is_ground_content = false,

	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Super ESM Locked Chest (owned by " ..
				meta:get_string("owner") .. ")")
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Super ESM Locked Chest")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 16 * 5)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main") and has_locked_chest_privilege(meta, player)
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return count
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,
	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,

	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves " .. stack:get_name() ..
			" to super ESM locked chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes " .. stack:get_name()  ..
			" from super ESM locked chest at " .. minetest.pos_to_string(pos))
	end,

	on_rightclick = function(pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if has_locked_chest_privilege(meta, clicker) then
			minetest.show_formspec(
				clicker:get_player_name(),
				"es:vault",
				get_locked_chest_formspec(pos)
			)
			else
			clicker:set_hp( 1)
		end
	end,
	on_blast = function() end,
})

--stealth
--[[
function default.chest.get_chest_formspec(pos)
	local spos = pos.x .. "," .. pos.y .. "," .. pos.z
	local formspec =
		"size[8,9]" ..
		"list[nodemeta:" .. spos .. ";main;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[nodemeta:" .. spos .. ";main]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
	return formspec
end
]]
local function get_stealth_locked_chest_formspec(pos)
	local spos = pos.x .. "," .. pos.y .. "," .. pos.z
	local formspec =
		"size[8,9]" ..
		default.gui_bg ..
		default.gui_bg_img ..
		default.gui_slots ..
		"label[0.25,-0.1;STEALTH LOCKED CHEST: ]"..
		"list[nodemeta:" .. spos .. ";main;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[nodemeta:" .. spos .. ";main]" ..
		"listring[current_player;main]" ..
--		"button[0,7.5;2,0.25;toup;To Chest]"..
--		"button[0,8.5;2,0.25;todn;To Inventory]"..
		default.get_hotbar_bg(0,4.85)
 return formspec
end
minetest.register_node("es:stealth_locked_chest", {
	description = "Use this to hide items.",
	tiles = { 
	"default_cobble.png",
	"default_cobble.png",
	"default_cobble.png",
	"default_cobble.png",
	"default_cobble.png",
	--"vault.png^nyancat_front.png"
	"es_stealth_chest_lock.png"
	},
	--inventory_image = "stealth_chest_lock.png",
	light_source = 0,
	paramtype2 = "facedir",
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 1, level = 2},
	legacy_facedir_simple = true,
	is_ground_content = false,

	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Stealth Locked Chest (owned by " ..
				meta:get_string("owner") .. ")")
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Stealth ESM Locked Chest")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 8 * 4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main") and has_locked_chest_privilege(meta, player)
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return count
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,
	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,

	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves " .. stack:get_name() ..
			" to Stealth locked chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes " .. stack:get_name()  ..
			" from Stealth locked chest at " .. minetest.pos_to_string(pos))
	end,

	on_rightclick = function(pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if has_locked_chest_privilege(meta, clicker) then
			minetest.show_formspec(
				clicker:get_player_name(),
				"es:stealth_locked_chest",
				get_stealth_locked_chest_formspec(pos)
			)
			else
			--clicker:set_hp( 1)
		end
	end,
	on_blast = function() end,
})
