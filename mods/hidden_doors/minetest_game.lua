--[[

   Hidden Doors minetest_game.lua

   Copyright 2017 Hamlet <h4mlet@riseup.net>, Napiophelios

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.

]]--


--[[

   Stone based doors
   -----------------
   (1. Material 2. Cobble variant 3. Brick variant 4. Modified forms)

]]--

hidden_doors.register_hidden_doors("default", "stone", recipeItem1,
   "stairs:slab_stone", "stairs:slab_stone", S("Stone"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "cobble", recipeItem1,
   "stairs:slab_cobble", "stairs:slab_cobble", S("Cobble"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "stone_brick", recipeItem1,
   "stairs:slab_stonebrick", "stairs:slab_stonebrick", S("Stone Brick"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "stone_block", recipeItem1,
   "stairs:slab_stone_block", "stairs:slab_stone_block",
   S("Stone Block"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "mossycobble", recipeItem1,
   "stairs:slab_mossycobble", "stairs:slab_mossycobble",
   S("Mossy Cobble"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "desert_stone", recipeItem1,
   "stairs:slab_desert_stone", "stairs:slab_desert_stone",
   S("Desert Stone"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "desert_cobble", recipeItem1,
   "stairs:slab_desert_cobble", "stairs:slab_desert_cobble",
   S("Desert Cobble"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "desert_stone_brick",
   recipeItem1, "stairs:slab_desert_stonebrick",
   "stairs:slab_desert_stonebrick", S("Desert Stone Brick"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "desert_stone_block",
   recipeItem1, "stairs:slab_desert_stone_block",
   "stairs:slab_desert_stone_block", S("Desert Stone Block"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "sandstone", recipeItem1,
   "stairs:slab_sandstone", "stairs:slab_sandstone", S("Sandstone"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "sandstone_brick", recipeItem1,
   "stairs:slab_sandstonebrick", "stairs:slab_sandstonebrick",
   S("Sandstone Brick"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "sandstone_block", recipeItem1,
   "stairs:slab_sandstone_block", "stairs:slab_sandstone_block",
   S("Sandstone Block"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "desert_sandstone", recipeItem1,
   "stairs:slab_desert_sandstone", "stairs:slab_desert_sandstone",
   S("Desert Sandstone"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "desert_sandstone_brick",
   recipeItem1, "stairs:slab_desert_sandstone_brick",
   "stairs:slab_desert_sandstone_brick", S("Desert Sandstone Brick"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "desert_sandstone_block",
   recipeItem1, "stairs:slab_desert_sandstone_block",
   "stairs:slab_desert_sandstone_block", S("Desert Sandstone Block"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "silver_sandstone", recipeItem1,
   "stairs:slab_silver_sandstone", "stairs:slab_silver_sandstone",
   S("Silver Sandstone"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "silver_sandstone_brick",
   recipeItem1, "stairs:slab_silver_sandstone_brick",
   "stairs:slab_silver_sandstone_brick", S("Silver Sandstone Brick"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "silver_sandstone_block",
   recipeItem1, "stairs:slab_silver_sandstone_block",
   "stairs:slab_silver_sandstone_block", S("Silver Sandstone Block"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "obsidian", recipeItem1,
   "stairs:slab_obsidian", "stairs:slab_obsidian", S("Obsidian"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "obsidian_brick", recipeItem1,
   "stairs:slab_obsidianbrick", "stairs:slab_obsidianbrick",
   S("Obsidian Brick"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "obsidian_block", recipeItem1,
   "stairs:slab_obsidian_block", "stairs:slab_obsidian_block",
   S("Obsidian Block"), stone_default, stone_open, stone_close)


--[[

   Tree based doors
   -----------------
   (1. Trunk 2. Fabricated trunk)

]]--

hidden_doors.register_hidden_doors("default", "tree", recipeItem1,
   "default:tree", nil, S("Tree"), wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "jungletree", recipeItem1,
   "default:jungletree", nil, S("Jungle Tree"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "pine_tree", recipeItem1,
   "default:pine_tree", nil, S("Pine Tree"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "acacia_tree", recipeItem1,
   "default:acacia_tree", nil, S("Acacia Tree"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "aspen_tree", recipeItem1,
   "default:aspen_tree", nil, S("Aspen Tree"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "wood", recipeItem1,
   "stairs:slab_wood", "stairs:slab_wood", S("Wood"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "junglewood", recipeItem1,
   "stairs:slab_junglewood", "stairs:slab_junglewood", S("Jungle Wood"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "pine_wood", recipeItem1,
   "stairs:slab_pine_wood", "stairs:slab_pine_wood", S("Pine Wood"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "acacia_wood", recipeItem1,
   "stairs:slab_acacia_wood", "stairs:slab_acacia_wood", S("Acacia Wood"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "aspen_wood", recipeItem1,
   "stairs:slab_aspen_wood", "stairs:slab_aspen_wood", S("Aspen Wood"),
   wood_default, wood_open, wood_close)


--[[

   Metal based doors
   -----------------

]]--

hidden_doors.register_hidden_doors("default", "bronze_block", recipeItem1,
   "stairs:slab_bronzeblock", "stairs:slab_bronzeblock",
   S("Bronze Block"), metal_default, metal_open, metal_close)

hidden_doors.register_hidden_doors("default", "copper_block", recipeItem1,
   "stairs:slab_copperblock", "stairs:slab_copperblock",
   S("Copper Block"), metal_default, metal_open, metal_close)

hidden_doors.register_hidden_doors("default", "gold_block", recipeItem1,
   "stairs:slab_goldblock", "stairs:slab_goldblock", S("Gold Block"),
   metal_default, metal_open, metal_close)

hidden_doors.register_hidden_doors("default", "steel_block", recipeItem1,
   "stairs:slab_steelblock", "stairs:slab_steelblock",
   S("Steel Block"), metal_default, metal_open, metal_close)

hidden_doors.register_hidden_doors("default", "tin_block", recipeItem1,
   "stairs:slab_tinblock", "stairs:slab_tinblock",
   S("Tin Block"), metal_default, metal_open, metal_close)


--[[

   Other kinds of materials
   ------------------------

]]--

hidden_doors.register_hidden_doors("default", "dirt", recipeItem1,
   "default:dirt", nil, S("Dirt"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "brick", recipeItem1,
   "stairs:slab_brick", "stairs:slab_brick", S("Brick"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "ice", recipeItem1,
   "stairs:slab_ice", "stairs:slab_ice", S("Ice"),
   gem_default, gem_open, gem_close)

hidden_doors.register_hidden_doors("default", "diamond_block", recipeItem1,
   "default:diamondblock", nil, S("Diamond Block"),
   gem_default, gem_open, gem_close)

hidden_doors.register_hidden_doors("default", "mese_block", recipeItem1,
   "default:mese", nil, S("Mese Block"),
   gem_default, gem_open, gem_close)

hidden_doors.register_hidden_doors("default", "bookshelf", recipeItem1,
   "default:bookshelf", nil, S("Bookshelf"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "sand", recipeItem1,
   "default:sand", nil, S("Sand"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "silver_sand", recipeItem1,
   "default:silver_sand", nil, S("Silver Sand"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("default", "desert_sand", recipeItem1,
   "default:desert_sand", nil, S("Desert Sand"),
   stone_default, stone_open, stone_close)
