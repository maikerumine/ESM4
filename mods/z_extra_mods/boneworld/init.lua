-- boneworld by rnd, 2016

-- for more interesting bone gameplay:

-- you no longer get extra bones if you pick bones from player with same ip address (no suicide bone farming)
-- each player has experience points (xp)
-- when you die you loose 20% of your xp, half of that is stored in bones
-- (when you kill other player you get 10% of his xp)
-- if you pick up bones you get xp stored in bones
-- if you pick up other player bones you get 20% of average of your and bone owner xp award in extra bones (for example if you have 10 xp and you pick noob bone will get 2 bones instead of normally 1)


local worldpath = minetest.get_worldpath();
os.execute( "mkdir "..worldpath.. "\\boneworld") -- directory used to save xp data
local boneworld = {};
boneworld.xp = {}; -- total xp
--boneworld.killxp = {}; -- xp obtained through kills

boneworld.wastedxp = 0; -- xp thats stored in bones and not yet reclaimed
-- idea: vote on table ( select player checkbox) to select who should receive wasted xp after it accumulates 10? xp


local share_bones_time = tonumber(minetest.setting_get("share_bones_time")) or 1200
--local share_bones_time = tonumber(minetest.setting_get("share_bones_time")) or 20;
local share_bones_time_early = tonumber(minetest.setting_get("share_bones_time_early")) or share_bones_time / 4


local function is_owner(pos, name)
	local owner = minetest.get_meta(pos):get_string("owner")
	if owner == "" or owner == name or minetest.check_player_privs(name, "protection_bypass") then
		return true
	end
	return false
end

local on_timer = function(pos, elapsed)
	local meta = minetest.get_meta(pos)
	local time = meta:get_int("time")+elapsed; 
	if time >= share_bones_time then
		
		meta:set_string("infotext", meta:get_string("owner").."'s old bones (died ".. meta:get_string("date") .."), xp " ..math.floor(meta:get_float("xp")*100)/100);
		meta:set_string("owner", "")
		
	else
		if meta:get_int("active") == 0 then -- store data in bones, 1x
			meta:set_int("active",1);
			local owner = meta:get_string("owner");
			meta:set_string("date",os.date("%x"));
			meta:set_string("owner_orig",owner);
			meta:set_string("ip", tostring(minetest.get_player_ip(owner)));
			if not minetest.get_player_by_name(owner) then -- mob bones
				boneworld.xp[owner] = 0.5 -- 1/2th of noob player xp in mobs bone
				time=0.5*share_bones_time; -- 2x shorter old bone time
			else
				boneworld.xp[owner] = boneworld.xp[owner] or 1;
			end
			
			if boneworld.xp[owner]==1 then
				meta:set_float("xp", 0.1)
			else			
				meta:set_float("xp", boneworld.xp[owner]*1.25*0.1); -- xp stored in bones
			end
			
			boneworld.wastedxp  = boneworld.wastedxp + meta:get_float("xp"); 
			meta:set_string("infotext"," Here lies " .. owner  .. ", bone xp " .. math.floor(meta:get_float("xp")*100)/100);
		end
		meta:set_int("time", time)
		return true
	end
end

local on_punch = function(pos, node, player)
	if(not is_owner(pos, player:get_player_name())) then
		return
	end
	
	if(minetest.get_meta(pos):get_string("infotext") == "") then
		return
	end
	
	local inv = minetest.get_meta(pos):get_inventory()
	local player_inv = player:get_inventory()
	local has_space = true
	
	for i=1,inv:get_size("main") do
		local stk = inv:get_stack("main", i)
		if player_inv:room_for_item("main", stk) then
			inv:set_stack("main", i, nil)
			player_inv:add_item("main", stk)
		else
			has_space = false
			break
		end
	end
	
	-- remove bones if player emptied them
	if has_space then
		local meta = minetest.get_meta(pos);
		local active  = meta:get_int("active") == 1;
		local puncher = player:get_player_name();
		
		-- award extra bones if you collect bones from different ip player
		--debug
		if active and meta:get_string("ip")~= tostring(minetest.get_player_ip(puncher)) then
			
			-- average of owners xp (at time of death) and puncher xp will be awarded as extra bones
			-- with every 10 more xp one bone
			local count = 1+0.2*(10*meta:get_float("xp")+boneworld.xp[puncher])/2.0;
			count = math.floor(count);
			minetest.chat_send_player(puncher, "you find " .. count .. " bones in the corpse.");
			
			if player_inv:room_for_item("main", ItemStack("bones:bones "..count)) then
				player_inv:add_item("main", ItemStack("bones:bones "..count))
			else
				minetest.add_item(pos,ItemStack("bones:bones "..count))
			end
		end
		
		-- add xp from bones to player who retrieved bones;
		
		boneworld.xp[puncher] = boneworld.xp[puncher] + meta:get_float("xp");
		boneworld.wastedxp = boneworld.wastedxp - meta:get_float("xp");
		minetest.remove_node(pos)
	end
end

-- award xp to killer
-- minetest.register_on_punchplayer(
	-- function(player, hitter, time_from_last_punch, tool_capabilities, dir, damage)
		-- local hp = player:get_hp();

		-- if hp>0 and hp-damage<=0 then -- hitter killed player
			-- local pname = player:get_player_name();
			-- if not hitter:is_player() then return end
			-- local hname = hitter:get_player_name(); 
			
			
			--award xp if you kill different ip player, 10% of his xp
			
			-- if tostring(minetest.get_player_ip(pname))~=tostring(minetest.get_player_ip(hname)) then
				-- local pxp = boneworld.xp[pname];
				-- local addxp =pxp*0.1;
				-- boneworld.xp[hname] = boneworld.xp[hname] + addxp;
				-- boneworld.killxp[hname] = boneworld.killxp[hname] + addxp;
				--minetest.chat_send_player(hname, "#You killed " .. pname .. ". As a reward you get ".. math.floor(addxp*100)/100 .. " experience.");
			-- end
		-- end
	-- end
-- )

-- 20% of xp is lost upon death
minetest.register_on_dieplayer(
	function(player)
		local name = player:get_player_name();
		local xp = boneworld.xp[name] or 1;
		local newxp = xp*0.8;
		if newxp<1 then newxp = 1 end
		local lossxp = xp - newxp;
		
		--minetest.chat_send_player(name, "#You lost ".. math.floor(lossxp*100)/100 .. " experience. Retrieve your bones to get 50% of lost experience back ");
		boneworld.xp[name] = newxp;
	end
)


-- load xp
minetest.register_on_joinplayer(
	function(player)
		local name = player:get_player_name();
		if not boneworld.xp[name] then -- load xp
			local filename = worldpath .. "\\boneworld\\" .. name..".xp";
			local f = io.open(filename, "r");
			if not f then -- file does not yet exist
				boneworld.xp[name] = 1; 
				--boneworld.killxp[name] = 0; 
				return 
			end
			local str = f:read("*a") or 1;
			local words = {};
			for w in str:gmatch("%S+") do words[#words+1]=w end
			boneworld.xp[name] = tonumber(words[1] or 1);
			--boneworld.killxp[name] = tonumber(words[2] or 0);
			f:close();
		end
	end
)

-- save xp
minetest.register_on_leaveplayer(
		function(player)
		local name = player:get_player_name();
		local xp = boneworld.xp[name] or 1;
		--debug
		if xp > 1.5 then -- save xp for serious players only -- must have collected bones/killed at least 5 noobs
			local filename = worldpath .. "\\boneworld\\" .. name..".xp";
			
			local f = io.open(filename, "w");
			if not f then return end
			f:write(xp);-- .. " " .. boneworld.killxp[name]); 
			f:close();
		else
			-- dont save, player didnt do anything
		end
	end

)


local tweak_bones = function()
	local name = "bones:bones";
	local table = minetest.registered_nodes[name];
	table.on_punch = on_punch;
	table.on_timer = on_timer;
	minetest.register_node(":"..name, table);
end

minetest.after(0,tweak_bones);

minetest.register_chatcommand("xp", {
	description = "xp name - show bone collecting experience of target player",
	privs = {
		interact = true
	},
	func = function(name, param)
		
		if param == "" then 
			local xp = math.floor((boneworld.xp[name])*100)/100;
			--local killxp = math.floor((boneworld.killxp[name])*100)/100;
			msg  = "xp name - show bone collecting experience of target player"
			.."\n# "..name .. " has " .. xp .. " experience"
			.. "\nTotal bone xp ( stored in bones ) " .. math.floor(boneworld.wastedxp*100)/100;
		else
			local xp = math.floor((boneworld.xp[param] or 1)*100)/100;
			--local killxp = math.floor((boneworld.killxp[param])*100)/100;
			msg = "# "..param .. " has " .. xp .. " experience"
		end 
		minetest.chat_send_player(name, msg);
	end
});