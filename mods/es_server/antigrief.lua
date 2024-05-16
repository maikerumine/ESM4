--- ANTI GRIEF by rnd
-- Copyright 2016 rnd

----------------------------------------------------------------------------
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
----------------------------------------------------------------------------


-- prevents placing of lava/liquid sources or buckets above 100

function prevent_place_above(name)

	local old_on_place=minetest.registered_craftitems[name];--.on_place;
	local old_after_place_node = minetest.registered_nodes[name];--.after_place_node;
	--after_place_node = func(pos, placer, itemstack, pointed_thing)
	
	if old_on_place and old_on_place.on_place then
		old_on_place=old_on_place.on_place;
		minetest.registered_craftitems[name].on_place=function(itemstack, placer, pointed_thing)
			local pos = pointed_thing.above
			if pos.y>0 then
			minetest.chat_send_player(placer:get_player_name(), "Don't place water or lava above 0.")
				minetest.log("action","ANTI GRIEF " .. placer:get_player_name() .. " tried to place " .. name .. " at " .. minetest.pos_to_string(pos));
				--placer:set_hp( 1)
				return itemstack
			else
				return old_on_place(itemstack, placer, pointed_thing)
			end
		end
	return;
	end

	if old_after_place_node then

		old_after_place_node=old_after_place_node.after_place_node
		
		local table = minetest.registered_nodes[name];
		local table2 = {}
		for i,v in pairs(table) do
			table2[i] = v
		end
		
		table2.after_place_node=function(pos, placer, itemstack, pointed_thing)
			--after_place_node = func(pos, placer, itemstack, pointed_thing)
			local pos = pointed_thing.above
			if pos.y>0 then
			minetest.chat_send_player(placer:get_player_name(), "Don't place water or lava above 0.")
				minetest.log("action","ANTI GRIEF " .. placer:get_player_name() .. " tried to place " .. name .. " at " .. minetest.pos_to_string(pos));
				if node.name == 'ignore' then return end
				minetest.set_node(pos, {name = "air"});
				--placer:set_hp( 1)
				return itemstack
			end
		end
		minetest.register_node(":"..name, table2)
		return;
	end 	
	return;
end
	
minetest.after(0,
function ()
prevent_place_above("bucket:bucket_lava");
end
)



--TNT only below 150!
local tnt_correspondences = {
	["tnt:tnt"] = "es:nopenode",
	["tnt:tnt_burning"] = "es:nopenode",
}

minetest.register_abm({
	label = "tnt vanish",
	nodenames = {"tnt:tnt", "tnt:tnt_burning"},
	neighbors = {"air", "tnt:tnt", "tnt:tnt_burning", "group:water"},
	interval = 1,
	chance = 1,
	catch_up = false,
	action = function(pos, node)
		node.name = tnt_correspondences[node.name]
		if node.name and pos.y>-20 then
			minetest.set_node(pos, node)
		end
	end
})

local nope_correspondences = {
	["es:nopenode"] = "air",
}
minetest.register_abm({
	label = "nope vanish",
	nodenames = {"es:nopenode"},
	neighbors = {"air", "es:nopenode", "group:water"},
	interval = 1,
	chance = 1,
	catch_up = false,
	action = function(pos, node)
		node.name = nope_correspondences[node.name]
		if node.name and pos.y>-20 then
			minetest.set_node(pos, node)
		end
	end
})
function no_tnt_above(name)

	local tnt_on_place=minetest.registered_craftitems[name];--.on_place;
	local tnt_after_place_node = minetest.registered_nodes[name];--.after_place_node;
	--after_place_node = func(pos, placer, itemstack, pointed_thing)
	
	if tnt_on_place and tnt_on_place.on_place then
		tnt_on_place=tnt_on_place.on_place;
		minetest.registered_craftitems[name].on_place=function(itemstack, placer, pointed_thing)
			local pos = pointed_thing.above
			if pos.y>-20 then
			minetest.chat_send_player(placer:get_player_name(), "Don't place TNT above -150.")
				minetest.log("action","ANTI GRIEF " .. placer:get_player_name() .. " tried to place " .. name .. " at " .. minetest.pos_to_string(pos));
				placer:set_hp( 1)
				return itemstack
			else
				return tnt_on_place(itemstack, placer, pointed_thing)
			end
		end
	return;
	end

	if tnt_after_place_node then

		tnt_after_place_node=tnt_after_place_node.after_place_node
		
		local table = minetest.registered_nodes[name];
		local table2 = {}
		for i,v in pairs(table) do
			table2[i] = v
		end
		
		table2.after_place_node=function(pos, placer, itemstack, pointed_thing)
			--after_place_node = func(pos, placer, itemstack, pointed_thing)
			local pos = pointed_thing.above
			if pos.y>-20 then
			minetest.chat_send_player(placer:get_player_name(), "Don't place TNT above -150.")
				minetest.log("action","ANTI GRIEF " .. placer:get_player_name() .. " tried to place " .. name .. " at " .. minetest.pos_to_string(pos));
				minetest.set_node(pos, {name = "air"});
				placer:set_hp( 1)
				return itemstack
			end
		end
		
		
		minetest.register_node(":"..name, table2)
		return;
	end 
	return;
end
	
minetest.after(0,
function ()
 no_tnt_above("tnt:tnt");
end
)


--Water only below 100!

function no_mizu_above(name)

	local mizu_on_place=minetest.registered_craftitems[name];--.on_place;
	local mizu_after_place_node = minetest.registered_nodes[name];--.after_place_node;
	--after_place_node = func(pos, placer, itemstack, pointed_thing)
	
	if mizu_on_place and mizu_on_place.on_place then
		mizu_on_place=mizu_on_place.on_place;
		minetest.registered_craftitems[name].on_place=function(itemstack, placer, pointed_thing)
			local pos = pointed_thing.above
			if pos.y>100 then
			minetest.chat_send_player(placer:get_player_name(), "Don't place Water above 100.")
				minetest.log("action","ANTI GRIEF " .. placer:get_player_name() .. " tried to place " .. name .. " at " .. minetest.pos_to_string(pos));
				return itemstack
			else
				return mizu_on_place(itemstack, placer, pointed_thing)
			end
		end
	return;
	end

	if mizu_after_place_node then

		mizu_after_place_node=mizu_after_place_node.after_place_node
		
		local table = minetest.registered_nodes[name];
		local table2 = {}
		for i,v in pairs(table) do
			table2[i] = v
		end
		
		table2.after_place_node=function(pos, placer, itemstack, pointed_thing)
			--after_place_node = func(pos, placer, itemstack, pointed_thing)
			local pos = pointed_thing.above
			if pos.y>100 then
			minetest.chat_send_player(placer:get_player_name(), "Don't place Waters above 100.")
				minetest.log("action","ANTI GRIEF " .. placer:get_player_name() .. " tried to place " .. name .. " at " .. minetest.pos_to_string(pos));
				minetest.set_node(pos, {name = "air"});
				return itemstack
			end
		end
		minetest.register_node(":"..name, table2)
		return;
	end 	
	return;
end
	

minetest.after(0,
function ()
 no_mizu_above("bucket:bucket_water");
 no_mizu_above("es:bucket_rainbow");
end
)


--Rainbow Water only below 100!
--[[
function no_rainbow_above(name)

	local rainbow_on_place=minetest.registered_craftitems[name];--.on_place;
	local rainbow_after_place_node = minetest.registered_nodes[name];--.after_place_node;
	--after_place_node = func(pos, placer, itemstack, pointed_thing)
	
	if rainbow_on_place and rainbow_on_place.on_place then
		rainbow_on_place=rainbow_on_place.on_place;
		minetest.registered_craftitems[name].on_place=function(itemstack, placer, pointed_thing)
			local pos = pointed_thing.above
			if pos.y>100 then
			minetest.chat_send_player(placer:get_player_name(), "Don't place Rainbow Water above 100.")
				minetest.log("action","ANTI GRIEF " .. placer:get_player_name() .. " tried to place " .. name .. " at " .. minetest.pos_to_string(pos));
				return itemstack
			else
				return rainbow_on_place(itemstack, placer, pointed_thing)
			end
		end
	return;
	end

	if rainbow_after_place_node then

		rainbow_after_place_node=rainbow_after_place_node.after_place_node
		
		local table = minetest.registered_nodes[name];
		local table2 = {}
		for i,v in pairs(table) do
			table2[i] = v
		end
		
		table2.after_place_node=function(pos, placer, itemstack, pointed_thing)
			--after_place_node = func(pos, placer, itemstack, pointed_thing)
			local pos = pointed_thing.above
			if pos.y>100 then
			minetest.chat_send_player(placer:get_player_name(), "Don't place Rainbow Waters above 100.")
				minetest.log("action","ANTI GRIEF " .. placer:get_player_name() .. " tried to place " .. name .. " at " .. minetest.pos_to_string(pos));
				minetest.set_node(pos, {name = "air"});
				return itemstack
			end
		end
		minetest.register_node(":"..name, table2)
		return;
	end 
	return;
end
	

minetest.after(0,
function ()
 no_rainbow_above("es:rainbow_water_source");
end
)
]]