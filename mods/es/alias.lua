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


--===========================================
--===========================================
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


--===========================================
--===========================================
--bags
minetest.register_alias("bags:small_esmmese", "unified_inventory:small_esmmese")
minetest.register_alias("bags:medium_esmmese", "unified_inventory:medium_esmmese")
minetest.register_alias("bags:large_esmmese", "unified_inventory:large_esmmese")
minetest.register_alias("bags:small", "unified_inventory:small_esmmese")
minetest.register_alias("bags:medium", "unified_inventory:medium_esmmese")
minetest.register_alias("bags:large", "unified_inventory:large_esmmese")


--===========================================
--===========================================
--beds
minetest.register_alias("beds:bed_bottom_white", "beds:bed_bottom")
minetest.register_alias("beds:bed_top_white", "beds:bed_top")


--===========================================
--===========================================
--carts
minetest.register_alias("carts:rail_brake","carts:brakerail")
minetest.register_alias("carts:rail_power","carts:powerrail")


--===========================================
--===========================================
--override default nodes
minetest.register_alias("default:desert_stone_with_iron", "es:desert_stone_with_iron")
minetest.register_alias("default:desert_stone_with_gold", "es:desert_stone_with_gold")
minetest.register_alias("default:desert_stone_with_coal", "es:desert_stone_with_coal")


--===========================================
--===========================================
--doors
--[[
minetest.register_alias("doors:door_wood_t_1", "default:wood")
minetest.register_alias("doors:door_wood_b_1", "default:wood")
minetest.register_alias("doors:door_wood_b_2", "default:wood")
minetest.register_alias("doors:door_wood_t_2", "default:wood")
]]
minetest.register_alias("doors:door_wood_t_1", "doors:hidden")
minetest.register_alias("doors:door_wood_b_1", "doors:door_wood_a")
minetest.register_alias("doors:door_wood_b_2", "doors:door_wood_b")
minetest.register_alias("doors:door_wood_t_2", "doors:hidden")

minetest.register_alias("doors:door_steel_t_1", "doors:hidden")
minetest.register_alias("doors:door_steel_b_1", "doors:door_steel_a")
minetest.register_alias("doors:door_steel_b_2", "doors:door_steel_b")
minetest.register_alias("doors:door_steel_t_2", "doors:hidden")


--===========================================
--===========================================
--es crushing furnace
minetest.register_alias("es:furnace", "es:infiniumblock")
minetest.register_alias("es:furnace_active", "es:infiniumblock")
minetest.register_alias("es:cfurnace", "es:infiniumblock")
minetest.register_alias("es:cfurnace_active", "es:infiniumblock")

--===========================================
--===========================================
--es nodes
minetest.register_alias("es:strange_clay", "es:strange_clay_blue")
minetest.register_alias("es:stone_with_mese", "default:stone_with_mese")
minetest.register_alias("es:stone_with_coal", "default:stone_with_coal")
minetest.register_alias("es:stone_with_emerald", "default:stone_with_iron")
minetest.register_alias("es:stone_with_ruby", "default:stone_with_copper")
minetest.register_alias("es:stone_with_aikerum", "default:stone_with_diamond")
minetest.register_alias("es:stone_with_infinium", "default:stone_with_mese")
minetest.register_alias("es:stone_with_purpellium", "default:stone_with_coal")
minetest.register_alias("es:depleted_uranium", "default:stone_with_gold")


--===========================================
--===========================================
--esmobs 
minetest.register_alias("esmobs:nametag", "mobs:nametag")
minetest.register_alias("esmobs:leather", "mobs:leather")
minetest.register_alias("esmobs:meat_raw", "mobs:meat_raw")
minetest.register_alias("esmobs:meat", "mobs:meat")
minetest.register_alias("esmobs:pork_raw", "mobs:pork_raw")
minetest.register_alias("esmobs:pork_cooked", "mobs:pork_cooked")
minetest.register_alias("esmobs:rat_cooked", "mobs:rat_cooked")
minetest.register_alias("esmobs:rat", "mobs:rat")
minetest.register_alias("esmobs:egg_entity", "mobs:egg_entity")
minetest.register_alias("esmobs:egg", "mobs:egg")
minetest.register_alias("esmobs:chicken_egg_fried", "mobs:chicken_egg_fried")
minetest.register_alias("esmobs:chicken_raw", "mobs:chicken_raw")
minetest.register_alias("esmobs:chicken_cooked", "mobs:chicken_cooked")
minetest.register_alias("esmobs:magic_lasso", "mobs:magic_lasso")
minetest.register_alias("esmobs:net", "mobs:net")
minetest.register_alias("esmobs:shears", "mobs:shears")
minetest.register_alias("esmobs:feather", "mobs:feather")
minetest.register_alias("esmobs:saddle", "mobs:saddle")
minetest.register_alias("esmobs:bucket_milk", "mobs:bucket_milk")
minetest.register_alias("esmobs:cheese", "mobs:cheese")
minetest.register_alias("esmobs:cheeseblock", "mobs:cheeseblock")
minetest.register_alias("esmobs:cobweb", "mobs:cobweb")
minetest.register_alias("esmobs:spawner", "mobs:spawner")
minetest.register_alias("esmobs:bones", "mobs:bones")
minetest.register_alias("esmobs:fireball", "mobs:fireball")
minetest.register_alias("esmobs:arrow", "mobs:arrow")
minetest.register_alias("esmobs:arrow_diamond", "mobs:arrow_diamond")
minetest.register_alias("esmobs:arrow_box", "mobs:arrow_box")
minetest.register_alias("esmobs:arrow_diamond_box", "mobs:arrow_diamond_box")
minetest.register_alias("esmobs:arrow_entity", "mobs:arrow_entity")
minetest.register_alias("esmobs:bow_wood", "mobs:bow_wood")
minetest.register_alias("esmobs:arrow_diamond_entity", "mobs:arrow_diamond_entity")
minetest.register_alias("esmobs:arrow_diamond_entity", "mobs:arrow_diamond_entity")
minetest.register_alias("esmobs:bonebullet", "mobs:bonebullet")
minetest.register_alias("esmobs:bookbullet", "mobs:bookbullet")
minetest.register_alias("esmobs:axebullet", "mobs:axebullet")
minetest.register_alias("esmobs:cursed_stone", "default:goldblock")
minetest.register_alias("esmobs:blessed_stone", "default:goldblock")
minetest.register_alias("esmobs:stone", "default:leaves")
minetest.register_alias("esmobs:dirt", "default:leaves")


--===========================================
--===========================================
--fishing
minetest.register_alias("fishing:pole", "fishing:pole_wood")


--===========================================
--===========================================
--jukebox
minetest.register_alias("jdukebox:box", "default:diamondblock")


--===========================================
--===========================================
--lavender
minetest.register_alias("lavender:lavender_fruit", "flowers:rose")
minetest.register_alias("lavender:lavender", "flowers:viola")


--===========================================
--===========================================
--meru
minetest.register_alias("meru:destone", "default:desert_stone")
minetest.register_alias("meru:stone", "default:sandstone")


--===========================================
--===========================================
--moreores
minetest.register_alias("moreores:mineral_mithril", "default:stone_with_tin")
minetest.register_alias("moreores:mineral_silver", "default:stone_with_tin")
minetest.register_alias("moreores:mineral_tin", "default:stone_with_tin")
minetest.register_alias("moreores:mithril_block", "es:aikerumblock")
minetest.register_alias("moreores:silver_block", "es:rubyblock")
minetest.register_alias("moreores:tin_block", "default:steelblock")

minetest.register_alias("moreores:mithril_ingot", "es:infinium_goo")
minetest.register_alias("moreores:silver_ingot", "es:aikerum_crystal")
minetest.register_alias("moreores:tin_ingot", "es:ruby_crystal")

minetest.register_alias("moreores:mithril_lump", "default:mese")
minetest.register_alias("moreores:silver_lump", "default:gold_lump")
minetest.register_alias("moreores:tin_lump", "default:iron_lump")

minetest.register_alias("moreores:sword_mithril", "es:sword_aikerum")
minetest.register_alias("moreores:pick_mithril", "es:pick_aikerum")
minetest.register_alias("moreores:shovel_mithril", "es:shovel_aikerum")
minetest.register_alias("moreores:hoe_mithril", "farming:hoe_diamond")
minetest.register_alias("moreores:axe_mithril", "es:axe_aikerum")

minetest.register_alias("moreores:sword_silver", "es:sword_ruby")
minetest.register_alias("moreores:pick_silver", "es:pick_ruby")
minetest.register_alias("moreores:shovel_silver", "es:shovel_ruby")
minetest.register_alias("moreores:hoe_silver", "farming:hoe_diamond")
minetest.register_alias("moreores:axe_silver", "es:axe_ruby")

minetest.register_alias("3d_armor:helmet_mithril", "es:helmet_aikerum")
minetest.register_alias("3d_armor:chestplate_mithril", "es:chestplate_aikerum")
minetest.register_alias("3d_armor:leggings_mithril", "es:leggings_aikerum")
minetest.register_alias("3d_armor:boots_mithril", "es:boots_aikerum")


--===========================================
--===========================================
--moresnow
minetest.register_alias("moresnow:snow_top", "default:snow")
minetest.register_alias("moresnow:snow_fence_top", "default:snow")
minetest.register_alias("moresnow:snow_stair_top", "default:snow")
minetest.register_alias("moresnow:snow_slab_top", "default:snow")
minetest.register_alias("moresnow:snow_panel_top", "default:snow")
minetest.register_alias("moresnow:snow_micro_top", "default:snow")
minetest.register_alias("moresnow:snow_outer_stair_top", "default:snow")
minetest.register_alias("moresnow:snow_inner_stair_top", "default:snow")
minetest.register_alias("moresnow:snow_ramp_top", "default:snow")
minetest.register_alias("moresnow:snow_ramp_outer_top", "default:snow")
minetest.register_alias("moresnow:snow_ramp_inner_top", "default:snow")
--wool
minetest.register_alias("moresnow:wool_white", "stairs:slab1_wool_white")
minetest.register_alias("moresnow:wool_grey", "stairs:slab1_wool_grey")
minetest.register_alias("moresnow:wool_black", "stairs:slab1_wool_black")
minetest.register_alias("moresnow:wool_red", "stairs:slab1_wool_red")
minetest.register_alias("moresnow:wool_yellow", "stairs:slab1_wool_yellow")
minetest.register_alias("moresnow:wool_green", "stairs:slab1_wool_green")
minetest.register_alias("moresnow:wool_cyan", "stairs:slab1_wool_cyan")
minetest.register_alias("moresnow:wool_blue", "stairs:slab1_wool_blue")
minetest.register_alias("moresnow:wool_magenta", "stairs:slab1_wool_magenta")
minetest.register_alias("moresnow:wool_orange", "stairs:slab1_wool_orange")
minetest.register_alias("moresnow:wool_violet", "stairs:slab1_wool_violet")
minetest.register_alias("moresnow:wool_brown", "stairs:slab1_wool_brown")
minetest.register_alias("moresnow:wool_pink", "stairs:slab1_wool_pink")
minetest.register_alias("moresnow:wool_dark_grey", "stairs:slab1_wool_dark_grey")
minetest.register_alias("moresnow:wool_dark_green", "stairs:slab1_wool_dark_green")
minetest.register_alias("moresnow:wool_white_top", "stairs:slab1_wool_white")
minetest.register_alias("moresnow:wool_grey_top", "stairs:slab1_wool_grey")
minetest.register_alias("moresnow:wool_black_top", "stairs:slab1_wool_black")
minetest.register_alias("moresnow:wool_red_top", "stairs:slab1_wool_red")
minetest.register_alias("moresnow:wool_yellow_top", "stairs:slab1_wool_yellow")
minetest.register_alias("moresnow:wool_green_top", "stairs:slab1_wool_green")
minetest.register_alias("moresnow:wool_cyan_top", "stairs:slab1_wool_cyan")
minetest.register_alias("moresnow:wool_blue_top", "stairs:slab1_wool_blue")
minetest.register_alias("moresnow:wool_magenta_top", "stairs:slab1_wool_magenta")
minetest.register_alias("moresnow:wool_orange_top", "stairs:slab1_wool_orange")
minetest.register_alias("moresnow:wool_violet_top", "stairs:slab1_wool_violet")
minetest.register_alias("moresnow:wool_brown_top", "stairs:slab1_wool_brown")
minetest.register_alias("moresnow:wool_pink_top", "stairs:slab1_wool_pink")
minetest.register_alias("moresnow:wool_dark_grey_top", "stairs:slab1_wool_dark_grey")
minetest.register_alias("moresnow:wool_dark_green_top", "stairs:slab1_wool_dark_green")
--leaves
minetest.register_alias("moresnow:autumnleaves", "default:leaves")
minetest.register_alias("moresnow:autumnleaves_tree", "default:leaves")
minetest.register_alias("moresnow:winterleaves_tree", "default:leaves")
minetest.register_alias("moresnow:snow_soil", "default:dirt_with_snow")


--===========================================
--===========================================
--moretrees
es.treelist = {
	{"beech",	"Beech Tree"},
	{"apple_tree",	"Apple Tree"},
	{"oak",		"Oak Tree",		"acorn",	"Acorn",	{-0.2, -0.5, -0.2, 0.2, 0, 0.2}, 0.8 },
	{"sequoia",	"Giant Sequoia"},
	{"birch",	"Birch Tree"},
	{"palm",	"Palm Tree",		"coconut",	"Coconut",	{-0.2, -0.5, -0.2, 0.2, 0, 0.2}, 1.0 },
	{"spruce",	"Spruce Tree",		"spruce_cone",	"Spruce Cone",	{-0.2, -0.5, -0.2, 0.2, 0, 0.2}, 0.8 },
	{"pine",	"Pine Tree",		"pine_cone",	"Pine Cone",	{-0.2, -0.5, -0.2, 0.2, 0, 0.2}, 0.8 },
	{"willow",	"Willow Tree"},
	{"rubber_tree",	"Rubber Tree"},
	{"jungletree",	"Jungle Tree"},
	{"fir",		"Douglas Fir",		"fir_cone",	"Fir Cone",	{-0.2, -0.5, -0.2, 0.2, 0, 0.2}, 0.8 },
}

for i in ipairs(es.treelist) do
	local treename = es.treelist[i][1]
	local treedesc = es.treelist[i][2]
	local fruit = es.treelist[i][3]
	local fruitdesc = es.treelist[i][4]
	local selbox = es.treelist[i][5]
	local vscale = es.treelist[i][6]
end


--[[
minetest.register_alias("moretrees:"..treename.."_planks", "default:junglewood")
minetest.register_alias("moretrees:"..treename.."_trunk", "default:acacia_tree")
minetest.register_alias("moretrees:"..treename.."_sapling", "default:sapling")
minetest.register_alias("moretrees:"..treename.."_leaves", "default:leaves")
]]

--aspen
minetest.register_alias("aspen:sapling", "default:aspen_sapling")
minetest.register_alias("aspen:leaves", "default:aspen_leaves")
--beech
minetest.register_alias("moretrees:beech_planks", "default:aspen_wood")
minetest.register_alias("moretrees:beech_trunk", "default:aspen_tree")
minetest.register_alias("moretrees:beech_sapling", "default:aspen_sapling")
minetest.register_alias("moretrees:beech_sapling_ongen", "default:aspen_sapling")
minetest.register_alias("moretrees:beech_leaves", "default:aspen_leaves")
--apple
minetest.register_alias("moretrees:apple_tree_planks", "default:wood")
minetest.register_alias("moretrees:apple_tree_trunk", "default:tree")
minetest.register_alias("moretrees:apple_tree_sapling", "default:sapling")
minetest.register_alias("moretrees:apple_tree_sapling_ongen", "default:sapling")
minetest.register_alias("moretrees:apple_tree_leaves", "default:leaves")
--oak
minetest.register_alias("moretrees:oak_planks", "default:wood")
minetest.register_alias("moretrees:oak_trunk", "default:tree")
minetest.register_alias("moretrees:oak_sapling", "default:sapling")
minetest.register_alias("moretrees:oak_sapling_ongen", "default:sapling")
minetest.register_alias("moretrees:oak_leaves", "default:leaves")
--sequoia
minetest.register_alias("moretrees:sequoia_planks", "default:acacia_wood")
minetest.register_alias("moretrees:sequoia_trunk", "default:acacia_tree")
minetest.register_alias("moretrees:sequoia_sapling", "default:acacia_sapling")
minetest.register_alias("moretrees:sequoia_sapling_ongen", "default:acacia_sapling")
minetest.register_alias("moretrees:sequoia_leaves", "default:acacia_leaves")
--birch
minetest.register_alias("moretrees:birch_planks", "default:aspen_wood")
minetest.register_alias("moretrees:birch_trunk", "default:aspen_tree")
minetest.register_alias("moretrees:birch_sapling", "default:aspen_sapling")
minetest.register_alias("moretrees:birch_sapling_ongen", "default:aspen_sapling")
minetest.register_alias("moretrees:birch_leaves", "default:aspen_leaves")
--palm
minetest.register_alias("moretrees:palm_planks", "default:junglewood")
minetest.register_alias("moretrees:palm_trunk", "default:jungletree")
minetest.register_alias("moretrees:palm_sapling", "default:junglesapling")
minetest.register_alias("moretrees:palm_sapling_ongen", "default:junglesapling")
minetest.register_alias("moretrees:palm_leaves", "default:jungleleaves")
--spruce
minetest.register_alias("moretrees:spruce_planks", "default:pine_wood")
minetest.register_alias("moretrees:spruce_trunk", "default:pine_tree")
minetest.register_alias("moretrees:spruce_sapling", "default:pine_sapling")
minetest.register_alias("moretrees:spruce_sapling_ongen", "default:pine_sapling")
minetest.register_alias("moretrees:spruce_leaves", "default:pine_needles")
--pine
minetest.register_alias("moretrees:pine_planks", "default:pine_wood")
minetest.register_alias("moretrees:pine_trunk", "default:pine_tree")
minetest.register_alias("moretrees:pine_sapling", "default:pine_sapling")
minetest.register_alias("moretrees:pine_sapling_ongen", "default:pine_sapling")
minetest.register_alias("moretrees:pine_leaves", "default:pine_needles")
--willow
minetest.register_alias("moretrees:willow_planks", "default:wood")
minetest.register_alias("moretrees:willow_trunk", "default:tree")
minetest.register_alias("moretrees:willow_sapling", "default:sapling")
minetest.register_alias("moretrees:willow_sapling_ongen", "default:sapling")
minetest.register_alias("moretrees:willow_leaves", "default:leaves")
--rubber
minetest.register_alias("moretrees:rubber_tree_planks", "default:aspen_wood")
minetest.register_alias("moretrees:rubber_tree_trunk", "default:aspen_tree")
minetest.register_alias("moretrees:rubber_tree_trunk_empty", "default:aspen_tree")
minetest.register_alias("moretrees:rubber_tree_sapling", "default:aspen_sapling")
minetest.register_alias("moretrees:rubber_tree_sapling_ongen", "default:aspen_sapling")
minetest.register_alias("moretrees:rubber_tree_leaves", "default:acacia_leaves")
--jungle
minetest.register_alias("moretrees:jungletree_planks", "default:junglewood")
minetest.register_alias("moretrees:jungletree_trunk", "default:jungletree")
minetest.register_alias("moretrees:jungletree_sapling", "default:junglesapling")
minetest.register_alias("moretrees:jungletree_sapling_ongen", "default:junglesapling")
minetest.register_alias("moretrees:jungletree_leaves", "default:jungleleaves")
minetest.register_alias("moretrees:jungletree_leaves_green", "default:leaves")
minetest.register_alias("moretrees:jungletree_leaves_yellow", "default:acacia_leaves")
minetest.register_alias("moretrees:jungletree_leaves_red", "default:acacia_leaves")
--fir
minetest.register_alias("moretrees:fir_planks", "default:pine_wood")
minetest.register_alias("moretrees:fir_trunk", "default:pine_tree")
minetest.register_alias("moretrees:fir_sapling", "default:pine_sapling")
minetest.register_alias("moretrees:fir_sapling_ongen", "default:pine_sapling")
minetest.register_alias("moretrees:fir_leaves", "default:pine_needles")
minetest.register_alias("moretrees:fir_leaves_bright", "default:pine_needles")
--fruits
minetest.register_alias("moretrees:coconut", "farming:cocoa_2")
minetest.register_alias("moretrees:spruce_cone", "farming:melon_8")
minetest.register_alias("moretrees:fir_cone", "farming:cocoa_2")
minetest.register_alias("moretrees:pine_cone", "farming:cocoa_2")
minetest.register_alias("moretrees:acorn", "farming:cocoa_2")


--===========================================
--===========================================
--pathv6alt
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


--===========================================
--===========================================
--protector
minetest.register_alias("protector_mese:protect", "protector:protect")


--===========================================
--===========================================
--screwdriver
minetest.register_alias("es:screwdriver","screwdriver:screwdriver")


--===========================================
--===========================================
--technic
--CONCRETE STUFF
minetest.register_alias("technic:concrete_post_platform", "default:copperblock")
minetest.register_alias("technic:blast_resistant_concrete", "es:infiniumblock")
minetest.register_alias("technic:concrete", "es:stone_with_infinium")
minetest.register_alias("technic:rebar", "default:copperblock")
minetest.register_alias("technic:concrete_post", "default:fence_wood")
minetest.register_alias("technic:concrete_post0", "default:fence_wood")
minetest.register_alias("technic:concrete_post32", "default:fence_wood")
minetest.register_alias("technic:concrete_post12", "default:fence_wood")
minetest.register_alias("technic:concrete_post33", "default:fence_wood")
minetest.register_alias("technic:concrete_post3", "default:fence_wood")
minetest.register_alias("technic:concrete_post44", "default:fence_wood")
minetest.register_alias("technic:concrete_post28", "default:fence_wood")
minetest.register_alias("technic:concrete_post35", "default:fence_wood")
minetest.register_alias("technic:concrete_post19", "default:fence_wood")

--LV MACHINE
minetest.register_alias("technic:lv_alloy_furnace", "default:furnace")
minetest.register_alias("technic:lv_electric_furnace", "default:furnace")
minetest.register_alias("technic:coal_alloy_furnace", "default:furnace")
minetest.register_alias("technic:lv_compressor", "default:furnace")
minetest.register_alias("technic:lv_extractor", "default:furnace")
minetest.register_alias("technic:lv_generator", "es:emeraldblock")
minetest.register_alias("technic:geothermal", "es:rubyblock")
minetest.register_alias("technic:lv_grinder", "default:furnace")
minetest.register_alias("technic:water_mill", "es:aikerumblock")
minetest.register_alias("technic:water_mill_active", "es:aikerumblock")
minetest.register_alias("technic:geothermal_active", "es:rubyblock")
minetest.register_alias("technic:lv_generator_active", "es:emeraldblock")
minetest.register_alias("technic:cnc", "default:furnace")
minetest.register_alias("technic:music_player", "default:furnace")

--MV MACHINE
minetest.register_alias("technic:mv_alloy_furnace", "default:furnace")
minetest.register_alias("technic:mv_compressor", "default:furnace")
minetest.register_alias("technic:mv_extractor", "default:furnace")
minetest.register_alias("technic:mv_generator", "es:emeraldblock")
minetest.register_alias("technic:mv_generator_active", "es:emeraldblock")
minetest.register_alias("technic:mv_grinder", "default:furnace")
minetest.register_alias("technic:mv_electric_furnace", "default:furnace")
minetest.register_alias("technic:tool_workshop", "default:furnace")
minetest.register_alias("technic:wind_mill", "default:steelblock")
minetest.register_alias("technic:wind_mill_frame", "default:glass")

--HV MACHINE
minetest.register_alias("technic:forcefield", "default:diamondblock")
minetest.register_alias("technic:hv_generator", "es:emeraldblock")
minetest.register_alias("technic:hv_generator_active", "es:emeraldblock")
minetest.register_alias("technic:forcefield_emitter_on", "es:rubyblock")
minetest.register_alias("technic:forcefield_emitter_off", "es:rubyblock")
minetest.register_alias("technic:hv_nuclear_reactor_core", "default:meselamp")
minetest.register_alias("technic:hv_nuclear_reactor_core_active", "default:meselamp")
minetest.register_alias("technic:bucket_corium", "bucket:bucket_water")
minetest.register_alias("technic:corium_source", "default:water_source")
minetest.register_alias("technic:corium_flowing", "default:water_flowing")
minetest.register_alias("technic:chernobylite_block", "default:mese")

--BATTERIES
minetest.register_alias("technic:lv_battery_box0", "default:stone_with_diamond")
minetest.register_alias("technic:mv_battery_box0", "default:stone_with_diamond")
minetest.register_alias("technic:hv_battery_box0", "default:stone_with_diamond")
minetest.register_alias("technic:lv_battery_box1", "default:stone_with_diamond")
minetest.register_alias("technic:mv_battery_box1", "default:stone_with_diamond")
minetest.register_alias("technic:hv_battery_box1", "default:stone_with_diamond")
minetest.register_alias("technic:lv_battery_box2", "default:stone_with_diamond")
minetest.register_alias("technic:mv_battery_box2", "default:stone_with_diamond")
minetest.register_alias("technic:hv_battery_box2", "default:stone_with_diamond")
minetest.register_alias("technic:lv_battery_box3", "default:stone_with_diamond")
minetest.register_alias("technic:mv_battery_box3", "default:stone_with_diamond")
minetest.register_alias("technic:hv_battery_box3", "default:stone_with_diamond")
minetest.register_alias("technic:lv_battery_box4", "default:stone_with_diamond")
minetest.register_alias("technic:mv_battery_box4", "default:stone_with_diamond")
minetest.register_alias("technic:hv_battery_box4", "default:stone_with_diamond")
minetest.register_alias("technic:lv_battery_box5", "default:stone_with_diamond")
minetest.register_alias("technic:mv_battery_box5", "default:stone_with_diamond")
minetest.register_alias("technic:hv_battery_box5", "default:stone_with_diamond")
minetest.register_alias("technic:lv_battery_box6", "default:stone_with_diamond")
minetest.register_alias("technic:mv_battery_box6", "default:stone_with_diamond")
minetest.register_alias("technic:hv_battery_box6", "default:stone_with_diamond")
minetest.register_alias("technic:lv_battery_box7", "default:stone_with_diamond")
minetest.register_alias("technic:mv_battery_box7", "default:stone_with_diamond")
minetest.register_alias("technic:hv_battery_box7", "default:stone_with_diamond")
minetest.register_alias("technic:lv_battery_box8", "default:stone_with_diamond")
minetest.register_alias("technic:mv_battery_box8", "default:stone_with_diamond")
minetest.register_alias("technic:hv_battery_box8", "default:stone_with_diamond")

--MAIN ELECTRICAL HUBS
minetest.register_alias("technic:switching_station", "es:stone_with_infinium")
minetest.register_alias("technic:supply_converter", "es:infiniumblock")

--LV WIRE STUFF
minetest.register_alias("technic:lv_cable", "default:copperblock")
minetest.register_alias("technic:lv_cable12", "default:copperblock")
minetest.register_alias("technic:lv_cable3", "default:copperblock")
minetest.register_alias("technic:lv_cable48", "default:copperblock")
minetest.register_alias("technic:lv_cable45", "default:copperblock")
minetest.register_alias("technic:lv_cable17", "default:copperblock")
minetest.register_alias("technic:lv_cable5", "default:copperblock")
minetest.register_alias("technic:lv_cable33", "default:copperblock")
minetest.register_alias("technic:lv_cable10", "default:copperblock")
minetest.register_alias("technic:lv_cable44", "default:copperblock")
minetest.register_alias("technic:lv_cable19", "default:copperblock")
minetest.register_alias("technic:lv_cable27", "default:copperblock")
minetest.register_alias("technic:lv_cable25", "default:copperblock")
minetest.register_alias("technic:lv_cable59", "default:copperblock")
minetest.register_alias("technic:lv_cable43", "default:copperblock")
minetest.register_alias("technic:lv_cable9", "default:copperblock")
minetest.register_alias("technic:lv_cable42", "default:copperblock")
minetest.register_alias("technic:lv_cable18", "default:copperblock")
minetest.register_alias("technic:lv_cable41", "default:copperblock")
minetest.register_alias("technic:lv_cable57", "default:copperblock")
minetest.register_alias("technic:lv_cable58", "default:copperblock")
minetest.register_alias("technic:lv_cable24", "default:copperblock")
minetest.register_alias("technic:lv_cable56", "default:copperblock")
minetest.register_alias("technic:lv_cable40", "default:copperblock")
minetest.register_alias("technic:lv_cable11", "default:copperblock")
minetest.register_alias("technic:lv_cable26", "default:copperblock")

minetest.register_alias("technic:lv_cable28", "default:copperblock")
minetest.register_alias("technic:lv_cable60", "default:copperblock")
minetest.register_alias("technic:lv_cable52", "default:copperblock")
minetest.register_alias("technic:lv_cable37", "default:copperblock")
minetest.register_alias("technic:lv_cable14", "default:copperblock")
minetest.register_alias("technic:lv_cable49", "default:copperblock")
minetest.register_alias("technic:lv_cable13", "default:copperblock")
minetest.register_alias("technic:lv_cable51", "default:copperblock")
minetest.register_alias("technic:lv_cable36", "default:copperblock")
minetest.register_alias("technic:lv_cable20", "default:copperblock")
minetest.register_alias("technic:lv_cable16", "default:copperblock")
minetest.register_alias("technic:lv_cable50", "default:copperblock")
minetest.register_alias("technic:lv_cable8", "default:copperblock")
minetest.register_alias("technic:lv_cable4", "default:copperblock")
minetest.register_alias("technic:lv_cable34", "default:copperblock")
minetest.register_alias("technic:lv_cable15", "default:copperblock")
minetest.register_alias("technic:lv_cable2", "default:copperblock")
minetest.register_alias("technic:lv_cable1", "default:copperblock")
minetest.register_alias("technic:lv_cable22", "default:copperblock")
minetest.register_alias("technic:lv_cable53", "default:copperblock")
minetest.register_alias("technic:lv_cable47", "default:copperblock")

--MV WIRE STUFF
minetest.register_alias("technic:mv_cable", "default:bronzeblock")
minetest.register_alias("technic:mv_cable1", "default:bronzeblock")
minetest.register_alias("technic:mv_cable12", "default:bronzeblock")
minetest.register_alias("technic:mv_cable3", "default:bronzeblock")
minetest.register_alias("technic:mv_cable48", "default:bronzeblock")
minetest.register_alias("technic:mv_cable45", "default:bronzeblock")
minetest.register_alias("technic:mv_cable17", "default:bronzeblock")
minetest.register_alias("technic:mv_cable5", "default:bronzeblock")
minetest.register_alias("technic:mv_cable33", "default:bronzeblock")
minetest.register_alias("technic:mv_cable10", "default:bronzeblock")
minetest.register_alias("technic:mv_cable44", "default:bronzeblock")
minetest.register_alias("technic:mv_cable19", "default:bronzeblock")
minetest.register_alias("technic:mv_cable27", "default:bronzeblock")
minetest.register_alias("technic:mv_cable25", "default:bronzeblock")
minetest.register_alias("technic:mv_cable59", "default:bronzeblock")
minetest.register_alias("technic:mv_cable43", "default:bronzeblock")
minetest.register_alias("technic:mv_cable9", "default:bronzeblock")
minetest.register_alias("technic:mv_cable42", "default:bronzeblock")
minetest.register_alias("technic:mv_cable18", "default:bronzeblock")
minetest.register_alias("technic:mv_cable41", "default:bronzeblock")
minetest.register_alias("technic:mv_cable57", "default:bronzeblock")
minetest.register_alias("technic:mv_cable58", "default:bronzeblock")
minetest.register_alias("technic:mv_cable24", "default:bronzeblock")
minetest.register_alias("technic:mv_cable56", "default:bronzeblock")
minetest.register_alias("technic:mv_cable40", "default:bronzeblock")
minetest.register_alias("technic:mv_cable11", "default:bronzeblock")
minetest.register_alias("technic:mv_cable26", "default:bronzeblock")
minetest.register_alias("technic:mv_cable32", "default:bronzeblock")

minetest.register_alias("technic:mv_cable52", "default:bronzeblock")
minetest.register_alias("technic:mv_cable60", "default:bronzeblock")
minetest.register_alias("technic:mv_cable61", "default:bronzeblock")
minetest.register_alias("technic:mv_cable28", "default:bronzeblock")
minetest.register_alias("technic:mv_cable36", "default:bronzeblock")
minetest.register_alias("technic:mv_cable20", "default:bronzeblock")
minetest.register_alias("technic:mv_cable34", "default:bronzeblock")
minetest.register_alias("technic:mv_cable16", "default:bronzeblock")
minetest.register_alias("technic:mv_cable13", "default:bronzeblock")
minetest.register_alias("technic:mv_cable39", "default:bronzeblock")
minetest.register_alias("technic:mv_cable55", "default:bronzeblock")
minetest.register_alias("technic:mv_cable38", "default:bronzeblock")
minetest.register_alias("technic:mv_cable54", "default:bronzeblock")
minetest.register_alias("technic:mv_cable22", "default:bronzeblock")
minetest.register_alias("technic:mv_cable21", "default:bronzeblock")
minetest.register_alias("technic:mv_cable23", "default:bronzeblock")
minetest.register_alias("technic:mv_cable53", "default:bronzeblock")
minetest.register_alias("technic:mv_cable35", "default:bronzeblock")
minetest.register_alias("technic:mv_cable6", "default:bronzeblock")
minetest.register_alias("technic:mv_cable4", "default:bronzeblock")
minetest.register_alias("technic:mv_cable49", "default:bronzeblock")
minetest.register_alias("technic:mv_cable7", "default:bronzeblock")
minetest.register_alias("technic:mv_cable14", "default:bronzeblock")
minetest.register_alias("technic:mv_cable15", "default:bronzeblock")
minetest.register_alias("technic:mv_cable30", "default:bronzeblock")
minetest.register_alias("technic:mv_cable37", "default:bronzeblock")
minetest.register_alias("technic:mv_cable46", "default:bronzeblock")


--HV WIRE STUFF
minetest.register_alias("technic:hv_cable", "default:goldblock")
minetest.register_alias("technic:hv_cable12", "default:goldblock")
minetest.register_alias("technic:hv_cable3", "default:goldblock")
minetest.register_alias("technic:hv_cable48", "default:goldblock")
minetest.register_alias("technic:hv_cable45", "default:goldblock")
minetest.register_alias("technic:hv_cable17", "default:goldblock")
minetest.register_alias("technic:hv_cable5", "default:goldblock")
minetest.register_alias("technic:hv_cable33", "default:goldblock")
minetest.register_alias("technic:hv_cable10", "default:goldblock")
minetest.register_alias("technic:hv_cable44", "default:goldblock")
minetest.register_alias("technic:hv_cable19", "default:goldblock")
minetest.register_alias("technic:hv_cable27", "default:goldblock")
minetest.register_alias("technic:hv_cable25", "default:goldblock")
minetest.register_alias("technic:hv_cable59", "default:goldblock")
minetest.register_alias("technic:hv_cable43", "default:goldblock")
minetest.register_alias("technic:hv_cable9", "default:goldblock")
minetest.register_alias("technic:hv_cable42", "default:goldblock")
minetest.register_alias("technic:hv_cable18", "default:goldblock")
minetest.register_alias("technic:hv_cable41", "default:goldblock")
minetest.register_alias("technic:hv_cable57", "default:goldblock")
minetest.register_alias("technic:hv_cable58", "default:goldblock")
minetest.register_alias("technic:hv_cable24", "default:goldblock")
minetest.register_alias("technic:hv_cable56", "default:goldblock")
minetest.register_alias("technic:hv_cable40", "default:goldblock")
minetest.register_alias("technic:hv_cable11", "default:goldblock")
minetest.register_alias("technic:hv_cable26", "default:goldblock")

minetest.register_alias("technic:hv_cable30", "default:goldblock")
minetest.register_alias("technic:hv_cable28", "default:goldblock")
minetest.register_alias("technic:hv_cable34", "default:goldblock")
minetest.register_alias("technic:hv_cable4", "default:goldblock")
minetest.register_alias("technic:hv_cable50", "default:goldblock")
minetest.register_alias("technic:hv_cable51", "default:goldblock")
minetest.register_alias("technic:hv_cable35", "default:goldblock")
minetest.register_alias("technic:hv_cable37", "default:goldblock")
minetest.register_alias("technic:hv_cable23", "default:goldblock")
minetest.register_alias("technic:hv_cable54", "default:goldblock")
minetest.register_alias("technic:hv_cable7", "default:goldblock")
minetest.register_alias("technic:hv_cable1", "default:goldblock")
minetest.register_alias("technic:hv_cable36", "default:goldblock")
minetest.register_alias("technic:hv_cable32", "default:goldblock")
minetest.register_alias("technic:hv_cable31", "default:goldblock")
minetest.register_alias("technic:hv_cable6", "default:goldblock")
minetest.register_alias("technic:hv_cable13", "default:goldblock")
minetest.register_alias("technic:hv_cable2", "default:goldblock")
minetest.register_alias("technic:hv_cable20", "default:goldblock")
minetest.register_alias("technic:hv_cable8", "default:goldblock")
minetest.register_alias("technic:hv_cable0", "default:goldblock")

--SOLAR STUFF
minetest.register_alias("technic:solar_array_lv", "es:aikerumblock")
minetest.register_alias("technic:solar_array_mv", "es:aikerumblock")
minetest.register_alias("technic:solar_array_hv", "es:aikerumblock")
minetest.register_alias("technic:solar_panel", "es:aikerumblock")

--MG STUFF
minetest.register_alias("technic:marble", "es:marble")
minetest.register_alias("technic:granite", "es:granite")
minetest.register_alias("technic:marble_bricks", "es:marble_bricks")
--minetest.register_alias("technic:mineral_uranium", "es:depleted_uranium")
--minetest.register_alias("technic:mineral_chromium", "es:stone_with_aikerum")
--minetest.register_alias("technic:mineral_zinc", "es:stone_with_emerald")
minetest.register_alias("technic:mineral_uranium", "es:depleted_coal")
minetest.register_alias("technic:mineral_chromium", "es:stone_with_coal")
minetest.register_alias("technic:mineral_zinc", "es:stone_with_coal")

--BLOCKS
minetest.register_alias("technic:cast_iron_block", "default:goldblock")
minetest.register_alias("technic:uranium_block", "es:emeraldblock")
minetest.register_alias("technic:chromium_block", "es:emeraldblock")
minetest.register_alias("technic:zinc_block", "default:steelblock")
minetest.register_alias("technic:carbon_steel_block", "default:coalblock")
minetest.register_alias("technic:stainless_steel_block", "default:steelblock")
minetest.register_alias("technic:brass_block", "default:bronzeblock")

--INGOTS
minetest.register_alias("technic:uranium", "es:depleted_uranium")
minetest.register_alias("technic:chromium_lump", "es:emerald_crystal")
minetest.register_alias("technic:chromium_ingot", "es:emerald_crystal")
minetest.register_alias("technic:zinc_lump", "es:ruby_crystal")
minetest.register_alias("technic:zinc_ingot", "es:ruby_crystal")
minetest.register_alias("technic:brass_ingot", "default:bronze_ingot")
minetest.register_alias("technic:wrought_iron_ingot", "default:steel_ingot")
minetest.register_alias("technic:cast_iron_ingot", "default:steel_ingot")
minetest.register_alias("technic:carbon_steel_ingot", "default:coal_lump")
minetest.register_alias("technic:stainless_steel_ingot", "default:steel_ingot")

--ORES AND MISC
minetest.register_alias("technic:silicon_wafer", "default:steel_ingot")
minetest.register_alias("technic:doped_silicon_wafer", "default:steel_ingot")
minetest.register_alias("technic:enriched_uranium", "default:steel_ingot")
minetest.register_alias("technic:uranium_fuel", "default:steel_ingot")
minetest.register_alias("technic:diamond_drill_head", "default:steel_ingot")
minetest.register_alias("technic:blue_energy_crystal", "default:steel_ingot")
minetest.register_alias("technic:green_energy_crystal", "default:steel_ingot")
minetest.register_alias("technic:red_energy_crystal", "default:steel_ingot")
minetest.register_alias("technic:fine_copper_wire", "default:steel_ingot")
minetest.register_alias("technic:fine_gold_wire", "default:steel_ingot")
minetest.register_alias("technic:fine_silver_wire", "default:steel_ingot")
minetest.register_alias("technic:copper_coil", "default:steel_ingot")
minetest.register_alias("technic:motor", "default:steel_ingot")
minetest.register_alias("technic:lv_transformer", "default:steel_ingot")
minetest.register_alias("technic:mv_transformer", "default:steel_ingot")
minetest.register_alias("technic:hv_transformer", "default:steel_ingot")
minetest.register_alias("technic:control_logic_unit", "default:steel_ingot")
minetest.register_alias("technic:mixed_metal_ingot", "default:steel_ingot")
minetest.register_alias("technic:composite_plate", "default:steel_ingot")
minetest.register_alias("technic:copper_plate", "default:steel_ingot")
minetest.register_alias("technic:carbon_plate", "default:steel_ingot")
minetest.register_alias("technic:graphite", "default:steel_ingot")
minetest.register_alias("technic:carbon_cloth", "default:steel_ingot")
minetest.register_alias("technic:machine_casing", "default:glass")


--===========================================
--===========================================
--vendor
minetest.register_alias("vendor:vendor", "smartshop:shop")
minetest.register_alias("vendor:depositor", "smartshop:shop")
minetest.register_alias("vendorgoldblock:vendor", "smartshop:shop")
minetest.register_alias("vendorgoldblock:depositor", "smartshop:shop")


--===========================================
--===========================================
--villages
minetest.register_alias("mg_villages:torch", "default:torch")
minetest.register_alias("handle_schematics:support", "default:ladder")
minetest.register_alias("mg_villages:road", "default:gravel")
minetest.register_alias("mg_villages:soil", "default:dirt")
minetest.register_alias("mg_villages:desert_sand_soil", "default:desert_sand")
minetest.register_alias("mg_villages:plotmarker", "stairs:slab_stonebrick")
minetest.register_alias("mg_villages:lava_flowing_tamed", "default:lava_flowing")
minetest.register_alias("mg_villages:lava_source_tamed", "default:lava_source")






