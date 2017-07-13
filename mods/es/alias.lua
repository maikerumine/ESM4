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

--Alias                      "old"--->"new"
------------------------------------------

--vendor
minetest.register_alias("vendor:vendor", "smartshop:shop")
minetest.register_alias("vendor:depositor", "smartshop:shop")
minetest.register_alias("vendorgoldblock:vendor", "smartshop:shop")
minetest.register_alias("vendorgoldblock:depositor", "smartshop:shop")

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
minetest.register_alias("es:helmet_aikerum", "3d_armor:helmet_aikerum")
minetest.register_alias("es:helmet_emerald", "3d_armor:helmet_emerald")
minetest.register_alias("es:helmet_infinium", "3d_armor:helmet_infinium")
minetest.register_alias("es:chestplate_aikerum", "3d_armor:chestplate_aikerum")
minetest.register_alias("es:chestplate_emerald", "3d_armor:chestplate_emerald")
minetest.register_alias("es:chestplate_infinium", "3d_armor:chestplate_infinium")
minetest.register_alias("es:leggings_aikerum", "3d_armor:leggings_aikerum")
minetest.register_alias("es:leggings_emerald", "3d_armor:leggings_emerald")
minetest.register_alias("es:leggings_infinium", "3d_armor:leggings_infinium")
minetest.register_alias("es:boots_aikerum", "3d_armor:boots_aikerum")
minetest.register_alias("es:boots_emerald", "3d_armor:boots_emerald")
minetest.register_alias("es:boots_infinium", "3d_armor:boots_infinium")

minetest.register_alias("es:shield_aikerum", "shields:shield_aikerum")
minetest.register_alias("es:shield_emerald", "shields:shield_emerald")
minetest.register_alias("es:shield_infinium", "shields:shield_infinium")
minetest.register_alias("es:shield_nomad", "shields:shield_nomad")
minetest.register_alias("es:shield_rusher", "shields:shield_rusher")
minetest.register_alias("es:shield_veteran", "shields:shield_veteran")

--minetest.register_alias("doors:door_wood_t_1", "default:wood")
--minetest.register_alias("doors:door_wood_b_1", "default:wood")
--minetest.register_alias("doors:door_wood_t_2", "default:wood")

minetest.register_alias("beds:bed_bottom_white", "default:wood")
minetest.register_alias("beds:bed_top_white", "default:wood")




--bags
minetest.register_alias("bags:small_esmmese", "unified_inventory:small_esmmese")
minetest.register_alias("bags:medium_esmmese", "unified_inventory:medium_esmmese")
minetest.register_alias("bags:large_esmmese", "unified_inventory:large_esmmese")
minetest.register_alias("bags:small", "unified_inventory:small_esmmese")
minetest.register_alias("bags:medium", "unified_inventory:medium_esmmese")
minetest.register_alias("bags:large", "unified_inventory:large_esmmese")