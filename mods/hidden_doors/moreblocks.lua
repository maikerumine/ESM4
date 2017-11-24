--[[

   Hidden Doors moreblocks.lua

   Copyright 2017 Hamlet <h4mlet@riseup.net>

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


--
-- Moreblocks module support
--

hidden_doors.register_hidden_doors("default", "jungletree_top",
   recipeItem1, "moreblocks:slab_all_faces_jungle_tree",
   "moreblocks:slab_all_faces_jungle_tree", S("All-faces Jungle Tree"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("default", "tree_top",
   recipeItem1, "moreblocks:slab_all_faces_tree",
   "moreblocks:slab_all_faces_tree", S("All-faces Tree"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("moreblocks", "cactus_brick",
   recipeItem1, "moreblocks:slab_cactus_brick",
   "moreblocks:slab_cactus_brick", S("Cactus Brick"),
   stone_default, stone_open, stone_close)

--[[ Disabled due to additional texture manipulation required

hidden_doors.register_hidden_doors("moreblocks", "cactus_checker",
   recipeItem1, "moreblocks:slab_cactus_checker",
   "moreblocks:slab_cactus_checker", S("Cactus Checker"),
   stone_default, stone_open, stone_close)

]]--

hidden_doors.register_hidden_doors("moreblocks", "circle_stone_bricks",
   recipeItem1, "moreblocks:slab_circle_stone_bricks",
   "moreblocks:slab_circle_stone_bricks", S("Circle Stone Bricks"),
   stone_default, stone_open, stone_close)

--[[ Disabled due to additional texture manipulation required

hidden_doors.register_hidden_doors("moreblocks", "coal_checker",
   recipeItem1, "moreblocks:slab_coal_checker",
   "moreblocks:slab_coal_checker", S("Coal Checker"),
   stone_default, stone_open, stone_close)

]]--

hidden_doors.register_hidden_doors("moreblocks", "coal_stone",
   recipeItem1, "moreblocks:slab_coal_stone",
   "moreblocks:slab_coal_stone", S("Coal Stone"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("moreblocks", "cobble_compressed",
   recipeItem1, "moreblocks:slab_cobble_compressed",
   "moreblocks:slab_cobble_compressed", S("Cobble Compressed"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("moreblocks", "copperpatina",
   recipeItem1, "moreblocks:slab_copperpatina",
   "moreblocks:slab_copperpatina", S("Copper Patina"),
   metal_default, metal_open, metal_close)

hidden_doors.register_hidden_doors("moreblocks", "empty_bookshelf",
   recipeItem1, "moreblocks:empty_bookshelf", nil, S("Empty Bookshelf"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("moreblocks", "grey_bricks",
   recipeItem1, "moreblocks:slab_grey_bricks",
   "moreblocks:slab_grey_bricks", S("Stone Bricks"),
   stone_default, stone_open, stone_close)

--[[ Disabled due to additional texture manipulation required

hidden_doors.register_hidden_doors("moreblocks", "iron_checker",
   recipeItem1, "moreblocks:slab_iron_checker",
   "moreblocks:slab_iron_checker", S("Iron Checker"),
   metal_default, metal_open, metal_close)

]]--

hidden_doors.register_hidden_doors("moreblocks", "iron_stone",
   recipeItem1, "moreblocks:slab_iron_stone",
   "moreblocks:slab_iron_stone", S("Iron Stone"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("moreblocks", "iron_stone_bricks",
   recipeItem1, "moreblocks:slab_iron_stone_bricks",
   "moreblocks:slab_iron_stone_bricks", S("Iron Stone Bricks"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("moreblocks", "plankstone",
   recipeItem1, "moreblocks:slab_plankstone", "moreblocks:slab_plankstone",
   S("Plankstone"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("moreblocks", "split_stone_tile",
   recipeItem1, "moreblocks:slab_split_stone_tile",
   "moreblocks:slab_split_stone_tile", S("Split Stone Tile"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("moreblocks", "split_stone_tile_alt",
   recipeItem1, "moreblocks:slab_split_stone_tile_alt",
   "moreblocks:slab_split_stone_tile_alt", S("Checkered Stone Tile"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("moreblocks", "stone_tile",
   recipeItem1, "moreblocks:slab_stone_tile",
   "moreblocks:slab_stone_tile", S("Stone Tile"),
   stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("moreblocks", "tar",
   recipeItem1, "moreblocks:slab_tar", "moreblocks:slab_tar",
   S("Tar"), stone_default, stone_open, stone_close)

hidden_doors.register_hidden_doors("moreblocks", "trap_stone",
   recipeItem1, "moreblocks:trap_stone", nil, S("Trap Stone"),
   stone_default, stone_open, stone_close)

--[[ Disabled due to additional texture manipulation required

hidden_doors.register_hidden_doors("moreblocks", "wood_tile",
   recipeItem1, "moreblocks:slab_wood_tile", "moreblocks:slab_wood_tile",
   S("Wooden Tile"), wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("moreblocks", "wood_tile_center",
   recipeItem1, "moreblocks:slab_wood_tile_center",
   "moreblocks:slab_wood_tile_center", S("Centered Wooden Tile"),
   wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("moreblocks", "wood_tile_down",
   recipeItem1, "moreblocks:wood_tile_down", nil,
   S("Downwards Wooden Tile"), wood_default, wood_open, wood_close)

]]--

hidden_doors.register_hidden_doors("moreblocks", "wood_tile_full",
   recipeItem1, "moreblocks:slab_wood_tile_full",
   "moreblocks:slab_wood_tile_full", S("Full Wooden Tile"),
   wood_default, wood_open, wood_close)

--[[ Disabled due to additional texture manipulation required

hidden_doors.register_hidden_doors("moreblocks", "wood_tile_left",
   recipeItem1, "moreblocks:wood_tile_left", nil,
   S("Leftwards Wooden Tile"), wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("moreblocks", "wood_tile_right",
   recipeItem1, "moreblocks:wood_tile_right", nil,
   S("Rightwards Wooden Tile"), wood_default, wood_open, wood_close)

hidden_doors.register_hidden_doors("moreblocks", "wood_tile_up",
   recipeItem1, "moreblocks:wood_tile_up", nil,
   S("Upwards Wooden Tile"), wood_default, wood_open, wood_close)

]]--
