--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0


minetest.register_node("es:lag_block", {
	description = "Show this around town to sho you love the original Just Test.  REMEMBER THE TEST.  Lag, This is a dedication block to your ideas, your server, and you.  My skuchayem i lyubyat vas.  WE MISS AND LOVE YOU!",
	--tiles = {"default_water.png^player.png^gui_furnace_arrow_fg.png^treeprop.png^heart.png"},
	tiles = {"default_water.png^treeprop.png^heart.png"},
	is_ground_content = false,
	walkable = false,
	light_source = default.LIGHT_MAX,
	groups = {immortal=1,cracky=1,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:lag_ice", {
	description = "Lag's Ice",
	tiles = {"default_ice.png^default_glass_detail.png"},
	is_ground_content = false,
	paramtype = "light",
	groups = {cracky = 1, puts_out_fire = 1},
	sounds = default.node_sound_glass_defaults(),
})



--tweaks and overrides
--Override mese
minetest.override_item('default:stone_with_mese', {
     drop = {
          max_items = 1,
          items = {
               { items = {'es:mesecook_crystal'},}
          },
     },
})

--compressed cobble
minetest.register_node("es:compressedcobble", {
	description = "Compressed Cobblestone",
	tiles = {"default_cobble.png^default_ladder.png^[colorize:#000000:170"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})


--rnd code
--cactus tweaks
local function hurt_cactus() -- cactus tweak
	local name = "default:cactus"
	local table = minetest.registered_nodes[name];
	local table2 = {};
	for i,v in pairs(table) do table2[i] = v end
	table2.groups.disable_jump = 1
	table2.damage_per_second = 5
	minetest.register_node(":"..name, table2)
end
hurt_cactus();

--TECHNIC NODES
minetest.register_node( "es:granite", {
	description = "Granite",
	tiles = { "technic_granite.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "es:granite_bricks", {
	description = "Granite Bricks",
	tiles = { "technic_granite_bricks.png",},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "es:marble", {
	description = "Marble",
	tiles = { "technic_marble.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "es:marble_bricks", {
	description = "Marble Bricks",
	tiles = { "technic_marble_bricks.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
--[[
--ES OLD_Node Definition
minetest.register_node("es:stone_with_emerald", {
	description = "Emerald Ore",
	tiles = {"default_stone.png^emerald_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = "es:emerald_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_ruby", {
	description = "Ruby Ore",
	tiles = {"default_stone.png^ruby_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = "es:ruby_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_aikerum", {
	description = "Aikerum Ore",
	tiles = {"default_stone.png^aikerum_ore.png"},
	is_ground_content = true,
	groups = {cracky=1,level = 2},
	drop = "es:aikerum_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_infinium", {
	description = "Infinium Ore - Slightly Radioactive",
	tiles = {"default_stone.png^infinium_ore.png"},
	is_ground_content = true,
	--groups = {cracky=1,level = 2, radioactive = (state == "source" and 2 or 2)},
	groups = {cracky=1,level = 2, radioactive = 2},
	drop = "es:infinium_goo",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_purpellium", {
	description = "Purlellium Ore - Oddly interesting",
	tiles = {"default_stone.png^purpellium_ore.png"},
	is_ground_content = true,
	--groups = {cracky=2,level = 2,fall_damage_add_percent = -1000, radioactive = (state == "source" and 2 or 2)},
	groups = {cracky=2,level = 2,fall_damage_add_percent = -1000, radioactive = 2},
	drop = "es:purpellium_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:depleted_uranium", {
	description = "Depleted Uranium Ore RADIOACTIVE",
	tiles = {"default_stone.png^uranium_ore.png"},
	--groups = {cracky = 3, radioactive = (state == "source" and 3 or 2)},
	groups = {cracky = 3, radioactive = 3},
	drop = 'es:depleted_uranium_lump',
	sounds = default.node_sound_stone_defaults(),
	light_source = 12,
})
]]

--ES NEW_Node Definition
minetest.register_node("es:stone_with_emeralds", {
	description = "Emerald Ore",
	tiles = {"default_stone.png^emerald_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = "es:emerald_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_rubys", {
	description = "Ruby Ore",
	tiles = {"default_stone.png^ruby_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = "es:ruby_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_aikerums", {
	description = "Aikerum Ore",
	tiles = {"default_stone.png^aikerum_ore.png"},
	is_ground_content = true,
	groups = {cracky=1,level = 2},
	drop = "es:aikerum_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_infiniums", {
	description = "Infinium Ore - Slightly Radioactive",
	tiles = {"default_stone.png^infinium_ore.png"},
	is_ground_content = true,
	--groups = {cracky=1,level = 2, radioactive = (state == "source" and 2 or 2)},
	groups = {cracky=1,level = 2, radioactive = 2},
	drop = "es:infinium_goo",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_purpelliums", {
	description = "Purlellium Ore - Oddly interesting",
	tiles = {"default_stone.png^purpellium_ore.png"},
	is_ground_content = true,
	--groups = {cracky=2,level = 2,fall_damage_add_percent = -1000, radioactive = (state == "source" and 2 or 2)},
	groups = {cracky=2,level = 2,fall_damage_add_percent = -1000, radioactive = 2},
	drop = "es:purpellium_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:depleted_uraniums", {
	description = "Depleted Uranium Ore RADIOACTIVE",
	tiles = {"default_stone.png^uranium_ore.png"},
	--groups = {cracky = 3, radioactive = (state == "source" and 3 or 2)},
	groups = {cracky = 3, radioactive = 3},
	drop = 'es:depleted_uranium_lump',
	sounds = default.node_sound_stone_defaults(),
	light_source = 12,
})
--Emerald located at -1000
minetest.register_node("es:emeraldblock", {
	description = "Emerald Block",
	tiles = {"emerald_block.png"},
	light_source = 7,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:emerald_crystal", {
	description = "Emerald Crystal",
	inventory_image = "emerald.png",
})

--Ruby located at -3000
minetest.register_node("es:rubyblock", {
	description = "Ruby Block",
	tiles = {"ruby_block.png"},
	light_source = 7,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:ruby_crystal", {
	description = "Ruby Crystal",
	inventory_image = "ruby.png",
})

--Aikerum located at -4000
minetest.register_node("es:aikerumblock", {
	description = "Aikerum Block",
	tiles = {"aikerum_block.png"},
	light_source = 7,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:aikerum_crystal", {
	description = "Aikerum Crystal",
	inventory_image = "aikerum.png",
})


--Infinium located at -4300
minetest.register_node("es:infiniumblock", {
	description = "infinium Block",
	tiles = {"infinium_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:infinium_goo", {
	description = "Infinium Goo--Need to craft with vessel to contain.",
	inventory_image = "infinium.png",
})

minetest.register_craftitem("es:infinium_ingot", {
	description = "Infinium Ingot--TBD CRAFTING Special Armour and Lab Equipment",
	--inventory_image = "infinium_ingot.png",
	inventory_image = "infinium_ingot.png",
})

minetest.register_craftitem("es:infinium_container", {
	description = "Infinium Container--Cook to get Infinium Ingot",
	inventory_image = "infinium_container.png",
})

--Purpellium located at -4000
minetest.register_node("es:purpelliumblock", {
	description = "Purpellium Block - Fall from great height without any damage if landing on this block",
	tiles = {"purpellium_block.png"},
	light_source = 7,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:purpellium_lump", {
	description = "Purpellium Lump",
	inventory_image = "purpellium_lump.png",
})

minetest.register_craftitem("es:purpellium_ingot", {
	description = "Purpellium Ingot",
	inventory_image = "purpellium_ingot.png",
})

--Diamond located in sand?
minetest.register_node("es:sand_with_diamond", {
	description = "The buried treasure chest is gone, however this gem remains.  Use a shovel!",
	tiles = {"default_sand.png^default_diamond.png"},
	--light_source = 7,
	is_ground_content = true,
	groups = {crumbly=1,level=2},
	sounds = default.node_sound_dirt_defaults(),
})

--BONEBLOCK
minetest.register_node("es:boneblock", {
	description = "Bone Blox",
	tiles = {
	"bones_top.png",
	"bones_bottom.png",
	"bones_side.png",
	"bones_side.png",
	"bones_rear.png",
	"bones_front.png"
	},
	paramtype2 = "facedir",
	groups = {dig_immediate=2},
	sounds = default.node_sound_dirt_defaults({
	footstep = {name="default_gravel_footstep", gain=0.5},
	dug = {name="default_gravel_footstep", gain=1.0},
	}),
})


--INPERVIOUS NODES  CANNOT BREAK- Great for prison walls.
minetest.register_node("es:hgglass", {
	description = "High Density Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"default_glass.png", "default_glass_detail.png"},
	inventory_image = minetest.inventorycube("default_glass.png"),
	paramtype = "light",
	buildable_to = false,
	pointable = false,
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("es:hgglass2", {
	description = "High Density Glass II",
	drawtype = "glasslike",
	tiles = { "default_obsidian_glass.png"},
	inventory_image = minetest.inventorycube("default_obsidian_glass.png"),
	paramtype = "light",
	buildable_to = false,
	pointable = false,
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
})
minetest.register_node("es:steelblock", {
	description = "High Density Steel Block",
	tiles = {"default_steel_block.png"},
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stoneblock", {
	description = "High Density Stone Block",
	tiles = {"default_stone.png"},
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:sandstonebrick", {
	description = "High Density Sandstone Brick",
	tiles = {"default_stone_brick.png^[colorize:#CCCC99:150"},
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stonebrick", {
	description = "High Density Stone Brick",
	tiles = {"default_stone_brick.png"},
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:junglewood", {
	description = "High Density Junglewood Planks",
	tiles = {"default_junglewood.png"},
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})


--A simple way to store your cookable Mese, and it gives off light!
minetest.register_node("es:messymese", {
	description = "Messy MESE Block",
	tiles = {"default_clay.png^bubble.png^mese_cook_mese_crystal.png"},
	light_source = 14,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:what", {
	description = "The What Block - Dig for random gift",
	drawtype = "glasslike_framed_optional^bubble.png",
	tiles = {"default_glass.png^bubble.png", "default_glass_detail.png^bubble.png"},
	inventory_image = minetest.inventorycube("default_glass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {crumbly=3,},
	drop = {
		max_items = 2,
		items = {
			{items = {'es:what'}, rarity = 80},
			{items = {'es:sword_aikerum'}, rarity = 50},
			{items = {'es:sword_ruby'}, rarity = 40},
			{items = {'es:sword_emerald'}, rarity = 30},
			{items = {'es:pick_aikerum'}, rarity = 50},
			{items = {'es:pick_ruby'}, rarity = 40},
			{items = {'es:pick_emerald'}, rarity = 30},
			{items = {'farming:bread 20'}, rarity = 3},
			{items = {'default:cobble 10'}, rarity = 3},
			{items = {'default:gold_lump 10'}, rarity = 10},
			{items = {'default:iron_lump 10'}, rarity = 5},
			{items = {'default:apple 10'}, rarity = 5},
			{items = {'default:coal_lump 10'}, rarity = 1},
			{items = {'es:depleted_uranium_ingot 3'}}
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

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
	tiles = { "vault.png", "vault.png", "vault.png",
		"vault.png", "vault.png",  "(vault.png^default_nc_front.png^[colorize:#00FF00:110)"},
	inventory_image = "vault.png",
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
			local holding = clicker:get_wielded_item()
			if holding:to_string() ~= "" then
				-- take stack
				local sta = holding:take_item(holding:get_count())
				clicker:set_wielded_item(holding)
				-- incase of lag, reset stack
				minetest.after(0.1, function()
					clicker:set_wielded_item(holding)
					-- drop stack
					local obj = minetest.add_item(clicker:getpos(), sta)
					obj:setvelocity({x = 0, y = 5, z = 0})
				end)
			end
		end
	end,
	on_blast = function() end,
})



--CUSTOM biome stuff

minetest.register_node("es:strange_grass", {
	description = "Strange Grass",
	tiles = {("default_dry_grass.png^[colorize:#00BBFF:130"),
		"default_clay.png",
		{name = "default_clay.png^(default_dry_grass_side.png^[colorize:#00BBFF:130)",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, es_grass = 1},
	drop = 'es:dry_dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("es:aiden_grass", {
	description = "Aiden Grass",
	tiles = {("default_dry_grass.png^[colorize:#8A084B:160"),
		"default_clay.png",
		{name = "default_clay.png^(default_dry_grass_side.png^[colorize:#8A084B:160)",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, es_grass = 1},
	drop = 'es:dry_dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})
minetest.register_node("es:strange_tree", {
	description = "Strange_tree",
	tiles = {"aikerum_block.png^default_mineral_coal.png"},
	paramtype2 = "facedir",
	groups = {cracky = 3},
	drop = 'default:coal_lump',
	sounds = default.node_sound_stone_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("es:aiden_tree", {
	description = "Aiden Tree",
	tiles = {"default_jungletree_top.png^[colorize:#FFBBFF:130", "default_jungletree_top.png^[colorize:#FFBBFF:130",
		"default_jungletree.png^[colorize:#FFBBFF:130"},
	paramtype2 = "facedir",
	is_ground_content = false,
	drop = 'default:junglewood',
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("es:old_tree", {
	description = "Old Tree",
	tiles = {"default_tree_top.png^[colorize:#585858:170", "default_tree_top.png^[colorize:#585858:170", "default_tree.png^[colorize:#585858:170"},
	paramtype2 = "facedir",
	is_ground_content = false,
	drop = 'default:tree',
	groups = {choppy = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("es:strange_leaves", {
	description = "Strange Leaves",
	drawtype = "plantlike",
	light_source = 14,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	tiles = {"default_jungleleaves.png^default_dry_shrub.png^[colorize:#0000FF:170"},
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:apple'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:stick'},
			}
		}
	},
	sounds = default.node_sound_stone_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("es:strange_shrub", {
	description = "Strange shrub",
	drawtype = "plantlike",
	light_source = 14,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	tiles = {"default_jungleleaves.png^default_dry_shrub.png^[colorize:#0000FF:170"},
	groups = {snappy = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("es:strange_clay_blue", {
	description = "Strange Clay",
	tiles = {"default_clay.png^[colorize:#00BBFF:180"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_red", {
	description = "Strange Clay Red",
	--tiles = {"default_clay.png^[colorize:#FA5858:180"},
	tiles = {"default_clay.png^[colorize:#8A0829:180"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_maroon", {
	description = "Strange Clay Maroon",
	--tiles = {"default_clay.png^[colorize:#8A0808:180"},
	tiles = {"default_clay.png^[colorize:#610B21:180"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_brown", {
	description = "Strange Clay Brown",
	tiles = {"default_clay.png^[colorize:#61210B:180"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_orange", {
	description = "Strange Clay Orange",
	tiles = {"default_clay.png^[colorize:#FE642E:180"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_black", {
	description = "Strange Clay Black",
	tiles = {"default_clay.png^[colorize:#151515:180"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("es:strange_clay_grey", {
	description = "Strange Clay Black",
	tiles = {"default_clay.png^[colorize:#848484:180"},
	groups = {crumbly = 3},
	--drop = 'default:clay_lump 4',
	sounds = default.node_sound_dirt_defaults(),
})

--[[
minetest.register_node("default:dirt_with_dry_grass", {
	description = "Dirt with Dry Grass",
	tiles = {"default_dry_grass.png",
		"default_dirt.png",
		{name = "default_dirt.png^default_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})
]]

minetest.register_node("es:dry_shrub", {
	description = "ES Dry Shrub",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"default_dry_shrub.png^[colorize:#00BBFF:180"},
	inventory_image = "default_dry_shrub.png^[colorize:#00BBFF:180",
	wield_image = "default_dry_shrub.png^[colorize:#00BBFF:180",
	paramtype = "light",
	light_source = default.LIGHT_MAX - 6,
	sunlight_propagates = true,
--	walkable = false,
	walkable =true,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

minetest.register_node("es:junglegrass", {
	description = "ES Jungle Grass",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.3,
	tiles = {"default_junglegrass.png^[colorize:#8A0808:180"},
	inventory_image = "default_junglegrass.png^[colorize:#8A0808:180",
	wield_image = "default_junglegrass.png^[colorize:#8A0808:180",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	damage_per_second = 1,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})







--Default addons as they should be.  I changed ore generation to keep unique for compatibility.




--Dry dirt added
minetest.register_node("es:dry_dirt", {
	description = "Some dry dirt",
	tiles = {"default_dry_dirt.png"},
	--tiles = {"dry_dirt.png"},
	groups = {crumbly = 3},
	drop = 'es:dry_dirt',
	sounds = default.node_sound_dirt_defaults(),
})
--[[
minetest.register_node("es:stone_with_mese", {
	description = "Cookable Mese Ore",
	tiles = {"default_stone.png^default_mineral_mese.png"},
	paramtype = "light",
	groups = {cracky = 1},
	drop = "es:mesecook_crystal",
	sounds = default.node_sound_stone_defaults(),
	light_source = 1,
})
]]
minetest.register_node("es:desert_stone_with_gold", {
	description = "Gold Ore",
	tiles = {"default_desert_stone.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:desert_stone_with_iron", {
	description = "Iron Ore",
	tiles = {"default_desert_stone.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = 'default:iron_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:desert_stone_with_coal", {
	description = "Coal Ore",
	tiles = {"default_desert_stone.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'default:coal_lump',
	sounds = default.node_sound_stone_defaults(),
})
--[[
--OLD
minetest.register_node("es:depleted_uranium", {
	description = "Depleted Uranium Ore RADIOACTIVE",
	tiles = {"default_stone.png^uranium_ore.png"},
	--groups = {cracky = 3, radioactive = (state == "source" and 3 or 2)},
	groups = {cracky = 3, radioactive = 3},
	drop = 'es:depleted_uranium_lump',
	sounds = default.node_sound_stone_defaults(),
	light_source = 12,
})
]]
minetest.register_craftitem("es:depleted_uranium_lump", {
	description = "Depleted Uranium use for long term fuel, first cook the lump into an ingot, then use ingot for fuel.",
	inventory_image = "uranium_lump.png",
})



--ES CUSTOM LIQUIDS:
minetest.register_node("es:toxic_water_source", {
	description = "Toxic_Water Source",
	inventory_image = minetest.inventorycube("es_toxic_water.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "es_toxic_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "es_toxic_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 240,
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquid_renewable = false,
	liquid_range = 1,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "es:toxic_water_flowing",
	liquid_alternative_source = "es:toxic_water_source",
	liquid_viscosity =3,
	damage_per_second = 3*2,
	post_effect_color = {a = 255, r = 30, g = 60, b = 90},
	--groups = {water = 3, liquid = 3, puts_out_fire = 1, radioactive = (state == "source" and 2 or 2),},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, radioactive = 2},
})

--NOTES:
--		radioactive = (state == "source" and 32 or 16),
--THIS IS DEFAULT SETTING FROM TECHNIC

minetest.register_node("es:toxic_water_flowing", {
	description = "Toxic_Flowing Water",
	inventory_image = minetest.inventorycube("es_toxic_water.png"),
	drawtype = "flowingliquid",
	tiles = {"es_toxic_water.png"},
	special_tiles = {
		{
			name = "es_toxic_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "es_toxic_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 240,
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquid_renewable = false,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "es:toxic_water_flowing",
	liquid_alternative_source = "es:toxic_water_source",
	liquid_viscosity = 2,
	damage_per_second = 2*2,
	post_effect_color = {a = 255, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		--not_in_creative_inventory = 1, radioactive = (state == "source" and 2 or 2),},
		not_in_creative_inventory = 1, radioactive =2},
})
--FOR REF
-- Quicksand (old style, sinking inside shows black instead of yellow effect,
-- works ok with noclip enabled though)
minetest.register_node("es:mud", {
	description = "Mud",
	tiles = {"es_mud.png"},
	--drop = "es:mud",
	liquid_viscosity = 19,
	liquidtype = "source",
	liquid_alternative_flowing = "es:mud",
	liquid_alternative_source = "es:mud",
	liquid_renewable = false,
	liquid_range = 0,
	drowning = 3,
	walkable = false,
	climbable = false,
	liquid_renewable = false,
	post_effect_color = { a = 255, r = 43, g = 23, b = 9 },
	groups = {crumbly=3, falling_node=1, sand=1, liquid=3, disable_jump=1},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("es:mud_flowing", {
	description = "Flowing  mud",
	--drawtype = "liquid",--change to liquid for a solid look
	drawtype = "flowingliquid",
	tiles = {"es_mud.png"},
	special_tiles = {
		{
			name = "es_mud.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "es_mud.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},

	alpha = 250,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	liquid_renewable = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "es:mud_flowing",
	liquid_alternative_source = "es:mud",
	liquid_viscosity = 7,
	post_effect_color = {a = 255, r = 43, g = 23, b = 9},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, },
})

--Lava
minetest.register_node("es:lava_source", {
	description = "ES Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	--drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "es:lava_flowing",
	liquid_alternative_source = "es:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	--damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, hot = 3, igniter = 1},
})

minetest.register_node("es:lava_flowing", {
	description = "ES Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {"default_lava.png"},
	special_tiles = {
		{
			name = "default_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "default_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	--drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "es:lava_flowing",
	liquid_alternative_source = "es:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	--damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, hot = 3, igniter = 1,
		not_in_creative_inventory = 1},
})

--[[

way too aggro
--From ethereal mod
-- check surrounding grass and change dirt to same colour (by Sokomine)
minetest.register_abm({
	nodenames = {"default:dirt_with_grass","default:dirt_with_dry_grass"},
	interval = 5,
	chance = 2,
	action = function(pos, node)
		local count_grasses = {}
		local curr_max  = 0
		local curr_type = "es:strange_grass" -- fallback Colour
		local positions = minetest.find_nodes_in_area(
			{x=(pos.x-2), y=(pos.y-2), z=(pos.z-2)},
			{x=(pos.x+2), y=(pos.y+2), z=(pos.z+2)},
			"group:es_grass")
		-- count new grass nodes
		for _,p in ipairs(positions) do
			local n = minetest.get_node(p)
			if n and n.name then
				if not count_grasses[n.name] then
					count_grasses[n.name] = 1
				else
					count_grasses[n.name] = count_grasses[n.name] + 1
				end
				-- we found a grass type with more than current max
				if count_grasses[n.name] > curr_max then
					curr_max = count_grasses[n.name]
					curr_type = n.name
				end
			end
		end
		minetest.set_node(pos, {name = curr_type})
        end
})




-- if grass devoid of light, change to dirt
minetest.register_abm({
	nodenames = {"group:es_grass"},
	interval = 2,
	chance = 20,
	action = function(pos, node)
		local name = minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name
		local nodedef = minetest.registered_nodes[name]
		if name ~= "ignore" and nodedef
		and not ((nodedef.sunlight_propagates or nodedef.paramtype == "light")
		and nodedef.liquidtype == "none") then
			minetest.set_node(pos, {name = "default:dirt"})
		end
	end
})
]]
