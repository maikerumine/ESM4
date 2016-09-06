-- BASIC_HARVEST: lightweight simple harvesting to be used with protector mod
-- minetest 0.4.14+
-- (c) 2015-2016 rnd

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



local harvest = {};

-- SETTINGS

harvest.radius = 3; -- this should be protector radius
harvest.full = 5; -- how many steps before new harvest cycle begins: so harvester is activated every 5x20s by default
harvest.timestep = 20; -- how frequently to process harvesters ( default every 30 seconds )
harvest.fuel_cost = 0.1; -- how many coal units to harvest 1 piece

harvest.forbidden_nodes = {
	["air"]=true,
	["default:water_source"]=true,
	["default:water_flowing"]=true,
	["default:lava_source"]=true,
	["default:lava_flowing"]=true,
}

-- END OF SETTINGS



local harvest_process = function(pos) -- burn fuel, dig, put materials in target container
	
	local meta = minetest.get_meta(pos);
	local search_node = meta:get_string("filter");

	if search_node == "" or harvest.forbidden_nodes[search_node] then 
		meta:set_string("infotext","error: right click harvester and set what to harvest by inserting item in FILTER");
		return 
	end
	
	local x0,y0,z0;  -- protector position
	x0 = meta:get_int("x0");y0 = meta:get_int("y0");z0 = meta:get_int("z0");
	local x1,y1,z1; -- container position
	x1 = meta:get_int("x1");y1 = meta:get_int("y1");z1 = meta:get_int("z1");
	local tpos =  {x=x1,y=y1,z=z1};
	
	if minetest.is_protected(tpos, meta:get_string("owner")) then
		meta:set_string("infotext", "error. target position " .. minetest.string_to_pos(tpos) .. " is protected.");
		return
	end

	-- DIG PROCESS
	local pos1 = {x=x0-harvest.radius,y=y0-harvest.radius,z=z0-harvest.radius}
	local pos2 = {x=x0+harvest.radius,y=y0+harvest.radius,z=z0+harvest.radius}
	
	-- load area data
	local manip = minetest.get_voxel_manip() -- VoxelManip object
	local emerged_pos1, emerged_pos2 = manip:read_from_map(pos1, pos2) -- --Reads a chunk of map from the map containing the region formed by pos1 and pos2 
	local area = VoxelArea:new({MinEdge=emerged_pos1, MaxEdge=emerged_pos2}) -- create new VoxelArea instance, needed for iterating over area in loop
	
	local data = manip:get_data() -- Gets the data read into the VoxelManip object 
	
	local search_id = minetest.get_content_id(search_node);
	local replace_id = minetest.get_content_id("air");

	local count = 0
	
	for i in area:iterp(pos1, pos2) do -- returns an iterator that returns indices inside VoxelArea
		if data[i] == search_id then
			data[i] = replace_id
			count = count + 1
		end
	end
	
	if count == 0 then 
		meta:set_string("infotext","idle. nothing to harvest.");
		return 
	end
	
	-- CHECK FUEL
	-- check for selected fuel source
	local inv = meta:get_inventory();
	local fuel_source = inv:get_stack("fuel_select",1):get_name();
	
	
	local fueladd, afterfuel = minetest.get_craft_result({method = "fuel", width = 1, items = inv:get_list("fuel_select") }) 
	local fuel_need;
	local caloric_value = fueladd.time or 0; -- equals 1 for default:coal_lump
	caloric_value = caloric_value / 40;
	fuel_need = harvest.fuel_cost*count;
	
	if caloric_value <= 0 then 
		meta:set_string("infotext","error. insert proper fuel into FUEL SELECTOR.")
		return
	end
	
	fuel_need = math.ceil(fuel_need/caloric_value);
	
	if not inv:contains_item("main", ItemStack(fuel_source .. " " .. fuel_need)) then
		meta:set_string("infotext", "not enough fuel. Need ".. fuel_need .. " pieces of " .. fuel_source .. " in main inventory of harvester ");
		return;
	end
	
	-- CHECK TARGET INVENTORY
	local tinv = minetest.get_meta(tpos):get_inventory();
	if not tinv then 
		meta:set_string("infotext", "error. target position " .. minetest.pos_to_string(tpos) .. " does not have inventory ");
		return 
	end

	-- TO DO: replace search_node with proper item drops
	if not tinv:room_for_item("main", ItemStack(search_node .. " " .. count)) then
		meta:set_string("infotext", "error. can not insert " .. search_node .. " " .. count .. " in target main inventory ");
		return 
	end	
	
	-- ALL OK: add items to target, burn fuel
	--tinv:add_item("main", ItemStack(search_node .. " " .. count));
	
	-- drop code emulation
	local table = minetest.registered_items[search_node];
	if table~=nil then --put in chest
		if table.drop~= nil then -- drop handling 
			if table.drop.items then
			--handle drops better, emulation of drop code
			local max_items = table.drop.max_items or 0;
				if max_items==0 then -- just drop all the items (taking the rarity into consideration)
					max_items = #table.drop.items or 0;
				end
				local drop = table.drop;
				local i = 0;
				for k,v in pairs(drop.items) do
					if i > max_items then break end; i=i+1;								
					local rare = v.rarity or 1;
					
					local count1 = math.floor(count/rare);
					for _,v1 in pairs(v.items) do
						tinv:add_item("main",ItemStack(v1 .. " " .. count1));
					end
				end
			else
				tinv:add_item("main",ItemStack(table.drop .. " " .. count));
			end	
		else
			tinv:add_item("main",ItemStack(search_node .. " " .. count));
		end
	end

	
	--burn fuel
	inv:remove_item("main", ItemStack(fuel_source.. " " .. fuel_need));
	
	-- Update map
	manip:set_data(data) -- Sets the data contents of the VoxelManip object 
	manip:write_to_map() -- Writes the data loaded from the VoxelManip back to the map
	manip:update_map() -- Update map after writing chunk back to map
	
	meta:set_string("infotext", "Harvest cycle completed. Processed ".. count .. " items ");
	meta:set_int("process",0); -- resets harvester - new cycle begins
end


minetest.register_abm{
	nodenames = {"basic_harvest:harvester"},
	neighbors = {},
	interval = harvest.timestep,
	chance = 1,
	action = function(pos)
		local meta = minetest.get_meta(pos);
		local player = minetest.get_player_by_name(meta:get_string("owner")); if not player then return end
		local process =  meta:get_int("process");
		
		if process<harvest.full then
			process=process+1;
		end
		
		if process>= harvest.full then
			-- try harvest
			harvest_process(pos);
		else 
			meta:set_int("process", process);
			meta:set_string("infotext","processing harvest: " .. process .. "/" .. harvest.full);
		end
	end,
}


local harvester_update_meta = function(pos)
		local meta = minetest.get_meta(pos);
		local x1,y1,z1;
		x1 = meta:get_int("x1"); y1 = meta:get_int("y1");z1 = meta:get_int("z1");
		local filter = meta:get_string("filter");
		
		local list_name = "nodemeta:"..pos.x..','..pos.y..','..pos.z 
		local form  = 
		"size[8,10]" ..  -- width, height
		--"size[6,10]" ..  -- width, height
		"label[0,0;FUEL SELECTOR]".."label[2,0;FILTER]"..
		"list["..list_name..";fuel_select;0.,0.5;1,1;]".. 
		"list["..list_name..";filter;2.,0.5;1,1;]".. "field[3.25,0.75;2,1;filter;filter;"..filter.."]" ..
		"field[5.25,0.75;1,1;x1;Target;"..x1.."] field[6.25,0.75;1,1;y1;;"..y1.."] field[7.25,0.75;1,1;z1;;"..z1.."]"..
		"list["..list_name..";main;0.,1.5;8,4;]"..
		"list[current_player;main;0,6;8,4;]"..
		"button[8.5,0.5;1,1;OK;OK]";
		meta:set_string("formspec", form);
end



minetest.register_node("basic_harvest:harvester", {
	description = "Harvester : harvest all selected nodes inside nearby protector space",
	tiles = {"harvester.png"},
	groups = {oddly_breakable_by_hand=2},
	sounds = "",
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos);
		
		local ppos = minetest.find_node_near(pos,harvest.radius,"protector:protect");
		if not ppos then
			meta:set_string("infotext", "error: need to place inside protector area.");
			return
		end
		
		local name = placer:get_player_name();
		if minetest.get_meta(ppos):get_string("owner")~=name then
			meta:set_string("infotext", "error: must be placed by owner of protector");
		end
		
		meta:set_int("x1",pos.x);meta:set_int("y1",pos.y);meta:set_int("z1",pos.z);
		
		meta:set_int("x0",ppos.x);meta:set_int("y0",ppos.y);meta:set_int("z0",ppos.z);
		
		meta:set_string("infotext", "Harvester: To operate it insert fuel into FUEL_SELECTOR and main inventory, then insert item to be harvested into FILTER. After that just wait.")
		meta:set_string("owner", placer:get_player_name());
		
		local inv = meta:get_inventory();
		inv:set_size("filter", 1);
		inv:set_size("main",32);
		inv:set_size("fuel_select",1);
	end,
	
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		local meta = minetest.get_meta(pos);
		local privs = minetest.get_player_privs(player:get_player_name());
		if minetest.is_protected(pos, player:get_player_name()) and not privs.privs then return end 
		harvester_update_meta(pos);
	end,
	
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos);
		local privs = minetest.get_player_privs(player:get_player_name());
		if minetest.is_protected(pos, player:get_player_name()) and not privs.privs then return 0 end 
		
		if listname == "filter" then
			meta:set_string("filter", stack:get_name()) 
			harvester_update_meta(pos);
		end
		return stack:get_count();
	end,
	
	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos);
		local privs = minetest.get_player_privs(player:get_player_name());
		if minetest.is_protected(pos, player:get_player_name()) and not privs.privs then return 0 end 
		
		if listname == "filter" then
			meta:set_string("filter", "") 
			harvester_update_meta(pos);
		end
		return stack:get_count();
	end,
	
	
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		return 0;
	end,
	
	on_receive_fields = function(pos, formname, fields, sender) 
		
		if minetest.is_protected(pos, sender:get_player_name()) then return end 
		
		local meta = minetest.get_meta(pos);
		if fields.filter then
			meta:set_string("filter",fields.filter)
		end
		
		if fields.x1 then meta:set_int("x1",fields.x1) end
		if fields.y1 then meta:set_int("y1",fields.y1) end
		if fields.z1 then meta:set_int("z1",fields.z1) end
		
		harvester_update_meta(pos);
		
		if fields.quit then return end
	end,

})


minetest.register_craft({
	output = "basic_harvest:harvester",
	recipe = {
		{"default:steel_ingot","default:mese","default:steel_ingot"},
		{"default:mese","default:diamondblock","default:mese"},
		{"default:steel_ingot","default:mese","default:steel_ingot"},
	}
})