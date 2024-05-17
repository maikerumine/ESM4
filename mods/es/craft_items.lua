--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0


-- See README.txt for licensing and other information.
--maikerumine


es = {}


--MESE
--======================================
--[[
minetest.register_craftitem("es:mesecook_crystal", {
	description = "Cookable Raw MESE",
	inventory_image = "default_mineral_mese.png",
})
]]

--URANIUM
--======================================
minetest.register_craftitem("es:depleted_uranium_ingot", {
	description = "Depleted uranium  -=Burntime 400 seconds",
	inventory_image = "technic_uranium_ingot.png",
})
minetest.register_craftitem("es:depleted_uranium_lump", {
	description = "Depleted Uranium use for long term fuel, first cook the lump into an ingot, then use ingot for fuel.",
	inventory_image = "es_uranium_lump.png",
})



--this is a lame craft tree, need to integrate buckets
minetest.register_craftitem("es:bucket_toxic", {
	description = "Use this bucket to make dangerous things.... TBD",
	inventory_image = "es_bucket_toxic.png",
})

minetest.register_craftitem("es:bucket_rainbow", {
	description = "Bucket of Rainbow",
	inventory_image = "es_bucket_rainbow.png",
	stack_max = 1,
})

minetest.register_craftitem("es:emerald_crystal", {
	description = "Emerald Crystal",
	inventory_image = "es_emerald.png",
})


minetest.register_craftitem("es:ruby_crystal", {
	description = "Ruby Crystal",
	inventory_image = "es_ruby.png",
})

minetest.register_craftitem("es:aikerum_crystal", {
	description = "Aikerum Crystal",
	inventory_image = "es_aikerum.png",
})


minetest.register_craftitem("es:infinium_goo", {
	description = "Infinium Goo--Need to craft with vessel to contain.",
	inventory_image = "es_infinium.png",
})
minetest.register_craftitem("es:infinium_ingot", {
	description = "Infinium Ingot--TBD CRAFTING Special Armour and Lab Equipment",
	inventory_image = "es_infinium_ingot.png",
})

minetest.register_craftitem("es:purpellium_lump", {
	description = "Purpellium Lump",
	inventory_image = "es_purpellium_lump.png",
})


minetest.register_craftitem("es:unobtainium_ingot", {
	--description = "Unobtainium Ingot -=Cook lump for 11080 seconds quarter of a day, to have this ingot then you may.",
	description = "Unobtainium Ingot -=Cook lump for 5540 seconds  of a day, to have this ingot then you may.",
	inventory_image = "es_unobtainium_ingot.png",
})
minetest.register_craftitem("es:unobtainium_lump", {
	description = "Unobtainium Lump  -=Mine only with TNT",
	inventory_image = "es_unobtainium_lump.png",
})

minetest.register_craftitem("es:mese_green_crystal", {
	description = "Green Mese Crystal  -=Hmmmmm",
	inventory_image = "es_mese_green_crystal.png",
})

minetest.register_craftitem("es:beedo_crystal", {
	description = "Beedo Crystal  -==-",
	inventory_image = "es_beedo_crystal.png",
})

--ES GRINDER:
minetest.register_craftitem("es:purpellium_dust", {
	description = "Purpellium Dust",
	inventory_image = "dye_violet.png",
})
minetest.register_craftitem("es:aikerum_dust", {
	description = "Aikerum Dust",
	inventory_image = "dye_blue.png",
})
minetest.register_craftitem("es:ruby_dust", {
	description = "Ruby Dust",
	inventory_image = "dye_red.png",
})
minetest.register_craftitem("es:emerald_dust", {
	description = "Emerald Dust",
	inventory_image = "dye_green.png",
})

--[[
--ES RUBBER
minetest.register_craftitem("es:rubber_dust", {
	description = "Rubber Dust",
	inventory_image = "dye_black.png",
})

minetest.register_craftitem("es:rubber", {
	description = "Rubber",
	inventory_image = "black.png^gui_hotbar_selected.png",
})
]]

--jt2
minetest.register_craftitem("es:griefer_soul", {
	description = "Griefer Soul",
	inventory_image = "default_coal_lump.png^[colorize:red:120",
})


--INGOTS
--======================================
minetest.register_craftitem("es:emerald_ingot", {
	description = "Emerald Ingot Hardened",
	inventory_image = "es_emerald_ingot.png",
})
minetest.register_craftitem("es:cookable_emerald_ingot", {
	description = "Cookable Emerald Ingot",
	inventory_image = "fire_basic_flame.png^es_emerald_ingot.png",
})

minetest.register_craftitem("es:ruby_ingot", {
	description = "Ruby Ingot Hardened",
	inventory_image = "es_ruby_ingot.png",
})
minetest.register_craftitem("es:cookable_ruby_ingot", {
	description = "Cookable Ruby Ingot",
	inventory_image = "fire_basic_flame.png^es_ruby_ingot.png",
})

minetest.register_craftitem("es:aikerum_ingot", {
	description = "Aikerum Ingot Hardened",
	inventory_image = "es_aikerum_ingot.png",
})
minetest.register_craftitem("es:cookable_aikerum_ingot", {
	description = "Cookable Aikerum Ingot",
	inventory_image = "fire_basic_flame.png^es_aikerum_ingot.png",
})

minetest.register_craftitem("es:purpellium_ingot", {
	description = "Purpellium Ingot Hardened",
	inventory_image = "es_purpellium_ingot.png",
})
minetest.register_craftitem("es:cookable_purpellium_ingot", {
	description = "Cookable Purpellium Ingot Hardened",
	inventory_image = "fire_basic_flame.png^es_purpellium_ingot.png",
})


--WEAPONS AND TOOLS
--======================================
minetest.register_craftitem("es:handle", {
	description = "Extreme Survival Uni-handle",
	inventory_image = "es_handle.png",
	--inventory_image = "default_steel_ingot.png^default_diamond.png^default_mese_crystal.png^farming_cotton.png",
})

-- Register es items as dungeon loot

if minetest.global_exists("dungeon_loot") then
	dungeon_loot.register({
		{name = "es:handle", chance = 0.2, count = {1, 2}},
		{name = "es:infinium_goo", chance = 0.2, count = {1, 2}},
		{name = "es:ruby_crystal", chance = 0.2, count = {1, 2}},
		{name = "es:depleted_uranium_lump", chance = 0.7, count = {1, 3}},
		{name = "es:emerald_crystal", chance = 0.2, count = {1, 2}},
		{name = "es:aikerum_crystal", chance = 0.2, count = {1, 2}},
		{name = "es:mese_green_crystal", chance = 0.5, count = {1, 2}},
		{name = "es:unobtainium_lump", chance = 0.1, count = {1, 2}},
		{name = "es:strange_leaves", chance = 0.5, count = {1, 8}},
		{name = "es:griefer_soul", chance = 0.3, count = {1, 5}},
		{name = "es:junglegrass", chance = 0.4, count = {1, 4},
		types = {"normal"}},
	})
end
