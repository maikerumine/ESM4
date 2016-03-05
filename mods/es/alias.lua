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
minetest.register_alias("pathv6alt:path", "es:stonebrick")
minetest.register_alias("pathv6alt:junglewood", "es:stonebrick")
minetest.register_alias("pathv6alt:bridgewood", "es:junglewood")
minetest.register_alias("pathv6alt:stairn", "es:junglewood")
minetest.register_alias("pathv6alt:stairs", "es:junglewood")
minetest.register_alias("pathv6alt:staire", "es:junglewood")
minetest.register_alias("pathv6alt:stairw", "es:junglewood")
minetest.register_alias("pathv6alt:stairne", "es:junglewood")
minetest.register_alias("pathv6alt:stairse", "es:junglewood")
minetest.register_alias("pathv6alt:stairsw", "es:junglewood")
minetest.register_alias("pathv6alt:stairnw", "es:junglewood")
minetest.register_alias("pathv6alt:pstairn", "es:junglewood")
minetest.register_alias("pathv6alt:pstairs", "es:junglewood")
minetest.register_alias("pathv6alt:pstaire", "es:junglewood")
minetest.register_alias("pathv6alt:pstairw", "es:junglewood")
minetest.register_alias("pathv6alt:pstairne", "es:junglewood")
minetest.register_alias("pathv6alt:pstairse", "es:junglewood")
minetest.register_alias("pathv6alt:pstairsw", "es:junglewood")
minetest.register_alias("pathv6alt:pstairnw", "es:junglewood")

minetest.register_alias("handle_schematics:support", "default:ladder")
minetest.register_alias("mg_villages:road", "default:gravel")
minetest.register_alias("mg_villages:soil", "default:dirt")
minetest.register_alias("mg_villages:desert_sand_soil", "default:desert_sand")
minetest.register_alias("mg_villages:torch", "default:torch")
minetest.register_alias("mg_villages:plotmarker", "stairs:slab_stonebrick")
minetest.register_alias("mg_villages:lava_flowing_tamed", "default:lava_flowing")
minetest.register_alias("mg_villages:lava_source_tamed", "default:lava_source")
minetest.register_alias("mg_villages:lava_source_tamed", "default:lava_source")

minetest.register_alias("esmobs:stone", "default:leaves")
minetest.register_alias("esmobs:dirt", "default:leaves")



minetest.register_alias("lavender:lavender_fruit", "flowers:rose")
minetest.register_alias("lavender:lavender", "flowers:viola")
minetest.register_alias("jdukebox:box", "default:diamondblock")



minetest.register_alias("meru:destone", "default:desert_stone")
minetest.register_alias("meru:stone", "default:sandstone")
minetest.register_alias("default:desert_stone_with_iron", "es:desert_stone_with_iron")
minetest.register_alias("default:desert_stone_with_gold", "es:desert_stone_with_gold")
minetest.register_alias("default:desert_stone_with_coal", "es:desert_stone_with_coal")
minetest.register_alias("glass:hgglass", "es:hgglass")
minetest.register_alias("mese_cook:mesecook_crystal", "es:mesecook_crystal")
minetest.register_alias("default:stone_with_mese", "es:stone_with_mese")
minetest.register_alias("protector_mese:protect", "protector:protect")
minetest.register_alias("carts:rail_brake","carts:brakerail")
minetest.register_alias("carts:rail_power","carts:powerrail")


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

--This to fix unneeded craftguide mod
minetest.register_alias("craft_guide:sign_wall","default:torch")
minetest.register_alias("craft_guide:lcd_pc","default:torch")
--minetest.register_alias("quartz:quartz_ore","default:torch")


--Technic Node Remover created by maikerumine
-- Minetest 0.4.13 mod: "Technic Node Remover"
-- namespace: tecnodrem
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0
--WARNING!!! IF YOU USE THIS THIS WILL PERMANTLY REMOVE ALL TECHNIC NODES FROM YOUR MAP!!!
--The items in the machines will be retrievable.
--The nodes will be replaced with high value blocks.

tecnodrem = {}
--Alias                      "old"--->"new"

--ES STUFF
minetest.register_alias("es:punkin", "es:messymese")
minetest.register_alias("es:punkin_on", "es:messymese")

