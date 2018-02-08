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


local use_shields = minetest.get_modpath("shields")

local craft_ingreds = {
	infinium = "es:infinium_ingot",
	aikerum = "es:aikerum_crystal",
	ruby = "es:ruby_crystal",
	emerald = "es:emerald_crystal",
}
minetest.register_craft({
	output = 'shields:shield_nomad',
	recipe = {
		{'default:steel_ingot', 'dye:blue', 'default:steel_ingot'},
		{'default:steel_ingot', 'shields:shield_diamond', 'default:steel_ingot'},
		{'default:steel_ingot', 'flowers:flower_dandelion_white', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'shields:shield_rusher',
	recipe = {
		{'default:steel_ingot', 'dye:white', 'default:steel_ingot'},
		{'default:steel_ingot', 'shields:shield_diamond', 'default:steel_ingot'},
		{'default:steel_ingot', 'flowers:flower_dandelion_white', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'shields:shield_veteran',
	recipe = {
		{'default:steel_ingot', 'dye:black', 'default:steel_ingot'},
		{'default:steel_ingot', 'shields:shield_diamond', 'default:steel_ingot'},
		{'default:steel_ingot', 'flowers:flower_dandelion_white', 'default:steel_ingot'},
	}
})



--Armor code borrowed from:
--stu
--
--License Textures: 2013 Ryan Jones - CC-BY-SA
--License Source Code: 2013 Stuart Jones - LGPL
--Modified color by maikerumine.



	craft_ingreds.infinium = "es:infinium_ingot"
	craft_ingreds.aikerum = "es:aikerum_crystal"
	craft_ingreds.ruby = "es:ruby_crystal"
	craft_ingreds.emerald = "es:emerald_crystal"

	minetest.register_tool(":shields:shield_infinium", {
		description = "Infinium Shield",
		inventory_image = "shields_inv_shield_infinium.png",
		groups = {armor_shield=17, armor_heal=12, armor_use=59},
		wear = 0,
	})

	minetest.register_tool(":shields:shield_aikerum", {
		description = "Aikerum Shield",
		inventory_image = "shields_inv_shield_aikerum.png",
		groups = {armor_shield=16, armor_heal=12, armor_use=56},
		wear = 0,
	})

	minetest.register_tool(":shields:shield_ruby", {
		description = "Ruby Shield",
		inventory_image = "shields_inv_shield_ruby.png",
		groups = {armor_shield=15, armor_heal=12, armor_use=54},
		wear = 0,
	})


	minetest.register_tool(":shields:shield_emerald", {
		description = "Emerald Shield",
		inventory_image = "shields_inv_shield_emerald.png",
		groups = {armor_shield=14, armor_heal=12, armor_use=52},
		wear = 0,
	})


--SHIELDS
minetest.register_tool(":shields:shield_veteran", {
	description = "Veteran Shield",
	inventory_image = "shields_inv_shield_veteran.png",
	groups = {armor_shield=15, armor_heal=12, armor_use=100},
	wear = 0,
})

minetest.register_tool(":shields:shield_rusher", {
	description = "Rusher Shield",
	inventory_image = "shields_inv_shield_rusher.png",
	groups = {armor_shield=15, armor_heal=12, armor_use=100},
	wear = 0,
})

minetest.register_tool(":shields:shield_nomad", {
	description = "Nomad Shield",
	inventory_image = "shields_inv_shield_nomad.png",
	groups = {armor_shield=15, armor_heal=12, armor_use=100},
	wear = 0,
})


for k, v in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "shields:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end




minetest.after(0, function()
	table.insert(armor.elements, "shield")
end)

