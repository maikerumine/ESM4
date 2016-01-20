---
--vendorgoldblock 1.01
--Copyright (C) 2012 Bad_Command
--
--This library is free software; you can redistribute it and/or
--modify it under the terms of the GNU Lesser General Public
--License as published by the Free Software Foundation; either
--version 2.1 of the License, or (at your option) any later version.
--
--This program is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--GNU General Public License for more details.
--
--You should have received a copy of the GNU Lesser General Public
--License along with this library; if not, write to the Free Software
--Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
---vendorgoldblock machines made by maikerumine

vendorgoldblock = {}
vendorgoldblock.version = 1.02

dofile(minetest.get_modpath("vendorgoldblock") .. "/vendor.lua")

minetest.register_node("vendorgoldblock:vendor", {
	description = "Goldblock Vending Machine",
	tile_images ={"vendorg_side.png", "vendorg_side.png", "vendorg_side.png",
		"vendorg_side.png", "vendorg_side.png", "vendorg_vendor_front.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},

	after_place_node = vendorgoldblock.after_place_node,
	can_dig = vendorgoldblock.can_dig,
	on_receive_fields = vendorgoldblock.on_receive_fields,
    allow_metadata_inventory_put = vendorgoldblock.allow_metadata_inventory_put,
    allow_metadata_inventory_take = vendorgoldblock.allow_metadata_inventory_take,
    allow_metadata_inventory_move = vendorgoldblock.allow_metadata_inventory_move,
})

minetest.register_node("vendorgoldblock:depositor", {
	description = "Goldblock Depositing Machine",
	tile_images ={"vendorg_side.png", "vendorg_side.png", "vendorg_side.png",
		"vendorg_side.png", "vendorg_side.png", "vendorg_depositor_front.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},

	after_place_node = vendorgoldblock.after_place_node,
	can_dig = vendorgoldblock.can_dig,
	on_receive_fields = vendorgoldblock.on_receive_fields,
    allow_metadata_inventory_put = vendorgoldblock.allow_metadata_inventory_put,
    allow_metadata_inventory_take = vendorgoldblock.allow_metadata_inventory_take,
    allow_metadata_inventory_move = vendorgoldblock.allow_metadata_inventory_move,
})

minetest.register_craft({
	output = 'vendorgoldblock:vendor',
	recipe = {
                {'group:wood', 'group:wood', 'group:wood'},
                {'group:wood', 'default:gold_ingot', 'group:wood'},
                {'group:wood', 'default:gold_ingot', 'group:wood'},
        }
})

minetest.register_craft({
	output = 'vendorgoldblock:depositor',
	recipe = {
                {'group:wood', 'default:gold_ingot', 'group:wood'},
                {'group:wood', 'default:gold_ingot', 'group:wood'},
                {'group:wood', 'default:wood', 'group:wood'},
        }
})
