-- Minetest 0.4 mod: bones
-- See README.txt for licensing and other information.

bones = {}
bones.timeout=1200      --lags bones

local function is_owner(pos, name)
	local owner = minetest.get_meta(pos):get_string("owner")
	if owner == "" or owner == name or minetest.check_player_privs(name, "protection_bypass") then
		return true
	end
	return false
end

local bones_formspec =
	"size[8,9]" ..
	default.gui_bg ..
	default.gui_bg_img ..
	default.gui_slots ..
	"list[current_name;main;0,0.3;8,4;]" ..
	"list[current_player;main;0,4.85;8,1;]" ..
	"list[current_player;main;0,6.08;8,3;8]" ..
	"listring[current_name;main]" ..
	"listring[current_player;main]" ..
	default.get_hotbar_bg(0,4.85)

local share_bones_time = tonumber(minetest.settings:get("share_bones_time")) or 1200
local share_bones_time_early = tonumber(minetest.settings:get("share_bones_time_early")) or share_bones_time / 4

minetest.register_node("bones:bones", {
	description = "Bones",
	tiles = {
		"bones_top.png^[transform2",
		"bones_bottom.png",
		"bones_side.png",
		"bones_side.png",
		"bones_rear.png",
		"bones_front.png"
	},
	paramtype2 = "facedir",
	groups = {dig_immediate = 2},
	sounds = default.node_sound_gravel_defaults(),

	can_dig = function(pos, player)
		local inv = minetest.get_meta(pos):get_inventory()
		local name = ""
		if player then
			name = player:get_player_name()
		end
		return is_owner(pos, name) and inv:is_empty("main")
	end,

	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		if is_owner(pos, player:get_player_name()) then
			return count
		end
		return 0
	end,

	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		return 0
	end,

	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		if is_owner(pos, player:get_player_name()) then
			return stack:get_count()
		end
		return 0
	end,

	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if meta:get_inventory():is_empty("main") then
			local inv = player:get_inventory()
			if inv:room_for_item("main", {name = "bones:bones"}) then
				inv:add_item("main", {name = "bones:bones"})
			else
				minetest.add_item(pos, "bones:bones")
			end
			minetest.remove_node(pos)
		end
	end,

	on_punch = function(pos, node, player)
		if not is_owner(pos, player:get_player_name()) then
			return
		end

		if minetest.get_meta(pos):get_string("infotext") == "" then
			return
		end

		local inv = minetest.get_meta(pos):get_inventory()
		local player_inv = player:get_inventory()
		local has_space = true

		for i = 1, inv:get_size("main") do
			local stk = inv:get_stack("main", i)
			if player_inv:room_for_item("main", stk) then
				inv:set_stack("main", i, nil)
				player_inv:add_item("main", stk)
			else
				has_space = false
				break
			end
		end

		-- remove bones if player emptied them
		if has_space then
			if player_inv:room_for_item("main", {name = "bones:bones"}) then
				player_inv:add_item("main", {name = "bones:bones"})
			else
				minetest.add_item(pos,"bones:bones")
			end
			minetest.remove_node(pos)
		end
	end,
--[[
--default
	on_timer = function(pos, elapsed)
		local meta = minetest.get_meta(pos)
		local time = meta:get_int("time") + elapsed
		if time >= share_bones_time then
			meta:set_string("infotext", meta:get_string("owner") .. "'s old bones")
			meta:set_string("owner", "")
		else
			meta:set_int("time", time)
			return true
		end
	end,
	on_blast = function(pos)
	end,
})
--end default
]]


	on_timer = function(pos, elapsed)
		local meta = minetest.get_meta(pos)
		local time = meta:get_int("time")*10 +elapsed
		local timeout = bones.timeout

		if timeout == 0 then
			return
		end
		-- spawn bones expire faster
		if pos.x>-30 and pos.x<30 and pos.y>-30 and pos.y<60 and pos.z>-30 and pos.z<30 then
			timeout=timeout/3
		end
		if time >= timeout then

            --add time of death
            local time = os.date("*t");
            meta:set_string("infotext", meta:get_string("owner")
                .." was killed"
                .." here "
                .. time.year 
                .. "/"
                .. time.month 
                .. "/" 
                .. time.day 
                .. " at " 
                ..time.hour
                .. ":"
                .. time.min 
                .." :-P");
            --add time of death
			--meta:set_string("infotext", meta:get_string("owner") .. "'s old bones")
			meta:set_string("owner", "")
		else
			--meta:set_int("time", time)
            meta:set_int("time", meta:get_int("time") + 1)
			return true
		end
	end,
	on_blast = function(pos)
	end,
})







local function may_replace(pos, player)
	local node_name = minetest.get_node(pos).name
	local node_definition = minetest.registered_nodes[node_name]

	-- if the node is unknown, we return false
	if not node_definition then
		return false
	end

	-- allow replacing air and liquids
	if node_name == "air" or node_definition.liquidtype ~= "none" and node_name ~= "es:fake_water_source" then
		return true
	end	
	
	-- allow not replacing tracks
	if node_definition.buildable_to ~= "false" then
		return false
	end

	-- don't replace filled chests and other nodes that don't allow it
	local can_dig_func = node_definition.can_dig
	if can_dig_func and not can_dig_func(pos, player) then
		return false
	end

	-- default to each nodes buildable_to; if a placed block would replace it, why shouldn't bones?
	-- flowers being squished by bones are more realistical than a squished stone, too
	-- exception are of course any protected buildable_to
	return node_definition.buildable_to and not minetest.is_protected(pos, player:get_player_name())
end

local drop = function(pos, itemstack)
	local obj = minetest.add_item(pos, itemstack:take_item(itemstack:get_count()))
	if obj then
		obj:setvelocity({
			x = math.random(-10, 10) / 9,
			y = 5,
			z = math.random(-10, 10) / 9,
		})
	end
end

local player_inventory_lists = { "main", "craft" }
bones.player_inventory_lists = player_inventory_lists

local function is_all_empty(player_inv)
	for _, list_name in ipairs(player_inventory_lists) do
		if not player_inv:is_empty(list_name) then
			return false
		end
	end
	return true
end

minetest.register_on_dieplayer(function(player)

	local bones_mode = minetest.settings:get("bones_mode") or "bones"
	if bones_mode ~= "bones" and bones_mode ~= "drop" and bones_mode ~= "keep" then
		bones_mode = "bones"
	end

	local bones_position_message = minetest.settings:get_bool("bones_position_message") == true
	local player_name = player:get_player_name()
	local pos = vector.round(player:get_pos())
	local pos_string = minetest.pos_to_string(pos)

	-- return if keep inventory set or in creative mode
	if bones_mode == "keep" or (creative and creative.is_enabled_for
			and creative.is_enabled_for(player:get_player_name())) then
		minetest.log("action", player_name .. " dies at " .. pos_string ..
			". No bones placed")
		if bones_position_message then
			minetest.chat_send_player(player_name, player_name .. " died at " .. pos_string .. ".")
		end
		return
	end

	local player_inv = player:get_inventory()
	if is_all_empty(player_inv) then
		minetest.log("action", player_name .. " dies at " .. pos_string ..
			". No bones placed")
		if bones_position_message then
			minetest.chat_send_player(player_name, player_name .. " died at " .. pos_string .. ".")
		end
		return
	end

	-- no bones at spawn point
	--x was 3
	if pos.x>-6 and pos.x<6 and pos.y>-6 and pos.y<6 and pos.z>-6 and pos.z<6 then
		return
	end

	if pos.x>-3 and pos.x<3 and pos.y>14998 and pos.y<15009 and pos.z>-3 and pos.z<3 then
		return
	end	
	
	-- check if it's possible to place bones, if not find space near player
	if bones_mode == "bones" and not may_replace(pos, player) then
		local air = minetest.find_node_near(pos, 1, {"air"})
		if air and not minetest.is_protected(air, player_name) then
			pos = air
		else
			--bones_mode = "drop"
			--bones_mode = "keep"
			return false
		end
	end

	if bones_mode == "drop" then
		for _, list_name in ipairs(player_inventory_lists) do
			for i = 1, player_inv:get_size(list_name) do
				drop(pos, player_inv:get_stack(list_name, i))
			end
			player_inv:set_list(list_name, {})
		end
		drop(pos, ItemStack("bones:bones"))
		minetest.log("action", player_name .. " dies at " .. pos_string ..
			". Inventory dropped")
		if bones_position_message then
			minetest.chat_send_player(player_name, player_name .. " died at " .. pos_string ..
				", and dropped their inventory.")
		end
		return
	end

	local param2 = minetest.dir_to_facedir(player:get_look_dir())
	minetest.set_node(pos, {name = "bones:bones", param2 = param2})

	minetest.log("action", player_name .. " dies at " .. pos_string ..
		". Bones placed")
	if bones_position_message then
		minetest.chat_send_player(player_name, player_name .. " died at " .. pos_string ..
			", and bones were placed.")
	end

	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	inv:set_size("main", 8 * 4)

	for _, list_name in ipairs(player_inventory_lists) do
		for i = 1, player_inv:get_size(list_name) do
			local stack = player_inv:get_stack(list_name, i)
			if inv:room_for_item("main", stack) then
				inv:add_item("main", stack)
			else -- no space left
				drop(pos, stack)
			end
		end
		player_inv:set_list(list_name, {})
	end

	meta:set_string("formspec", bones_formspec)
	meta:set_string("owner", player_name)


--[[
--default
	if share_bones_time ~= 0 then
		meta:set_string("infotext", player_name .. "'s fresh bones")

		if share_bones_time_early == 0 or not minetest.is_protected(pos, player_name) then
			meta:set_int("time", 0)
		else
			meta:set_int("time", (share_bones_time - share_bones_time_early))
		end

		minetest.get_node_timer(pos):start(10)
	else
		meta:set_string("infotext", player_name.."'s bones")
	end
--end default
]]

	
	if share_bones_time ~= 0 then
		--meta:set_string("infotext", player_name .. "'s fresh bones")
            local time = os.date("*t");
            meta:set_string("infotext", meta:get_string("owner")
                .." is dieing"
                .." here "
                .. time.year 
                .. "/"
                .. time.month 
                .. "/" 
                .. time.day 
                .. " at " 
                ..time.hour
                .. ":"
                .. time.min 
                .." ...");


		if share_bones_time_early == 0 or not minetest.is_protected(pos, player_name) then
			meta:set_int("time", 0)
		else
			meta:set_int("time", (share_bones_time - share_bones_time_early))
		end

		minetest.get_node_timer(pos):start(10)
	else
		meta:set_string("infotext", player_name.."'s Silly bones")
	end
	
	
end)
