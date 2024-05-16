--CrushingFurnace mod by sfan5
--v1.1
--Added to es 20160318 maikerumine
--fixed protected 20200825
--minetest.register_alias("es:furnace", "es:compressedcobble")
--minetest.register_alias("es:furnace_active", "es:compressedcobble")
-- furnace
--minetest.register_alias("farming:flower", "farming:flour")
--REALISED CFURNACE IS SHIT AND EATS ITEMS.  i CANNOT FIX.  sWAPPED WITH RE-NAMED FURNACE.






-- default/furnace.lua

-- support for MT game translation.
--local S = default.get_translator

--
-- Formspecs
--

function default.get_furnace_active_formspec(fuel_percent, item_percent)
	return "size[8,8.5]"..
		"list[context;src;2.75,0.5;1,1;]"..
		"list[context;fuel;2.75,2.5;1,1;]"..
		"image[2.75,1.5;1,1;default_furnace_fire_bg.png^[lowpart:"..
		(fuel_percent)..":default_furnace_fire_fg.png]"..
		"image[3.75,1.5;1,1;gui_furnace_arrow_bg.png^[lowpart:"..
		(item_percent)..":gui_furnace_arrow_fg.png^[transformR270]"..
		"list[context;dst;4.75,0.96;2,2;]"..
		"list[current_player;main;0,4.25;8,1;]"..
		"list[current_player;main;0,5.5;8,3;8]"..
		"listring[context;dst]"..
		"listring[current_player;main]"..
		"listring[context;src]"..
		"listring[current_player;main]"..
		"listring[context;fuel]"..
		"listring[current_player;main]"..
		default.get_hotbar_bg(0, 4.25)
end

function default.get_furnace_inactive_formspec()
	return "size[8,8.5]"..
		"list[context;src;2.75,0.5;1,1;]"..
		"list[context;fuel;2.75,2.5;1,1;]"..
		"image[2.75,1.5;1,1;default_furnace_fire_bg.png]"..
		"image[3.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
		"list[context;dst;4.75,0.96;2,2;]"..
		"list[current_player;main;0,4.25;8,1;]"..
		"list[current_player;main;0,5.5;8,3;8]"..
		"listring[context;dst]"..
		"listring[current_player;main]"..
		"listring[context;src]"..
		"listring[current_player;main]"..
		"listring[context;fuel]"..
		"listring[current_player;main]"..
		default.get_hotbar_bg(0, 4.25)
end

--
-- Node callback functions that are the same for active and inactive furnace
--

local function can_dig(pos, player)
	local meta = minetest.get_meta(pos);
	local inv = meta:get_inventory()
	return inv:is_empty("fuel") and inv:is_empty("dst") and inv:is_empty("src")
end

local function allow_metadata_inventory_put(pos, listname, index, stack, player)
	if minetest.is_protected(pos, player:get_player_name()) then
		return 0
	end
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	if listname == "fuel" then
		if minetest.get_craft_result({method="fuel", width=1, items={stack}}).time ~= 0 then
			if inv:is_empty("src") then
				meta:set_string("infotext", "Furnace is empty")
			end
			return stack:get_count()
		else
			return 0
		end
	elseif listname == "src" then
		return stack:get_count()
	elseif listname == "dst" then
		return 0
	end
end

local function allow_metadata_inventory_move(pos, from_list, from_index, to_list, to_index, count, player)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local stack = inv:get_stack(from_list, from_index)
	return allow_metadata_inventory_put(pos, to_list, to_index, stack, player)
end

local function allow_metadata_inventory_take(pos, listname, index, stack, player)
	if minetest.is_protected(pos, player:get_player_name()) then
		return 0
	end
	return stack:get_count()
end

local function swap_node(pos, name)
	local node = minetest.get_node(pos)
	if node.name == name then
		return
	end
	node.name = name
	minetest.swap_node(pos, node)
end

local function furnace_node_timer(pos, elapsed)
	--
	-- Initialize metadata
	--
	local meta = minetest.get_meta(pos)
	local fuel_time = meta:get_float("fuel_time") or 0
	local src_time = meta:get_float("src_time") or 0
	local fuel_totaltime = meta:get_float("fuel_totaltime") or 0

	local inv = meta:get_inventory()
	local srclist, fuellist
	local dst_full = false

	local cookable, cooked
	local fuel

	local update = true
	while elapsed > 0 and update do
		update = false

		srclist = inv:get_list("src")
		fuellist = inv:get_list("fuel")

		--
		-- Cooking
		--

		-- Check if we have cookable content
		local aftercooked
		cooked, aftercooked = minetest.get_craft_result({method = "cooking", width = 1, items = srclist})
		cookable = cooked.time ~= 0

		local el = math.min(elapsed, fuel_totaltime - fuel_time)
		if cookable then -- fuel lasts long enough, adjust el to cooking duration
			el = math.min(el, cooked.time - src_time)
		end

		-- Check if we have enough fuel to burn
		if fuel_time < fuel_totaltime then
			-- The furnace is currently active and has enough fuel
			fuel_time = fuel_time + el
			-- If there is a cookable item then check if it is ready yet
			if cookable then
				src_time = src_time + el
				if src_time >= cooked.time then
					-- Place result in dst list if possible
					if inv:room_for_item("dst", cooked.item) then
						inv:add_item("dst", cooked.item)
						inv:set_stack("src", 1, aftercooked.items[1])
						src_time = src_time - cooked.time
						update = true
					else
						dst_full = true
					end
				else
					-- Item could not be cooked: probably missing fuel
					update = true
				end
			end
		else
			-- Furnace ran out of fuel
			if cookable then
				-- We need to get new fuel
				local afterfuel
				fuel, afterfuel = minetest.get_craft_result({method = "fuel", width = 1, items = fuellist})

				if fuel.time == 0 then
					-- No valid fuel in fuel list
					fuel_totaltime = 0
					src_time = 0
				else
					-- Take fuel from fuel list
					inv:set_stack("fuel", 1, afterfuel.items[1])
					-- Put replacements in dst list or drop them on the furnace.
					local replacements = fuel.replacements
					if replacements[1] then
						local leftover = inv:add_item("dst", replacements[1])
						if not leftover:is_empty() then
							local above = vector.new(pos.x, pos.y + 1, pos.z)
							local drop_pos = minetest.find_node_near(above, 1, {"air"}) or above
							minetest.item_drop(replacements[1], nil, drop_pos)
						end
					end
					update = true
					fuel_totaltime = fuel.time + (fuel_totaltime - fuel_time)
				end
			else
				-- We don't need to get new fuel since there is no cookable item
				fuel_totaltime = 0
				src_time = 0
			end
			fuel_time = 0
		end

		elapsed = elapsed - el
	end

	if fuel and fuel_totaltime > fuel.time then
		fuel_totaltime = fuel.time
	end
	if srclist and srclist[1]:is_empty() then
		src_time = 0
	end

	--
	-- Update formspec, infotext and node
	--
	local formspec
	local item_state
	local item_percent = 0
	if cookable then
		item_percent = math.floor(src_time / cooked.time * 100)
		if dst_full then
			item_state = "100% (output full)"
		else
			item_state = "@1%", item_percent
		end
	else
		if srclist and not srclist[1]:is_empty() then
			item_state = "Not cookable"
		else
			item_state = "Empty"
		end
	end

	local fuel_state = "Empty"
	local active = false
	local result = false

	if fuel_totaltime ~= 0 then
		active = true
		local fuel_percent = 100 - math.floor(fuel_time / fuel_totaltime * 100)
		fuel_state = "@1%", fuel_percent
		formspec = default.get_furnace_active_formspec(fuel_percent, item_percent)
		swap_node(pos, "es:crushing_furnace_active")
		-- make sure timer restarts automatically
		result = true
	else
		if fuellist and not fuellist[1]:is_empty() then
			fuel_state = "@1%", 0
		end
		formspec = default.get_furnace_inactive_formspec()
		swap_node(pos, "es:crushing_furnace")
		-- stop timer on the inactive furnace
		minetest.get_node_timer(pos):stop()
	end


	local infotext
	if active then
		infotext = "C Furnace active"
	else
		infotext = "C Furnace inactive"
	end
	infotext = infotext .. "\n" .. "(Item: @1; Fuel: @2)", item_state, fuel_state

	--
	-- Set meta values
	--
	meta:set_float("fuel_totaltime", fuel_totaltime)
	meta:set_float("fuel_time", fuel_time)
	meta:set_float("src_time", src_time)
	meta:set_string("formspec", formspec)
	meta:set_string("infotext", infotext)

	return result
end

--
-- Node definitions
--

minetest.register_node("es:crushing_furnace", {
	description = "Crushing Furnace is the same as regular furnace, only difference is it looks cooler.  Was replaced due to bad code in furnace that stole your items.",
	--[[
	tiles = {
		"default_furnace_top.png", "default_furnace_bottom.png",
		"default_furnace_side.png", "default_furnace_side.png",
		"default_furnace_side.png", "default_furnace_front.png"
	},
	]]
	
	tiles = {"default_furnace_top.png", "default_furnace_bottom.png", "default_furnace_side.png",
		"default_furnace_side.png", "default_furnace_side.png", "es_crushingfurnace_front.png"},
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{-0.5, 0.5, -0.5, 0.5, 0+1/16, 0.5},
				{-0.5+1/16, 0+1/16, -0.5+1/16, 0.5-1/16, 0-1/16, 0.5-1/16},
				{-0.5, -0.5, -0.5, 0.5, 0-1/16, 0.5},}
	},	
	
	paramtype2 = "facedir",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),

	can_dig = can_dig,

	on_timer = furnace_node_timer,

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size('src', 1)
		inv:set_size('fuel', 1)
		inv:set_size('dst', 4)
		furnace_node_timer(pos, 0)
	end,

	on_metadata_inventory_move = function(pos)
		minetest.get_node_timer(pos):start(1.0)
	end,
	on_metadata_inventory_put = function(pos)
		-- start timer function, it will sort out whether furnace can burn or not.
		minetest.get_node_timer(pos):start(1.0)
	end,
	on_blast = function(pos)
		local drops = {}
		default.get_inventory_drops(pos, "src", drops)
		default.get_inventory_drops(pos, "fuel", drops)
		default.get_inventory_drops(pos, "dst", drops)
		drops[#drops+1] = "es:crushing_furnace"
		minetest.remove_node(pos)
		return drops
	end,

	allow_metadata_inventory_put = allow_metadata_inventory_put,
	allow_metadata_inventory_move = allow_metadata_inventory_move,
	allow_metadata_inventory_take = allow_metadata_inventory_take,
})

minetest.register_node("es:crushing_furnace_active", {
	description = "C Furnace",
	--[[
	tiles = {
		"default_furnace_top.png", "default_furnace_bottom.png",
		"default_furnace_side.png", "default_furnace_side.png",
		"default_furnace_side.png",
		{
			image = "default_furnace_front_active.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.5
			},
		}
	},
	]]
	
	tiles = {"default_furnace_top.png", "default_furnace_bottom.png", "default_furnace_side.png",
		"default_furnace_side.png", "default_furnace_side.png", "es_crushingfurnace_front_active.png"},
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{-0.5, 0.5, -0.5, 0.5, 0+1/16, 0.5},
				{-0.5+1/16, 0+1/16, -0.5+1/16, 0.5-1/16, 0-1/16, 0.5-1/16},
				{-0.5, -0.5, -0.5, 0.5, 0-1/16, 0.5},}
	},
	
	paramtype2 = "facedir",
	light_source = 8,
	drop = "es:crushing_furnace",
	groups = {cracky=2, not_in_creative_inventory=1},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	on_timer = furnace_node_timer,

	can_dig = can_dig,

	allow_metadata_inventory_put = allow_metadata_inventory_put,
	allow_metadata_inventory_move = allow_metadata_inventory_move,
	allow_metadata_inventory_take = allow_metadata_inventory_take,
})
--[[
minetest.register_craft({
	output = "default:furnace",
	recipe = {
		{"group:stone", "group:stone", "group:stone"},
		{"group:stone", "", "group:stone"},
		{"group:stone", "group:stone", "group:stone"},
	}
})
]]

minetest.register_craft({
	output = 'es:crushing_furnace',
	recipe = {
		{'default:cobble', 'default:steel_ingot', 'default:cobble'},
		{'', 'default:diamond', ''},
		{'default:stonebrick', 'default:cobble', 'default:stonebrick'},
	}
})



















--[[
local function get_furnace_active_formspec(pos, percent)
	local formspec =
		"size[8,9]"..
		"image[2,2;1,1;es_crushingfurnace_crush_bg.png^[lowpart:"..
		(100-percent)..":es_crushingfurnace_crush_fg.png]"..
		"list[current_name;fuel;2,3;1,1;]"..
		"list[current_name;src;2,1;1,1;]"..
		"list[current_name;dst;5,1;2,2;]"..
		"list[current_player;main;0,5;8,4;]"
	return formspec
end

local furnace_inactive_formspec =
	"size[8,9]"..
	"image[2,2;1,1;es_crushingfurnace_crush_bg.png]"..
	"list[current_name;fuel;2,3;1,1;]"..
	"list[current_name;src;2,1;1,1;]"..
	"list[current_name;dst;5,1;2,2;]"..
	"list[current_player;main;0,5;8,4;]"
]]
local crushingfurnace_receipes = {
	--input                 output            time
	{"default:cobble", "default:gravel",      8},
	{"default:gravel", "default:sand",        5},
	{"default:sand", "default:dirt",        5},
--	{"farming:wheat", "farming:flour",        2},
	{"es:aikerum_crystal", "es:aikerum_dust",        33},
	{"es:ruby_crystal", "es:ruby_dust",        23},
	{"es:emerald_crystal", "es:emerald_dust",        13},
	{"es:purpellium_lump", "es:purpellium_dust",        20},
--	{"moretrees:rubber_tree_trunk", "es:rubber_dust",        2},
	{"cblocks:stone_black", "dye:black",        12},
	{"cblocks:stone_blue", "dye:blue",        12},
	{"cblocks:stone_brown", "dye:brown",        12},
	{"cblocks:stone_cyan", "dye:cyan",        12},
	{"cblocks:stone_dark_green", "dye:dark_green",        12},
	{"cblocks:stone_dark_grey", "dye:dark_grey",        12},
	{"cblocks:stone_green", "dye:green",        12},
	{"cblocks:stone_grey", "dye:grey",        12},
	{"cblocks:stone_magenta", "dye:magenta",        12},
	{"cblocks:stone_orange", "dye:orange",        12},
	{"cblocks:stone_pink", "dye:pink",        12},
	{"cblocks:stone_red", "dye:red",        12},
	{"cblocks:stone_violet", "dye:violet",        12},
	{"cblocks:stone_white", "dye:white",        12},
	{"cblocks:stone_yellow", "dye:yellow",        12},
	--== TOOLS
	{"default:pick_steel", "default:steel_ingot",        13},
	{"default:sword_steel", "default:steel_ingot",        13},
	{"default:shovel_steel", "default:steel_ingot",        13},
	{"default:axe_steel", "default:steel_ingot",        13},
	{"farming:hoe_steel", "default:steel_ingot",        13},
	
	{"default:pick_bronze", "default:bronze_ingot",        13},
	{"default:sword_bronze", "default:bronze_ingot",        13},
	{"default:shovel_bronze", "default:bronze_ingot",        13},
	{"default:axe_bronze", "default:bronze_ingot",        13},
	{"farming:hoe_bronze", "default:bronze_ingot",        13},
	
	{"default:pick_mese", "default:mese_crystal",        13},
	{"default:sword_mese", "default:mese_crystal",        13},
	{"default:shovel_mese", "default:mese_crystal",        13},
	{"default:axe_mese", "default:mese_crystal",        13},
	{"farming:hoe_mese", "default:mese_crystal",        13},	
	
	{"default:pick_diamond", "default:diamond",        13},
	{"default:sword_diamond", "default:diamond",        13},
	{"default:shovel_diamond", "default:diamond",        13},
	{"default:axe_diamond", "default:diamond",        13},
	{"farming:hoe_diamond", "default:diamond",        13},
	
	
	

}
--[[
--this is the item eater
function crushingfurnace_get_craft_result(input)
	if input.method ~= "cooking" then return nil end
	if input.width ~= 1 then return nil end
	for _, e in ipairs(crushingfurnace_receipes) do
		if e[1] == input.items[1]:get_name() then
			local outstack = input.items[1]
			outstack:take_item()
			return {item = ItemStack(e[2]), time=e[3]}, {items = {outstack}}
		end
	end
	return {item = ItemStack(""), time=0}, {items = ItemStack("")}
end

minetest.register_node("es:crushing_furnace", {
	description = "Crushing Furnace  NOTE: only use COBBLE, GRAVEL, ES CRYSTALS AND PURPELLIUM LUMPS.  CBLOCKS to extract the color dyes!! All other items will dissappear.",
	tiles = {"default_furnace_top.png", "default_furnace_bottom.png", "default_furnace_side.png",
		"default_furnace_side.png", "default_furnace_side.png", "es_crushingfurnace_front.png"},
	paramtype2 = "facedir",
    light_source = 1,
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{-0.5, 0.5, -0.5, 0.5, 0+1/16, 0.5},
				{-0.5+1/16, 0+1/16, -0.5+1/16, 0.5-1/16, 0-1/16, 0.5-1/16},
				{-0.5, -0.5, -0.5, 0.5, 0-1/16, 0.5},}
	},


	groups = {cracky=2},
	legacy_facedir_simple = true,
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", furnace_inactive_formspec)
		meta:set_string("infotext", "Crushing Furnace")
		local inv = meta:get_inventory()
		inv:set_size("fuel", 1)
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		if not inv:is_empty("fuel") then
			return false
		elseif not inv:is_empty("dst") then
			return false
		elseif not inv:is_empty("src") then
			return false
		end
		return true
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		if minetest.is_protected(pos, player:get_player_name()) then  --mm added is protectrd
			return 0
		end
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		if listname == "fuel" then
			if minetest.get_craft_result({method="fuel",width=1,items={stack}}).time ~= 0 then
				if inv:is_empty("src") then
					meta:set_string("infotext","Crushing Furnace is empty")
				end
				return stack:get_count()
			else
				return 0
			end
		elseif listname == "src" then
			return stack:get_count()
		elseif listname == "dst" then
			return 0
		end
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		if minetest.is_protected(pos, player:get_player_name()) then  --mm added is protectrd
			return 0
		end
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local stack = inv:get_stack(from_list, from_index)
		if to_list == "fuel" then
			if minetest.get_craft_result({method="fuel",width=1,items={stack}}).time ~= 0 then
				if inv:is_empty("src") then
					meta:set_string("infotext","Crushing Furnace is empty")
				end
				return count
			else
				return 0
			end
		elseif to_list == "src" then
			return count
		elseif to_list == "dst" then
			return 0
		end
	end,	
	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		if minetest.is_protected(pos, player:get_player_name()) then
			return 0
		end
		return stack:get_count()
	end,
	
})

minetest.register_node("es:crushing_furnace_active", {
	tiles = {"default_furnace_top.png", "default_furnace_bottom.png", "default_furnace_side.png",
		"default_furnace_side.png", "default_furnace_side.png", "es_crushingfurnace_front_active.png"},
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{-0.5, 0.5, -0.5, 0.5, 0+1/16, 0.5},
				{-0.5+1/16, 0+1/16, -0.5+1/16, 0.5-1/16, 0-1/16, 0.5-1/16},
				{-0.5, -0.5, -0.5, 0.5, 0-1/16, 0.5},}
	},
	paramtype2 = "facedir",
	light_source = 8,
	drop = "es:crushing_furnace",
	groups = {cracky=2, not_in_creative_inventory=1,hot=1},
	legacy_facedir_simple = true,
    is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", furnace_inactive_formspec)
		meta:set_string("infotext", "Crushing Furnace");
		local inv = meta:get_inventory()
		inv:set_size("fuel", 1)
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		if not inv:is_empty("fuel") then
			return false
		elseif not inv:is_empty("dst") then
			return false
		elseif not inv:is_empty("src") then
			return false
		end
		return true
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		if minetest.is_protected(pos, player:get_player_name()) then  --mm added is protectrd
			return 0
		end
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		if listname == "fuel" then
			if minetest.get_craft_result({method="fuel",width=1,items={stack}}).time ~= 0 then
				if inv:is_empty("src") then
					meta:set_string("infotext","Crushing Furnace is empty")
				end
				return stack:get_count()
			else
				return 0
			end
		elseif listname == "src" then
			return stack:get_count()
		elseif listname == "dst" then
			return 0
		end
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		if minetest.is_protected(pos, player:get_player_name()) then  --mm added is protectrd
			return 0
		end
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local stack = inv:get_stack(from_list, from_index)
		if to_list == "fuel" then
			if minetest.get_craft_result({method="fuel",width=1,items={stack}}).time ~= 0 then
				if inv:is_empty("src") then
					meta:set_string("infotext","Crushing Furnace is empty")
				end
				return count
			else
				return 0
			end
		elseif to_list == "src" then
			return count
		elseif to_list == "dst" then
			return 0
		end
	end,
	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		if minetest.is_protected(pos, player:get_player_name()) then
			return 0
		end
		return stack:get_count()
	end,
})

function hacky_swap_node(pos,name)
	local node = minetest.get_node(pos)
	local meta = minetest.get_meta(pos)
	if node.name == name then
		return
	end
	local meta0 = meta:to_table()
	node.name = name
	minetest.set_node(pos,node)
	meta = minetest.get_meta(pos)
	meta:from_table(meta0)
end

minetest.register_abm({
	nodenames = {"es:crushing_furnace","es:crushing_furnace_active"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local meta = minetest.get_meta(pos)
		for i, name in ipairs({
				"fuel_totaltime",
				"fuel_time",
				"src_totaltime",
				"src_time"
		}) do
			if meta:get_string(name) == "" then
				meta:set_float(name, 0.0)
			end
		end

		local inv = meta:get_inventory()

		local srclist = inv:get_list("src")
		local cooked = nil
		local aftercooked
		
		if srclist then
			cooked, aftercooked = crushingfurnace_get_craft_result({method = "cooking", width = 1, items = srclist})
		end
		
		local was_active = false
		
		if meta:get_float("fuel_time") < meta:get_float("fuel_totaltime") then
			was_active = true
			meta:set_float("fuel_time", meta:get_float("fuel_time") + 1)
			meta:set_float("src_time", meta:get_float("src_time") + 1)
			if cooked and cooked.item and meta:get_float("src_time") >= cooked.time then
				-- check if there's room for output in "dst" list
				if inv:room_for_item("dst",cooked.item) then
					-- Put result in "dst" list
					inv:add_item("dst", cooked.item)
					-- take stuff from "src" list
					inv:set_stack("src", 1, aftercooked.items[1])
				else
					print("Could not insert '"..cooked.item:to_string().."'")
				end
				meta:set_string("src_time", 0)
			end
		end
		
		if meta:get_float("fuel_time") < meta:get_float("fuel_totaltime") then
			local percent = math.floor(meta:get_float("fuel_time") /
					meta:get_float("fuel_totaltime") * 100)
			meta:set_string("infotext","Crushing Furnace active: "..percent.."%")
			hacky_swap_node(pos,"es:crushing_furnace_active")
			meta:set_string("formspec", get_furnace_active_formspec(pos, percent))
			return
		end

		local fuel = nil
		local afterfuel
		local cooked = nil
		local fuellist = inv:get_list("fuel")
		local srclist = inv:get_list("src")
		
		if srclist then
			cooked = crushingfurnace_get_craft_result({method = "cooking", width = 1, items = srclist})
		end
		if fuellist then
			fuel, afterfuel = minetest.get_craft_result({method = "fuel", width = 1, items = fuellist})
		end

		if fuel.time <= 0 then
			meta:set_string("infotext", "Crushing Furnace out of fuel")
			hacky_swap_node(pos, "es:crushing_furnace")
			meta:set_string("formspec", furnace_inactive_formspec)
			return
		end

		if cooked.item:is_empty() then
			if was_active then
				meta:set_string("infotext", "Crushing Furnace is empty")
				hacky_swap_node(pos, "es:crushing_furnace")
				meta:set_string("formspec", furnace_inactive_formspec)
			end
			return
		end

		meta:set_string("fuel_totaltime", fuel.time)
		meta:set_string("fuel_time", 0)
		
		inv:set_stack("fuel", 1, afterfuel.items[1])
	end,
})
]]




--[[
minetest.register_craft({
	output = 'es:crushing_furnace',
	recipe = {
		{'default:cobble', 'default:steelblock', 'default:cobble'},
		{'', 'default:diamondblock', ''},
		{'default:stonebrick', 'default:cobble', 'default:stonebrick'},
	}
})
]]