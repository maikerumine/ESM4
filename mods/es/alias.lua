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

--Alias                      "old"--->"new"
------------------------------------------
--esmobs pathfinding
minetest.register_alias("esmobs:stone", "default:leaves")
minetest.register_alias("esmobs:dirt", "default:leaves")
--override default nodes
minetest.register_alias("default:desert_stone_with_iron", "es:desert_stone_with_iron")
minetest.register_alias("default:desert_stone_with_gold", "es:desert_stone_with_gold")
minetest.register_alias("default:desert_stone_with_coal", "es:desert_stone_with_coal")
minetest.register_alias("default:stone_with_mese", "es:stone_with_mese")
minetest.register_alias("protector_mese:protect", "protector:protect")

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
