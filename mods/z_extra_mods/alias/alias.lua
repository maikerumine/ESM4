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

--Alias                      "old"--->"new"
------------------------------------------

--vendor
minetest.register_alias("vendor:vendor", "smartshop:shop")
minetest.register_alias("vendor:depositor", "smartshop:shop")
minetest.register_alias("vendorgoldblock:vendor", "smartshop:shop")
minetest.register_alias("vendorgoldblock:depositor", "smartshop:shop")


minetest.register_alias("tnt:tnt", "default:wood")
minetest.register_alias("tsm_mines:dummy", "default:torch")

minetest.register_alias("bedrock2:bedrock", "default:coalblock")

minetest.register_alias("travelnet:elevator", "default:diamondblock")
minetest.register_alias("travelnet:elevator_door_glass_open", "default:bronzeblock")
minetest.register_alias("travelnet:elevator_door_glass_closed", "default:bronzeblock")
minetest.register_alias("travelnet:elevator_door_stone_open", "default:bronzeblock")
minetest.register_alias("travelnet:elevator_door_stone_closed", "default:bronzeblock")

--[[
minetest.register_alias("esmobs:cobweb", "mobs:cobweb")
]]


--esmobs pathfinding
minetest.register_alias("esmobs:stone", "default:leaves")
minetest.register_alias("esmobs:dirt", "default:leaves")
--override default nodes
minetest.register_alias("default:desert_stone_with_iron", "es:desert_stone_with_iron")
minetest.register_alias("default:desert_stone_with_gold", "es:desert_stone_with_gold")
minetest.register_alias("default:desert_stone_with_coal", "es:desert_stone_with_coal")
minetest.register_alias("protector_mese:protect", "protector:protect")


minetest.register_alias("es:strange_clay", "es:strange_clay_blue")
minetest.register_alias("es:stone_with_mese", "default:stone_with_mese")
--[[
minetest.register_alias("cblocks:clay_magenta", "es:strange_clay_maroon")
minetest.register_alias("cblocks:clay_black", "es:strange_clay_black")
minetest.register_alias("cblocks:clay_red", "es:strange_clay_red")
minetest.register_alias("cblocks:clay_grey", "es:strange_clay_grey")
minetest.register_alias("cblocks:clay_orange", "es:strange_clay_orange")
minetest.register_alias("cblocks:clay_brown", "es:strange_clay_brown")
]]

--This is to fix the old interaction with my modified 3d_armor mod.
--NEED TO USE THIS FOR 3-D ARMOUR TO WORK!!!!!
minetest.register_alias("3d_armor:helmet_aikerum", "es:helmet_aikerum")
minetest.register_alias("3d_armor:helmet_emerald", "es:helmet_emerald")
minetest.register_alias("3d_armor:helmet_infinium", "es:helmet_infinium")
minetest.register_alias("3d_armor:chestplate_aikerum", "es:chestplate_aikerum")
minetest.register_alias("3d_armor:chestplate_emerald", "es:chestplate_emerald")
minetest.register_alias("3d_armor:chestplate_infinium", "es:chestplate_infinium")
minetest.register_alias("3d_armor:leggings_aikerum", "es:leggings_aikerum")
minetest.register_alias("3d_armor:leggings_emerald", "es:leggings_emerald")
minetest.register_alias("3d_armor:leggings_infinium", "es:leggings_infinium")
minetest.register_alias("3d_armor:boots_aikerum", "es:boots_aikerum")
minetest.register_alias("3d_armor:boots_emerald", "es:boots_emerald")
minetest.register_alias("3d_armor:boots_infinium", "es:boots_infinium")

minetest.register_alias("doors:door_wood_t_1", "default:wood")
minetest.register_alias("doors:door_wood_b_1", "default:wood")
--minetest.register_alias("doors:door_wood_t_2", "default:wood")

minetest.register_alias("beds:bed_bottom_white", "default:wood")
minetest.register_alias("beds:bed_top_white", "default:wood")
