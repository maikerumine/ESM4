minetest.register_privilege("delprotect","Ignore player protection")

-- get static spawn position
local statspawn = (minetest.setting_get_pos("static_spawnpoint") or {x = 0, y = 2, z = 0})

protector = {}
protector.mod = "redo"
protector.radius = (tonumber(minetest.setting_get("protector_radius")) or 3)
protector.pvp = true -- minetest.setting_getbool("protector_pvp")
protector.spawn = (tonumber(minetest.setting_get("protector_pvp_spawn")) or 0)
protector.version = "11/12/2015 r3";

-- luxury settings

protector.luxury_centers = {statspawn} -- simply add points here, for example { spawn, {x=0,y=100,z=0} }
protector.luxury_radius = 75; -- outside this radius around luxury centers players can place protectors normally without worrying about upgrading
-- outside 2x this radius players can spam protectors with lower extra cost
protector.luxury_border_cost = 4; -- protector placement cost at luxury radius
protector.luxury_center_cost = 100; -- cost at luxury center
protector.maxcount = 10; -- allowed count in a group before update cost required
protector.maxcount_price = 1; -- extra costs parameter for placing protectors
protector.discount = {}; -- table of discouns, basically when you dig protector you get cost back - temporary!


protector.get_member_list = function(meta)
	return meta:get_string("members"):split(" ")
end

protector.set_member_list = function(meta, list)
	meta:set_string("members", table.concat(list, " "))
end

protector.is_member = function (meta, name)
	for _, n in ipairs(protector.get_member_list(meta)) do
		if n == name then
			return true
		end
	end
	return false
end

protector.add_member = function(meta, name)
	if protector.is_member(meta, name) then return end
	local list = protector.get_member_list(meta)
	table.insert(list, name)
	protector.set_member_list(meta,list)
end

protector.del_member = function(meta, name)
	local list = protector.get_member_list(meta)
	for i, n in ipairs(list) do
		if n == name then
			table.remove(list, i)
			break
		end
	end
	protector.set_member_list(meta, list)
end

-- Protector Interface

protector.generate_formspec = function(meta)

	local kill = meta:get_int("kill");
	local warn = meta:get_int("warn");
	
	local formspec = "size[8,7]"
		..default.gui_bg..default.gui_bg_img..default.gui_slots
		.."label[2.5,0;-- Protector interface, mod version " .. protector.version .. "  --]"
		.."label[0,0.5;PUNCH node to show protected area or USE for area check]"
		.."label[0,1;warn] label[1,1;kill] label[2,1.5; Here you can choose what to do with intruders]"
		.."button[0,1.25;1,1;warn;"..warn.."] button[1,1.25;1,1;kill;"..kill.."]"
		.."label[0,2.25;Members: (type player name then press Enter to add)]"

	local members = protector.get_member_list(meta)
	local npp = 12
	local i = 0
	for _, member in ipairs(members) do
			if i < npp then
				formspec = formspec .. "button[" .. (i % 4 * 2)
				.. "," .. math.floor(i / 4 + 3)
				.. ";1.5,.5;protector_member;" .. member .. "]"
				.. "button[" .. (i % 4 * 2 + 1.25) .. ","
				.. math.floor(i / 4 + 3)
				.. ";.75,.5;protector_del_member_" .. member .. ";X]"
			end
			i = i + 1
	end
	
	if i < npp then
		formspec = formspec .. "field[" .. (i % 4 * 2 + 1 / 3) .. ","
		.. (math.floor(i / 4 + 3) + 1 / 3) .. ";1.433,.5;protector_add_member;;]"
	end

	formspec = formspec .. "button_exit[2.5,6.2;3,0.5;close_me;Close]"

	return formspec
end

-- ACTUAL PROTECTION SECTION

-- Infolevel:
-- 0 for no info
-- 1 for "This area is owned by <owner> !" if you can't dig
-- 2 for "This area is owned by <owner>.
-- 3 for checking protector overlaps

protector.can_dig = function(r, pos, digger, onlyowner, infolevel)

	if not digger
	or not pos then
		return false
	end

	-- Delprotect privileged users can override protections

	if minetest.check_player_privs(digger, {delprotect = true})
	and infolevel == 1 then
		return true
	end

	if infolevel == 3 then infolevel = 1 end

	-- Find the protector nodes

	local positions = minetest.find_nodes_in_area(
		{x = pos.x - r, y = pos.y - r, z = pos.z - r},
		{x = pos.x + r, y = pos.y + r, z = pos.z + r},
		{"protector:protect"})

	local meta, owner, members
	for _, pos in ipairs(positions) do
		meta = minetest.get_meta(pos)
		owner = meta:get_string("owner")
		members = meta:get_string("members")

		if owner ~= digger then 
			if onlyowner or not protector.is_member(meta, digger) then

				if infolevel == 1 then
					minetest.chat_send_player(digger,
					"This area is owned by " .. owner .. " !")
					
					local warn = meta:get_int("warn");local kill = meta:get_int("kill");
					local player = minetest.get_player_by_name(digger); if not player then return end
					if kill==1 then 
						player:set_hp(0); 
						minetest.after(1, function()
							local inv = player:get_inventory();
							inv:set_list("main", {});inv:set_list("craft", {})
						end)
						minetest.chat_send_player(digger, "PROTECTOR: You died inside protected area at " .. minetest.pos_to_string(pos) .. ". Next time try not to dig or hit players.");
					return false end
					if warn==1 then 
						local form = "size [2,2] textarea[0,0;2.7,2;help;WARNING;This area belongs to " .. meta:get_string("owner") .."]" ..
						"button_exit[0.5,1.5;1.5,1;close;Close]"
						minetest.show_formspec(digger, "protector_warn", form)
						return false
					end
					
				elseif infolevel == 2 then
					minetest.chat_send_player(digger,
					"This area is owned by " .. owner .. ".")
					minetest.chat_send_player(digger,
					"Protection located at: " .. minetest.pos_to_string(pos) .. ", upgrade price was " .. meta:get_int("cost") .. ", protector count is " .. meta:get_int("count") .. ", settings: kill ".. meta:get_int("kill") .. " warn " .. meta:get_int("warn"))
					if members ~= "" then
						minetest.chat_send_player(digger,
						"Members: " .. members .. ".")
					end
				end

				return false
			end
		end

		if infolevel == 2 then
			minetest.chat_send_player(digger,
			"This area is owned by " .. owner .. ".")
			minetest.chat_send_player(digger,
			"Protection located at: " .. minetest.pos_to_string(pos) .. ", upgrade price was " .. meta:get_int("cost") .. ", protector count is " .. meta:get_int("count"))
			if members ~= "" then
				minetest.chat_send_player(digger,
				"Members: " .. members .. ".")
			end

			return false
		end

	end

	if infolevel == 2 then
		if #positions < 1 then
			minetest.chat_send_player(digger,
			"This area is not protected.")
		end
		minetest.chat_send_player(digger, "You can build here.")
	end

	return true
end

-- Can node be added or removed, if so return node else true (for protected)

protector.old_is_protected = minetest.is_protected

function minetest.is_protected(pos, digger)

	if not protector.can_dig(protector.radius, pos, digger, false, 1) then
		return true
	end

	return protector.old_is_protected(pos, digger)

end

-- Make sure protection block doesn't overlap another protector's area

function protector.check_overlap(itemstack, placer, pointed_thing)

	if pointed_thing.type ~= "node" then
		return itemstack
	end

	if not protector.can_dig(protector.radius * 2, pointed_thing.under,
	placer:get_player_name(), true, 3)
	or not protector.can_dig(protector.radius * 2, pointed_thing.above,
	placer:get_player_name(), true, 3) then
		minetest.chat_send_player(placer:get_player_name(),
			"Overlaps into above players protected area")
		return
	end

	return minetest.item_place(itemstack, placer, pointed_thing)

end

--= Protection Block

function protector.check_luxury(pos) -- return minimal block distance to luxury_centers
	local n = #(protector.luxury_centers);
	local mindist = protector.luxury_radius;
	local dist = mindist;
	for	i = 1,n do
		local p = protector.luxury_centers[i];
		dist = math.max(math.abs(pos.x-p.x),math.abs(pos.y-p.y),math.abs(pos.z-p.z))
		if dist<mindist then mindist = dist end
	end
	
	return mindist

end

-- count the protectors in the neighborhood and update counts. 
--two neigborhoods will be considered separate if their protectors are at least 15 apart
function protector.count(pos, mode) 

	-- mode 0: return protector count, mode 1: add new protector, mode 2: remove protector
	
	local r = 4*protector.radius+2; -- radius 14,  P = protector, PAAABBBPAAABBBP
	
	local positions = minetest.find_nodes_in_area(
		{x = pos.x - r, y = pos.y - 0.5*r, z = pos.z - r},
		{x = pos.x + r, y = pos.y + 0.5*r, z = pos.z + r},
		{"protector:protect"})

	local meta, p, maxcount, count -- protector count in the neighborhood
	
	if mode == 3 then -- manual reset counts to 0 by admin
		for _, p in ipairs(positions) do
			meta = minetest.get_meta(p)
			meta:set_int("count", 0)
		end
		return;
	end
	
	
	if mode == 2 then -- reduce neighbor counts since protector is removed
		for _, p in ipairs(positions) do
			meta = minetest.get_meta(p)
			
			count = meta:get_int("count")-1;if count<0 then count = 0 end
			meta:set_int("count", count)
		end
	
		return;
	end
	
	
	maxcount = 0; count = 0; -- find maximum nearby count 
	local maxpos = {x=pos.x,y=pos.y,z=pos.z}; -- position of protector with maxcount
	for _, p in ipairs(positions) do
		meta = minetest.get_meta(p)
		count = meta:get_int("count");
		if count>maxcount then maxcount = count; maxpos.x=p.x;maxpos.y=p.y; maxpos.z=p.z; end
	end
	
	if mode == 0 then return maxcount,maxpos end -- just return the count and position of protector with maxcount
	
	--update counts, mode = 1
	maxcount = maxcount + 1;
	for _, p in ipairs(positions) do 
		meta = minetest.get_meta(p)
		meta:set_int("count", maxcount)
	end
	return maxcount;
end


minetest.register_node("protector:protect", {
	description = "Protection Block",
	drawtype = "nodebox",
	tiles = {
		"moreblocks_circle_stone_bricks.png",
		"moreblocks_circle_stone_bricks.png",
		"moreblocks_circle_stone_bricks.png^protector_logo.png"
	},
	sounds = default.node_sound_stone_defaults(),
	groups = {dig_immediate = 2, unbreakable = 1},
	is_ground_content = false,
	paramtype = "light",
	light_source = 4,

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5 ,-0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},

	on_place = protector.check_overlap,

	after_place_node = function(pos, placer) -- rnd
		local meta = minetest.get_meta(pos)
		
		local count,maxpos;
		count = protector.count(pos, 0); -- just read the counts
		local luxury_dist = protector.check_luxury(pos);

		if luxury_dist>=protector.luxury_radius and count< protector.maxcount then -- normal placement outside luxury radius or below maxcount
			meta:set_string("owner", placer:get_player_name() or ""); 
			local time = os.date("*t");
			meta:set_string("infotext", "Protection (placed by ".. meta:get_string("owner").." at ".. time.month .. "/" .. time.day .. ", " ..time.hour.. ":".. time.min ..":" .. time.sec..")");
			protector.count(pos, 1); -- update counts of nearby protectors after successful "upgrade"
			return
		end
	
		minetest.chat_send_player(placer:get_player_name(), " PROTECTOR: please right click me to UPGRADE or punch to DIG me.");
		meta:set_string("owner", ""); -- initially owner is ""
		meta:set_string("placer", placer:get_player_name() or ""); -- who placed it
		local cost = 0;
		
		if luxury_dist<protector.luxury_radius then -- extra cost because too close to luxury center
			cost =  math.pow(luxury_dist/protector.luxury_radius,2); -- this is 0 at center and 1 at borders of luxury,1/4 at halfway
			cost = protector.luxury_border_cost/(cost+1/protector.luxury_center_cost); 
			cost = cost + math.ceil(cost);
		end
		
		if count>=protector.maxcount then -- extra costs due to exceeded protector count
			if luxury_dist< 2*protector.luxury_radius then
				cost = cost + math.pow(count-protector.maxcount+1,2)*protector.maxcount_price;
			else
				cost = cost + math.pow(count-protector.maxcount+1)*protector.maxcount_price;
			end
		end
		
		cost = math.ceil(cost);
		meta:set_int("cost",cost);

		meta:set_string("infotext", "Protection (placed by ".. meta:get_string("placer") .. ". Please rightclick to upgrade with cost ".. cost .." or dig it. ");
		meta:set_int("upgrade",1); -- indicates protector is not yet upgraded
		meta:set_int("place_time", minetest.get_gametime());
		meta:set_string("members", "")
		return
	end,

	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= "node" then return end
		protector.can_dig(protector.radius, pointed_thing.under, user:get_player_name(), false, 2)
	end,

	on_rightclick = function(pos, node, clicker, itemstack) -- rnd
		local meta = minetest.get_meta(pos)
		
		local upgrade = meta:get_int("upgrade");
		if upgrade==1 then -- only upgrade if not already
		
			local name = clicker:get_player_name();
			local permitgiver = meta:get_string("permitgiver");
			
			if name == permitgiver and upgrade==1 then
				local cost = meta:get_int("cost");
				minetest.chat_send_player(name, "PROTECTOR: you have just given permission to upgrade this protector for free. Upgrade costs were " .. cost);
				meta:set_string("infotext", name .. " has given permission to upgrade with cost 0");
				meta:set_string("permitgiver","");
				meta:set_int("cost",0);
				return
			end
			
			
			if name == meta:get_string("placer") then -- upgrade to full protector
				
				local count,maxpos;
				count,maxpos = protector.count(pos, 0); -- just read the counts and position of protector with max count
				local maxname = minetest.get_meta(maxpos):get_string("owner");
				local permittext = "";
				
				local ip1 = minetest.get_player_ip(name);
				local ip2 = minetest.get_player_ip(maxname);
				
				if name~=maxname and ip1 and ip2 then 
					
					if ip1~=ip2 then -- are those really 2 different players?
						if maxname == "" then
							permittext = "\n\nThere is detector with count " .. count .. " without owner at "..maxpos.x .. " " .. maxpos.y .. " " .. maxpos.z;
						else
							permittext = "\n\nYou can also try to get the owner of protector with count ".. count ..  " (his name is " .. maxname .. ") located at "..
							" "..maxpos.x .. " " .. maxpos.y .. " " .. maxpos.z .. " to upgrade protector for you by rightclicking it. ";
						end
						meta:set_string("permitgiver", maxname);
					end
					
				else
					meta:set_string("permitgiver","");
				end
				
				
				--protector.check_luxury(pos)>=protector.luxury_radius
				local cost = meta:get_int("cost");
				
				local text = "You are either trying to build close to luxury center or there are too many nearby protectors."..
				"You will need to upgrade protector to be usable. "..
				"\n\n Make sure you have " .. cost .. " mese in your inventory. "..
				"If price is too high dig protector, find a spot farther away and try again. ".. permittext ..
				"\n\nADVICE: try to place protector at least 15 blocks away from large groups of protectors to keep update cost low.";

				local formspec = "size[4.5,5]"
				..default.gui_bg..default.gui_bg_img..default.gui_slots..
				"textarea[0,0;5.,5;help;-- Protector upgrade --;".. text .. "]"..
				"button[ 0,4.5;2,1;upgrade_protector;UPGRADE]"

				minetest.show_formspec(clicker:get_player_name(), 
					"protector:upgrade_" .. minetest.pos_to_string(pos), formspec)
				return
			end
		end
		
		if protector.can_dig(1, pos,clicker:get_player_name(), true, 1) then
			minetest.show_formspec(clicker:get_player_name(), 
			"protector:node_" .. minetest.pos_to_string(pos), protector.generate_formspec(meta))
		end
		
		
	end,

	on_punch = function(pos, node, puncher)
		if not protector.can_dig(1, pos, puncher:get_player_name(), true, 1)  then
			return
		end
		minetest.add_entity(pos, "protector:display")
	end,

	can_dig = function(pos, player)
		local meta = minetest.get_meta(pos);
	
		local candig = (meta:get_int("upgrade") == 1); -- protector not yet upgraded?
		local name = player:get_player_name();
		if candig then 
			if name~=meta:get_string("placer") then -- non placer can only dig after 5 minutes passed
				local t = minetest.get_gametime();
				local t1 = meta:get_int("place_time");
				if math.abs(t-t1)< 300 then candig = false 
					minetest.chat_send_player(name," Only placer can dig unupgraded protection before 5 minutes passed.");
					return false;
				end
			end
		end
		
		local owner = meta:get_string("owner");
		if owner == name then 
			if not protector.discount[name] then protector.discount[name] = 0 end
			local cost = meta:get_int("cost");
			if cost>0 then
				protector.discount[name] = protector.discount[name] +cost;
				minetest.chat_send_player(name," Protector's upgrade value can be used for discount when upgrading protectors, current credits are ".. protector.discount[name] );
			end
		end
		
		if candig then -- dig it if its not upgraded
			local inv = player:get_inventory();
			inv:add_item("main", ItemStack("protector:protect"));
			minetest.set_node(pos,{name = "air"});
			
			return false
		end
		
		if owner~="" then protector.count(pos,2); end-- update counts after removal of protector with real owner only
		return protector.can_dig(1, pos, player:get_player_name(), true, 1)  
	end,

})

minetest.register_craft({
	output = "protector:protect 4",
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "default:mese", "default:stone"},
		{"default:stone", "default:stone", "default:stone"},
	}
})



-- If name entered or button press on protector

minetest.register_on_player_receive_fields(function(player, formname, fields)

	
	-- protector upgrade
	
	if string.sub(formname, 0, string.len("protector:upgrade_")) == "protector:upgrade_" then
	
		if fields.upgrade_protector == "UPGRADE" then 
		
			local pos_s = string.sub(formname, string.len("protector:upgrade_") + 1)
			local pos = minetest.string_to_pos(pos_s)
			local meta = minetest.get_meta(pos)
			
			if meta:get_int("upgrade")==1 then
				local cost = math.floor(meta:get_int("cost"));
				local name = player:get_player_name();
				
				if not protector.discount[name] then protector.discount[name] = 0 end
				local cost1 = math.max(cost - protector.discount[name],0);
				
				if cost1<cost then 
					minetest.chat_send_player(player:get_player_name(), "PROTECTOR: cost with discount " .. cost1 .. ". Current discount is " .. protector.discount[name]);
				end
						
				--check player inventory for mese
				local inv = player:get_inventory();
				if not inv:contains_item("main", ItemStack("default:mese_crystal "..cost1)) then 
					minetest.chat_send_player(player:get_player_name(),"PROTECTOR: you need at least " .. cost1 .. " mese for upgrade ");
					return 
				end

				protector.discount[name]=protector.discount[name]-(cost-cost1);
				inv:remove_item("main", ItemStack("default:mese_crystal "..cost1));
				
				meta:set_string("owner", player:get_player_name() or "");
				meta:set_int("upgrade",0); -- protector is now upgraded
				protector.count(pos, 1); -- update counts of nearby protectors after successful upgrade
				
				meta:set_string("placer","");
				local time = os.date("*t");
				meta:set_string("infotext", "Protection (upgraded by ".. meta:get_string("owner").." at ".. time.month .. "/" .. time.day .. ", " ..time.hour.. ":".. time.min ..":" .. time.sec..")");
				minetest.chat_send_player(player:get_player_name(),"PROTECTOR: successfuly upgraded");
				
				return
			end
		end
	end
	
	
	
	
	-- protector setup
	if string.sub(formname, 0, string.len("protector:node_")) == "protector:node_" then

		local pos_s = string.sub(formname, string.len("protector:node_") + 1)
		local pos = minetest.string_to_pos(pos_s)
		local meta = minetest.get_meta(pos)

		if not protector.can_dig(1, pos, player:get_player_name(), true, 1) then
			return
		end

		if fields.protector_add_member then
			for _, i in ipairs(fields.protector_add_member:split(" ")) do
				protector.add_member(meta, i)
			end
		end

		for field, value in pairs(fields) do
			if string.sub(field, 0, string.len("protector_del_member_")) == "protector_del_member_" then
				protector.del_member(meta, string.sub(field,string.len("protector_del_member_") + 1))
			end
		end
		
		if fields.warn then
			meta:set_int("warn", 1-meta:get_int("warn"))
		end

		if fields.kill then
			meta:set_int("kill", 1-meta:get_int("kill"))
		end
		
		if not fields.close_me then
			minetest.show_formspec(player:get_player_name(), formname, protector.generate_formspec(meta))
		end

	end

end)

-- Display entity shown when protector node is punched

minetest.register_entity("protector:display", {
	physical = false,
	collisionbox = {0, 0, 0, 0, 0, 0},
	visual = "wielditem",
	-- wielditem seems to be scaled to 1.5 times original node size
	visual_size = {x = 1.0 / 1.5, y = 1.0 / 1.5},
	textures = {"protector:display_node"},
	timer = 0,
	on_activate = function(self, staticdata)
		if mobs and mobs.entity and mobs.entity == false then
			self.object:remove()
		end
	end,
	on_step = function(self, dtime)
		self.timer = self.timer + dtime
		if self.timer > 5 then
			self.object:remove()
		end
	end,
})

-- Display-zone node, Do NOT place the display as a node,
-- it is made to be used as an entity (see above)

local x = protector.radius
minetest.register_node("protector:display_node", {
	tiles = {"protector_display.png"},
	use_texture_alpha = true,
	walkable = false,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			-- sides
			{-(x+.55), -(x+.55), -(x+.55), -(x+.45), (x+.55), (x+.55)},
			{-(x+.55), -(x+.55), (x+.45), (x+.55), (x+.55), (x+.55)},
			{(x+.45), -(x+.55), -(x+.55), (x+.55), (x+.55), (x+.55)},
			{-(x+.55), -(x+.55), -(x+.55), (x+.55), (x+.55), -(x+.45)},
			-- top
			{-(x+.55), (x+.45), -(x+.55), (x+.55), (x+.55), (x+.55)},
			-- bottom
			{-(x+.55), -(x+.55), -(x+.55), (x+.55), -(x+.45), (x+.55)},
			-- middle (surround protector)
			{-.55,-.55,-.55, .55,.55,.55},
		},
	},
	selection_box = {
		type = "regular",
	},
	paramtype = "light",
	groups = {dig_immediate = 3, not_in_creative_inventory = 1},
	drop = "",
})

-- Protected Chest

minetest.register_node("protector:chest", {
	description = "Protected Chest",
	tiles = {
		"default_chest_top.png", "default_chest_top.png",
		"default_chest_side.png", "default_chest_side.png",
		"default_chest_side.png", "default_chest_front.png^protector_logo.png"
	},
	paramtype2 = "facedir",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, unbreakable = 1},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Protected Chest")
		meta:set_string("name", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 8 * 4)
	end,

	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		if inv:is_empty("main") then
			if not minetest.is_protected(pos, player:get_player_name()) then
				return true
			end
		end
	end,

	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
		" moves stuff to protected chest at " .. minetest.pos_to_string(pos))
	end,

	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
		" takes stuff from protected chest at " .. minetest.pos_to_string(pos))
	end,

	on_rightclick = function(pos, node, clicker)
		if not minetest.is_protected(pos, clicker:get_player_name()) then
		local meta = minetest.get_meta(pos)
		local spos = pos.x .. "," .. pos.y .. "," ..pos.z
		local formspec = "size[8,9]"..
			default.gui_bg..default.gui_bg_img..default.gui_slots
			.. "list[nodemeta:".. spos .. ";main;0,0.3;8,4;]"
			.. "button[0,4.5;2,0.25;toup;To Chest]"
			.. "field[2.3,4.8;4,0.25;chestname;;"
			.. meta:get_string("name") .. "]"
			.. "button[6,4.5;2,0.25;todn;To Inventory]"
			.. "list[current_player;main;0,5;8,1;]"
			.. "list[current_player;main;0,6.08;8,3;8]"
			.. "listring[nodemeta:" .. spos .. ";main]"
			.. "listring[current_player;main]"
			.. default.get_hotbar_bg(0,5)

			minetest.show_formspec(
				clicker:get_player_name(),
				"protector:chest_" .. minetest.pos_to_string(pos),
				formspec)
		end
	end,
})

-- Protected Chest formspec buttons

minetest.register_on_player_receive_fields(function(player, formname, fields)

	if string.sub(formname, 0, string.len("protector:chest_")) == "protector:chest_" then

		local pos_s = string.sub(formname,string.len("protector:chest_") + 1)
		local pos = minetest.string_to_pos(pos_s)
		local meta = minetest.get_meta(pos)
		local chest_inv = meta:get_inventory()
		local player_inv = player:get_inventory()

		if fields.toup then

			-- copy contents of players inventory to chest
			for i, v in ipairs (player_inv:get_list("main") or {}) do
				if (chest_inv and chest_inv:room_for_item('main', v)) then
					local leftover = chest_inv:add_item('main', v)
					player_inv:remove_item("main", v)
					if (leftover and not(leftover:is_empty())) then
						player_inv:add_item("main", v)
					end
				end
			end
	
		elseif fields.todn then

			-- copy contents of chest to players inventory
			for i, v in ipairs (chest_inv:get_list('main') or {}) do
				if (player_inv:room_for_item("main", v)) then
					local leftover = player_inv:add_item("main", v)
					chest_inv:remove_item('main', v)
					if( leftover and not(leftover:is_empty())) then
						chest_inv:add_item('main', v)
					end
				end
			end

		elseif fields.chestname then

			-- change chest infotext to display name
			if fields.chestname ~= "" then
				meta:set_string("name", fields.chestname)
				meta:set_string("infotext",
				"Protected Chest (" .. fields.chestname .. ")")
			else
				meta:set_string("infotext", "Protected Chest")
			end

		end
	end

end)

-- Protected Chest recipe

minetest.register_craft({
	output = 'protector:chest',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'default:copper_ingot', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

minetest.register_craft({
	output = 'protector:chest',
	recipe = {
		{'default:chest', 'default:copper_ingot', ''},
	}
})

-- Disable PVP in your own protected areas
if minetest.setting_getbool("enable_pvp") and protector.pvp then

	if minetest.register_on_punchplayer then

		minetest.register_on_punchplayer(
		function(player, hitter, time_from_last_punch, tool_capabilities, dir, damage)

			if not player or not hitter then
				print("[Protector] on_punchplayer called with nil objects")
			end

			if not hitter:is_player() then
				return false
			end

			-- no pvp at spawn area
			local pos = player:getpos()
			if pos.x < statspawn.x + protector.spawn
			and pos.x > statspawn.x - protector.spawn
			and pos.y < statspawn.y + protector.spawn
			and pos.y > statspawn.y - protector.spawn
			and pos.z < statspawn.z + protector.spawn
			and pos.z > statspawn.z - protector.spawn then
				return true
			end

			local hitter_can_build =  not minetest.is_protected(pos, hitter:get_player_name());
			local player_can_build = not minetest.is_protected(pos, player:get_player_name());
			
			--can hurt: hitter_can_build OR (NOT hitter_can_build AND NOT player_can_build)
			
			
			if hitter_can_build or ((not player_can_build) and (not hitter_can_build)) then -- attacker can hurt player where he can build or if both cant build
				return false -- can hurt
			else
				return true -- can not hurt
			end

		end)
	else
		print("[Protector] pvp_protect not active, update your version of Minetest")

	end
else
	print("[Protector] pvp_protect is disabled")
end

print ("[MOD] Protector Redo loaded")



minetest.register_chatcommand("resetprotect", {
    description = "Resets protector count in neighborhood to 0 to reduce costs to default.",
    privs = {privs=true},
    func = function(name)
        local player = minetest.get_player_by_name(name)
        local pos = player:getpos();
		protector.count(pos, 3); -- reset counts to 0
		minetest.chat_send_player(player:get_player_name(),"PROTECTOR: counts in neighborhood ( 15 blocks around ) reset to 0.");
    end,
})