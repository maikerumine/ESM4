--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

--[[License:
--~~~~~~~~
Minetest mod: screwdriver
=========================

License of source code:
-----------------------
Copyright (C) 2013 RealBadAngel, Maciej Kasatkin <mk@realbadangel.pl>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

http://www.gnu.org/licenses/lgpl-2.1.html

License of media (textures and sounds)
--------------------------------------
Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
http://creativecommons.org/licenses/by-sa/3.0/

Created by Gambit (WTFPL):
  screwdriver.png
]]



es = {}

local function nextrange(x, max)
	x = x + 1
	if x > max then
		x = 0
	end
	return x
end

es.ROTATE_FACE = 1
es.ROTATE_AXIS = 2
es.disallow = function(pos, node, user, mode, new_param2)
	return false
end
es.rotate_simple = function(pos, node, user, mode, new_param2)
	if mode ~= es.ROTATE_FACE then
		return false
	end
end
local USES = 3000

-- Handles rotation
local function es_handler(itemstack, user, pointed_thing, mode)
	if pointed_thing.type ~= "node" then
		return
	end

	local pos = pointed_thing.under

	if minetest.is_protected(pos, user:get_player_name()) then
		minetest.record_protection_violation(pos, user:get_player_name())
		return
	end

	local node = minetest.get_node(pos)
	local ndef = minetest.registered_nodes[node.name]
		-- verify node is facedir (expected to be rotatable)
	if ndef.paramtype2 ~= "facedir" then
		return
	end
	-- Compute param2
	local rotationPart = node.param2 % 32 -- get first 4 bits
	local preservePart = node.param2 - rotationPart
	local axisdir = math.floor(rotationPart / 4)
	local rotation = rotationPart - axisdir * 4
	if mode == es.ROTATE_FACE then
		rotationPart = axisdir * 4 + nextrange(rotation, 3)
	elseif mode == es.ROTATE_AXIS then
		rotationPart = nextrange(axisdir, 5) * 4
	end

	local new_param2 = preservePart + rotationPart
	local should_rotate = true

	if ndef and ndef.on_rotate then -- Node provides a handler, so let the handler decide instead if the node can be rotated
		-- Copy pos and node because callback can modify it
		local result = ndef.on_rotate(vector.new(pos),
				{name = node.name, param1 = node.param1, param2 = node.param2},
				user, mode, new_param2)
		if result == false then -- Disallow rotation
			return
		elseif result == true then
			should_rotate = false
		end
	else
		if not ndef or not ndef.paramtype2 == "facedir" or
				(ndef.drawtype == "nodebox" and
				not ndef.node_box.type == "fixed") or
				node.param2 == nil then
			return
		end

		if ndef.can_dig and not ndef.can_dig(pos, user) then
			return
		end
	end

	if should_rotate then
		node.param2 = new_param2
		minetest.swap_node(pos, node)
	end

	if not minetest.setting_getbool("creative_mode") then
		itemstack:add_wear(65535 / (USES - 1))
	end

	return itemstack
end

-- Screwdriver
minetest.register_tool("es:screwdriver", {
	description = "Screwdriver (left-click rotates face, right-click rotates axis)",
	inventory_image = "screwdriver.png",
	on_use = function(itemstack, user, pointed_thing)
		es_handler(itemstack, user, pointed_thing, es.ROTATE_FACE)
		return itemstack
	end,
	on_place = function(itemstack, user, pointed_thing)
		es_handler(itemstack, user, pointed_thing, es.ROTATE_AXIS)
		return itemstack
	end,
})


minetest.register_craft({
	output = "es:screwdriver",
	recipe = {
		{"es:aikerum_crystal"},
		{"es:handle"}
	}
})

