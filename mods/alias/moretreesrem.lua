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





--[[
moretrees.enable_apple_tree		= false
moretrees.enable_oak			= false
moretrees.enable_sequoia		= false
moretrees.enable_palm			= false
moretrees.enable_pine			= false
moretrees.enable_rubber_tree		= false
moretrees.enable_willow			= false
moretrees.enable_birch			= false
moretrees.enable_spruce			=false
moretrees.enable_jungle_tree		=false
moretrees.enable_fir			=false
moretrees.enable_beech			= false

]]



--"moretrees:"..treename.."_planks"
--"moretrees:"..treename.."_trunk"
-- "moretrees:"..treename.."_sapling"
alias.treelist = {
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

for i in ipairs(alias.treelist) do
	local treename = alias.treelist[i][1]
	local treedesc = alias.treelist[i][2]
	local fruit = alias.treelist[i][3]
	local fruitdesc = alias.treelist[i][4]
	local selbox = alias.treelist[i][5]
	local vscale = alias.treelist[i][6]
end


--[[
minetest.register_alias("moretrees:"..treename.."_planks", "default:junglewood")
minetest.register_alias("moretrees:"..treename.."_trunk", "default:acacia_tree")
minetest.register_alias("moretrees:"..treename.."_sapling", "default:sapling")
minetest.register_alias("moretrees:"..treename.."_leaves", "default:leaves")
]]

minetest.register_alias("aspen:sapling", "default:aspen_sapling")
minetest.register_alias("aspen:leaves", "default:aspen_leaves")


minetest.register_alias("moretrees:beech_planks", "default:aspen_wood")
minetest.register_alias("moretrees:beech_trunk", "default:aspen_tree")
minetest.register_alias("moretrees:beech_sapling", "default:aspen_sapling")
minetest.register_alias("moretrees:beech_sapling_ongen", "default:aspen_sapling")
minetest.register_alias("moretrees:beech_leaves", "default:aspen_leaves")

minetest.register_alias("moretrees:apple_tree_planks", "default:wood")
minetest.register_alias("moretrees:apple_tree_trunk", "default:tree")
minetest.register_alias("moretrees:apple_tree_sapling", "default:sapling")
minetest.register_alias("moretrees:apple_tree_sapling_ongen", "default:sapling")
minetest.register_alias("moretrees:apple_tree_leaves", "default:leaves")

minetest.register_alias("moretrees:oak_planks", "default:wood")
minetest.register_alias("moretrees:oak_trunk", "default:tree")
minetest.register_alias("moretrees:oak_sapling", "default:sapling")
minetest.register_alias("moretrees:oak_sapling_ongen", "default:sapling")
minetest.register_alias("moretrees:oak_leaves", "default:leaves")

minetest.register_alias("moretrees:sequoia_planks", "default:acacia_wood")
minetest.register_alias("moretrees:sequoia_trunk", "default:acacia_tree")
minetest.register_alias("moretrees:sequoia_sapling", "default:acacia_sapling")
minetest.register_alias("moretrees:sequoia_sapling_ongen", "default:acacia_sapling")
minetest.register_alias("moretrees:sequoia_leaves", "default:acacia_leaves")

minetest.register_alias("moretrees:birch_planks", "default:aspen_wood")
minetest.register_alias("moretrees:birch_trunk", "default:aspen_tree")
minetest.register_alias("moretrees:birch_sapling", "default:aspen_sapling")
minetest.register_alias("moretrees:birch_sapling_ongen", "default:aspen_sapling")
minetest.register_alias("moretrees:birch_leaves", "default:aspen_leaves")

minetest.register_alias("moretrees:palm_planks", "default:junglewood")
minetest.register_alias("moretrees:palm_trunk", "default:jungletree")
minetest.register_alias("moretrees:palm_sapling", "default:junglesapling")
minetest.register_alias("moretrees:palm_sapling_ongen", "default:junglesapling")
minetest.register_alias("moretrees:palm_leaves", "default:jungleleaves")

minetest.register_alias("moretrees:spruce_planks", "default:pine_wood")
minetest.register_alias("moretrees:spruce_trunk", "default:pine_tree")
minetest.register_alias("moretrees:spruce_sapling", "default:pine_sapling")
minetest.register_alias("moretrees:spruce_sapling_ongen", "default:pine_sapling")
minetest.register_alias("moretrees:spruce_leaves", "default:pine_needles")

minetest.register_alias("moretrees:pine_planks", "default:pine_wood")
minetest.register_alias("moretrees:pine_trunk", "default:pine_tree")
minetest.register_alias("moretrees:pine_sapling", "default:pine_sapling")
minetest.register_alias("moretrees:pine_sapling_ongen", "default:pine_sapling")
minetest.register_alias("moretrees:pine_leaves", "default:pine_needles")

minetest.register_alias("moretrees:willow_planks", "default:wood")
minetest.register_alias("moretrees:willow_trunk", "default:tree")
minetest.register_alias("moretrees:willow_sapling", "default:sapling")
minetest.register_alias("moretrees:willow_sapling_ongen", "default:sapling")
minetest.register_alias("moretrees:willow_leaves", "default:leaves")

minetest.register_alias("moretrees:rubber_tree_planks", "default:aspen_wood")
minetest.register_alias("moretrees:rubber_tree_trunk", "default:aspen_tree")
minetest.register_alias("moretrees:rubber_tree_trunk_empty", "default:aspen_tree")
minetest.register_alias("moretrees:rubber_tree_sapling", "default:aspen_sapling")
minetest.register_alias("moretrees:rubber_tree_sapling_ongen", "default:aspen_sapling")
minetest.register_alias("moretrees:rubber_tree_leaves", "default:acacia_leaves")

minetest.register_alias("moretrees:jungletree_planks", "default:junglewood")
minetest.register_alias("moretrees:jungletree_trunk", "default:jungletree")
minetest.register_alias("moretrees:jungletree_sapling", "default:junglesapling")
minetest.register_alias("moretrees:jungletree_sapling_ongen", "default:junglesapling")
minetest.register_alias("moretrees:jungletree_leaves", "default:jungleleaves")
minetest.register_alias("moretrees:jungletree_leaves_green", "default:leaves")
minetest.register_alias("moretrees:jungletree_leaves_yellow", "default:acacia_leaves")
minetest.register_alias("moretrees:jungletree_leaves_red", "default:acacia_leaves")

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






