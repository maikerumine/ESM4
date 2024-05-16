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

es = {}
-- Minetest 0.4 mod: mt_seasons
-- 
-- See README.txt for licensing and other information.
--NODE DEFS
es = {}

local clrs = {
	{"black",      "Black",      "#000000b0"},
	{"blue",       "Blue",       "#015dbbcc"},
	{"brown",      "Brown",      "#a78c45cc"},
	{"cyan",       "Cyan",       "#01ffd8cc"},
	{"dark_green", "Dark Green", "#005b07cc"},
	{"dark_grey",  "Dark Grey",  "#303030b0"},
	{"green",      "Green",      "#61ff01cc"},
	{"grey",       "Grey",       "#5b5b5bb0"},
	{"magenta",    "Magenta",    "#ff05bbcc"},
	{"orange",     "Orange",     "#ff8401cc"},
	{"pink",       "Pink",       "#ff65b5cc"},
	{"red",        "Red",        "#ff0000cc"},
	{"violet",     "Violet",     "#2000c9cc"},
	{"white",      "White",      "#abababc0"},
	{"yellow",     "Yellow",     "#e3ff00cc"},
}

for i = 1, #clrs, 1 do

minetest.register_node("es:gift_box_" .. clrs[i][1], {
	description = clrs[i][2] .. "Gift Block - Punch for random gift",
		tiles = {
		--"wool_white.png^default_apple.png^[transform2",
		"es_aikerum_block.png^[colorize:" .. clrs[i][3],
		"wool_white.png^[colorize:" .. clrs[i][3],
		"wool_white.png^banners_stripe1.png^[colorize:" .. clrs[i][3],
		"wool_white.png^banners_stripe1.png^[colorize:" .. clrs[i][3],
		"wool_white.png^banners_stripe1.png^[colorize:" .. clrs[i][3],
		"wool_white.png^banners_stripe1.png^[colorize:" .. clrs[i][3]
	},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {crumbly=2,},
	paramtype2 = "facedir",
	drop = {
		max_items = 2,
		items = {
			--{items = {'mt_seasons:gift_box'}, rarity = 80},
			{items = {'default:sword_diamond'}, rarity = 50},
			{items = {'default:sword_mese'}, rarity = 30},
			{items = {'default:sword_bronze'}, rarity = 10},
			{items = {'default:sword_steel'}, rarity = 5},
			
			{items = {'default:pick_diamond'}, rarity = 50},
			{items = {'default:pick_mese'}, rarity = 30},
			{items = {'default:pick_bronze'}, rarity = 10},
			{items = {'default:pick_steel'}, rarity = 5},
			
			{items = {'farming:bread 60'}, rarity = 3},
			{items = {'default:cobble 10'}, rarity = 3},
			{items = {'default:gold_lump 10'}, rarity = 10},
			{items = {'default:iron_lump 10'}, rarity = 5},
			{items = {'default:apple 30'}, rarity = 5},
			{items = {'default:coal_lump 10'}, rarity = 1},
		}
	},
	
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Christmas Present (placed by " ..
				meta:get_string("owner") .. ")")
				meta:set_string("formspec", "field[text;;${text}]")
	end,

	on_receive_fields = function(pos, formname, fields, sender)
			--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
			local player_name = sender:get_player_name()
			if minetest.is_protected(pos, player_name) then
				minetest.record_protection_violation(pos, player_name)
				return
			end
			local meta = minetest.get_meta(pos)
			if not fields.text then return end
			minetest.log("action", (player_name or "") .. " wrote \"" ..
				fields.text .. "\" to present at " .. minetest.pos_to_string(pos))
			meta:set_string("text", fields.text)
			meta:set_string("infotext", '"' .. fields.text .. '"')  --would like to keep the info from placer
	end,
	
	sounds = default.node_sound_dirt_defaults(),
})

--Supress for seasons
--[[
--sent to winter
minetest.register_craft({
	output = "es:gift_box_".. clrs[i][1] .. " 1",
	recipe = {
		{'default:paper', 'default:apple', 'default:paper'},
		{'default:paper', 'default:diamond', 'default:paper'},
		{ "dye:" .. clrs[i][1], 'group:wool' , "dye:" .. clrs[i][1]},

	}
})
]]

minetest.register_alias("mt_seasons:gift_box_".. clrs[i][1] ,"es:gift_box_" .. clrs[i][1] )

end


--More seasonal nodes

--[[
	Big thanks to PainterlyPack.net for allowing me to use these textures
]]


-- pumpkin
minetest.register_node("es:pumpkin", {
	description = "Pumpkin",
	tiles = {
		"farming_pumpkin_top.png",
		"farming_pumpkin_top.png",
		"farming_pumpkin_side.png"
	},
	groups = {
		choppy = 1, oddly_breakable_by_hand = 1,
		flammable = 2, plant = 1
	},
	drop = {
		items = {
			{items = {'es:pumpkin_slice 9'}, rarity = 1},
		}
	},
	sounds = default.node_sound_wood_defaults(),
})

-- pumpkin slice
minetest.register_craftitem("es:pumpkin_slice", {
	description ="Pumpkin Slice",
	inventory_image = "farming_pumpkin_slice.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "default:pumpkin_1")
	end,
	
	on_use = minetest.item_eat(2),
})

minetest.register_craft({
	output = "es:pumpkin",
	recipe = {
		{"es:pumpkin_slice", "es:pumpkin_slice", "es:pumpkin_slice"},
		{"es:pumpkin_slice", "es:pumpkin_slice", "es:pumpkin_slice"},
		{"es:pumpkin_slice", "es:pumpkin_slice", "es:pumpkin_slice"},
	}
})

minetest.register_craft({
	output = "es:pumpkin_slice 9",
	recipe = {
		{"", "es:pumpkin", ""},
	}
})

-- jack 'o lantern
minetest.register_node("es:jackolantern", {
	description = "Jack 'O Lantern",
	tiles = {
		"farming_pumpkin_top.png",
		"farming_pumpkin_top.png",
		"farming_pumpkin_side.png",
		"farming_pumpkin_side.png",
		"farming_pumpkin_side.png",
		"farming_pumpkin_face_off.png"
	},
	paramtype2 = "facedir",
	groups = {choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_punch = function(pos, node, puncher)
		node.name = "es:jackolantern_on"
		minetest.swap_node(pos, node)
	end,
})

minetest.register_node("es:jackolantern_on", {
	tiles = {
		"farming_pumpkin_top.png",
		"farming_pumpkin_top.png",
		"farming_pumpkin_side.png",
		"farming_pumpkin_side.png",
		"farming_pumpkin_side.png",
		"farming_pumpkin_face_on.png"
	},
	light_source = default.LIGHT_MAX - 1,
	paramtype2 = "facedir",
	groups = {choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = "es:jackolantern",
	on_punch = function(pos, node, puncher)
		node.name = "es:jackolantern"
		minetest.swap_node(pos, node)
	end,
})


--[[
--moved to autumn
minetest.register_craft({
	output = "es:jackolantern",
	recipe = {
		{"", "", ""},
		{"", "default:torch", ""},
		{"", "es:pumpkin", ""},
	}
})

-- pumpkin bread
minetest.register_craftitem("es:pumpkin_bread", {
	description = "Pumpkin Bread",
	inventory_image = "farming_pumpkin_bread.png",
	on_use = minetest.item_eat(8)
})

minetest.register_craftitem("es:pumpkin_dough", {
	description = "Pumpkin Dough",
	inventory_image = "farming_pumpkin_dough.png",
})

minetest.register_craft({
	output = "es:pumpkin_dough",
	type = "shapeless",
	recipe = {"farming:flour", "es:pumpkin_slice", "es:pumpkin_slice"}
})

minetest.register_craft({
	type = "cooking",
	output = "es:pumpkin_bread",
	recipe = "es:pumpkin_dough",
	cooktime = 10
})
]]
-- pumpkin definition
local crop_def = {
	drawtype = "plantlike",
	tiles = {"farming_pumpkin_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	drop = "",
	--selection_box = farming.select,
	groups = {
		snappy = 3, flammable = 2, plant = 1, attached_node = 1,
		not_in_creative_inventory = 1, growing = 1
	},
	sounds = default.node_sound_leaves_defaults()
}
--[[
-- stage 1
minetest.register_node("es:pumpkin_1", table.copy(crop_def))

-- stage 2
crop_def.tiles = {"farming_pumpkin_2.png"}
minetest.register_node("es:pumpkin_2", table.copy(crop_def))

-- stage 3
crop_def.tiles = {"farming_pumpkin_3.png"}
minetest.register_node("es:pumpkin_3", table.copy(crop_def))

-- stage 4
crop_def.tiles = {"farming_pumpkin_4.png"}
minetest.register_node("es:pumpkin_4", table.copy(crop_def))

-- stage 5
crop_def.tiles = {"farming_pumpkin_5.png"}
minetest.register_node("es:pumpkin_5", table.copy(crop_def))

-- stage 6
crop_def.tiles = {"farming_pumpkin_6.png"}
minetest.register_node("es:pumpkin_6", table.copy(crop_def))

-- stage 7
crop_def.tiles = {"farming_pumpkin_7.png"}
minetest.register_node("es:pumpkin_7", table.copy(crop_def))
]]
-- stage 8 (final)
crop_def.tiles = {"farming_pumpkin_8.png"}
crop_def.groups.growing = 0
crop_def.drop = {
	items = {
		{items = {'es:pumpkin_slice 9'}, rarity = 1},
	}
}
minetest.register_node("es:pumpkin_8", table.copy(crop_def))

minetest.register_alias("mt_seasons:pumpkin", "es:pumpkin")
minetest.register_alias("mt_seasons:pumpkin_1", "es:pumpkin_1")
minetest.register_alias("mt_seasons:pumpkin_2", "es:pumpkin_2")
minetest.register_alias("mt_seasons:pumpkin_3", "es:pumpkin_3")
minetest.register_alias("mt_seasons:pumpkin_4", "es:pumpkin_4")
minetest.register_alias("mt_seasons:pumpkin_5", "es:pumpkin_5")
minetest.register_alias("mt_seasons:pumpkin_6", "es:pumpkin_6")
minetest.register_alias("mt_seasons:pumpkin_7", "es:pumpkin_7")
minetest.register_alias("mt_seasons:pumpkin_8", "es:pumpkin_8")
minetest.register_alias("mt_seasons:pumpkin_slice", "es:pumpkin_slice")
minetest.register_alias("mt_seasons:pumpkin_bread", "es:pumpkin_bread")
minetest.register_alias("mt_seasons:pumpkin_dough", "es:pumpkin_dough")
minetest.register_alias("mt_seasons:jackolantern", "es:jackolantern")
minetest.register_alias("mt_seasons:jackolantern_on", "es:jackolantern_on")
