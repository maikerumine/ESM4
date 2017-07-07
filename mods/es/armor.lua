--Extreme Survival created by maikerumine
-- Minetest 0.4.16 mod: "Extreme Survival"
-- namespace: es
--version 0.4.16
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015-2017 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2017) maikerumine; CC-BY-SA 3.0





--Armor code borrowed from:
--stu
--
--License Textures: 2013 Ryan Jones - CC-BY-SA
--License Source Code: 2013 Stuart Jones - LGPL
--Modified color by maikerumine.




minetest.register_tool(":3d_armor:helmet_emerald", {
	description = "Emerald Helmet",
	inventory_image = "3d_armor_inv_helmet_emerald.png",
	groups = {armor_head = 15, armor_heal = 12, armor_use = 100},
	wear = 0,
})

minetest.register_tool(":3d_armor:helmet_aikerum", {
	description = "Aikerum Helmet",
	inventory_image = "3d_armor_inv_helmet_aikerum.png",
	groups = {armor_head = 17, armor_heal = 17, armor_use = 120},
	wear = 0,
})

minetest.register_tool(":3d_armor:helmet_infinium", {
	description = "Infinium Helmet",
	inventory_image = "3d_armor_inv_helmet_infinium.png",
	groups = {armor_head = 20, armor_heal = 15, armor_use = 150},
	wear = 0,
})


minetest.register_tool(":3d_armor:chestplate_emerald", {
	description = "Emerald Chestplate",
	inventory_image = "3d_armor_inv_chestplate_emerald.png",
	groups = {armor_torso = 20, armor_heal = 12, armor_use = 100},
	wear = 0,
})

minetest.register_tool(":3d_armor:chestplate_aikerum", {
	description = "Aikerum Chestplate",
	inventory_image = "3d_armor_inv_chestplate_aikerum.png",
	groups = {armor_torso = 35, armor_heal = 13, armor_use = 125},
	wear = 0,
})

minetest.register_tool(":3d_armor:chestplate_infinium", {
	description = "Infinium Chestplate",
	inventory_image = "3d_armor_inv_chestplate_infinium.png",
	groups = {armor_torso = 50, armor_heal = 15, armor_use = 150},
	wear = 0,
})

minetest.register_tool(":3d_armor:leggings_emerald", {
	description = "Emerald Leggings",
	inventory_image = "3d_armor_inv_leggings_emerald.png",
	groups = {armor_legs = 20, armor_heal = 12, armor_use = 100},
	wear = 0,
})

minetest.register_tool(":3d_armor:leggings_aikerum", {
	description = "Aikerum Leggings",
	inventory_image = "3d_armor_inv_leggings_aikerum.png",
	groups = {armor_legs = 34, armor_heal = 13, armor_use = 125},
	wear = 0,
})

minetest.register_tool(":3d_armor:leggings_infinium", {
	description = "Infinium Leggings",
	inventory_image = "3d_armor_inv_leggings_infinium.png",
	groups = {armor_legs = 50, armor_heal = 15, armor_use = 150},
	wear = 0,
})


minetest.register_tool(":3d_armor:boots_emerald", {
	description = "Emerald Boots",
	inventory_image = "3d_armor_inv_boots_emerald.png",
	groups = {armor_feet = 15, armor_heal = 12, armor_use = 100},
	wear = 0,
})

minetest.register_tool(":3d_armor:boots_aikerum", {
	description = "Aikerum Boots",
	inventory_image = "3d_armor_inv_boots_aikerum.png",
	groups = {armor_feet = 20, armor_heal = 13, armor_use = 130},
	wear = 0,
})

minetest.register_tool(":3d_armor:boots_infinium", {
	description = "Infinium Boots",
	inventory_image = "3d_armor_inv_boots_infinium.png",
	groups = {armor_feet = 30, armor_heal = 15, armor_use = 150},
	wear = 0,
})

-- Register crafting recipes:

local craft_ingreds = {

	aikerum = "es:aikerum_ingot",
	emerald = "es:emerald_ingot",
	infinium = "es:infinium_ingot",


}

for k, v in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "3d_armor:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "3d_armor:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
end




if minetest.setting_getbool("log_mods") then
	minetest.log("action", "ES: [3d_armor] loaded.")
end


