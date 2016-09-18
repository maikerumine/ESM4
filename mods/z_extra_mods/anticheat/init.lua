-- ANTI CHEAT by rnd
-- Copyright 2016 rnd
-- includes modified/bugfixed spectator mod by jp

-------------------------------------------------------------------------
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
-------------------------------------------------------------------------
local cheat = {};
local version = "09.13.2016a";

anticheatsettings = {};
dofile(minetest.get_modpath("anticheat").."/settings.lua")

local CHEAT_TIMESTEP = anticheatsettings.CHEAT_TIMESTEP;
local CHECK_AGAIN = anticheatsettings.CHECK_AGAIN;
cheat.moderators = anticheatsettings.moderators;


anticheatdb = {}; -- data about detected cheaters


cheat.suspect = "";
cheat.players = {};
cheat.message = "";
cheat.debuglist = {}; -- [name]=true
cheat.scan_timer = 0
cheat.nodelist = {};
cheat.watcher = {}; -- list of watchers

cheat.timestep = CHEAT_TIMESTEP;
-- list of forbidden nodes
cheat.nodelist = {["default:stone"] = false, ["default:cobble"]= false, ["default:dirt"] = false, ["default:sand"]=false,["default:tree"]= false};


local punish_cheat = function(name)
	
	local player = minetest.get_player_by_name(name); 
	local ip = tostring(minetest.get_player_ip(name));
	
	if not player then return end
	local text=""; local logtext = "";
	
	if cheat.players[name].cheattype == 1 then
		text = "#anticheat: ".. name .. " was caught walking inside wall";
		logtext = "#anticheat: Player ".. name .. " was caught walking inside wall at " .. minetest.pos_to_string(cheat.players[name].cheatpos);
		player:set_hp(0);
	elseif cheat.players[name].cheattype == 2 then
		text = "#anticheat: ".. name .. " was caught flying";
		logtext= os.date("%H:%M.%S").." #anticheat: ".. name .. " (ip "..ip..") was caught flying at " .. minetest.pos_to_string(cheat.players[name].cheatpos);
		player:set_hp(0);
	end
	
	
	if text~="" then
		minetest.chat_send_all(text);
		minetest.log("action", logtext);
		cheat.message = logtext;
		
		anticheatdb[ip] = {name = name, msg = logtext};

		cheat.players[name].count=0; -- reset counter
		cheat.players[name].cheattype = 0;
		
		for name,_ in pairs(cheat.moderators) do -- display full message to moderators
			minetest.chat_send_player(name,logtext);
		end

	end
end


-- check position more closely

-- uncomment when obfuscating:
--dofile(minetest.get_modpath("anticheat").."/anticheat_source.lua")

local anticheat_routines=loadfile(minetest.get_modpath("anticheat").."/anticheat_routines.bin")
check_noclip, check_fly, check_player = anticheat_routines(minetest,cheat,CHECK_AGAIN,punish_cheat);
	

minetest.register_globalstep(function(dtime)
	
	cheat.scan_timer = cheat.scan_timer + dtime
	
	-- GENERAL SCAN OF ALL PLAYERS
	if cheat.scan_timer>cheat.timestep then	
		cheat.timestep = CHEAT_TIMESTEP + (2*math.random()-1)*2; -- randomize step so its unpredictable
		cheat.scan_timer=0;
		--local t = minetest.get_gametime();
		local players = minetest.get_connected_players();
		
		for _,player in pairs(players) do
			check_player(player);
		end
		
		for name,_ in pairs(cheat.debuglist) do -- show suspects in debug
			for _,player in pairs(players) do
				local pname = player:get_player_name();
				if cheat.players[pname].count>0 then
					minetest.chat_send_player(name, "name " .. pname .. ", cheat pos " .. minetest.pos_to_string(cheat.players[pname].cheatpos) .. " last clear pos " .. minetest.pos_to_string(cheat.players[pname].clearpos) .. " cheat type " .. cheat.players[pname].cheattype .. " cheatcount " .. cheat.players[pname].count );
				end
			end
		end
		
		
	end
end)


local watchers = {}; -- for each player a list of watchers
minetest.register_on_joinplayer(function(player) -- init stuff on player join
	local name = player:get_player_name(); if name == nil then return end 
	local pos = player:getpos();
	cheat.players[name]={count=0,cheatpos = pos, clearpos = pos, lastpos = pos, cheattype = 0}; -- type 0: none, 1 noclip, 2 fly
	watchers[name] = {}; -- for spectator mod
	
	local ip = tostring(minetest.get_player_ip(name));
	local msg = "";
	
	-- check anticheat db
	--check ip
	if anticheatdb[ip] then 
		msg = "#anticheat: welcome back detected cheater, ip = " .. ip .. ", name " .. anticheatdb[ip].name .. ", new name = " .. name;
	end;
	--check names
	for ip,v in pairs(anticheatdb) do
		if v.name == name then 
			msg = "#anticheat: welcome back detected cheater, ip = " .. ip .. ", name = newname =  " .. v.name;
			break;
		end
	end
	
	if msg~="" then
		for name,_ in pairs(cheat.moderators) do 
			minetest.chat_send_player(name,msg);
		end
	end
	
end)

minetest.register_chatcommand("cchk", { -- see cheat report
	privs = {
		interact = true
	},
	func = function(name, param)
		local privs = minetest.get_player_privs(name).privs;
		if not cheat.moderators[name] and not privs then return end

		local player = minetest.get_player_by_name(param);
		if not player then return end
		check_player(player);
		
		
		local players = minetest.get_connected_players();		
		for name,_ in pairs(cheat.debuglist) do -- show suspects in debug
			for _,player in pairs(players) do
				local pname = player:get_player_name();
				if cheat.players[pname].count>0 then
					minetest.chat_send_player(name, "name " .. pname .. ", cheat pos " .. minetest.pos_to_string(cheat.players[pname].cheatpos) .. " last clear pos " .. minetest.pos_to_string(cheat.players[pname].clearpos) .. " cheat type " .. cheat.players[pname].cheattype .. " cheatcount " .. cheat.players[pname].count );
				end
			end
		end
		
		
	end
})


minetest.register_chatcommand("crep", { -- see cheat report
	privs = {
		interact = true
	},
	func = function(name, param)
		local privs = minetest.get_player_privs(name).privs;
		if not cheat.moderators[name] and not privs then return end
		
		local text = "";
		for ip,v in pairs(anticheatdb) do
			if v and v.name and v.msg then
				text = text .. "ip " .. ip .. " name " .. v.name .. " ".. v.msg .. "\n";
			end
		end
		if text ~= "" then
			local form = "size [6,7] textarea[0,0;6.5,8.5;creport;CHEAT REPORT;".. text.."]"
			minetest.show_formspec(name, "basic_machines:help_mover", form)
		end
		
		-- suspects info
		local players = minetest.get_connected_players();
		for _,player in pairs(players) do
			local pname = player:get_player_name();
			if cheat.players[pname].count>0 then
				minetest.chat_send_player(name, "name " .. pname .. ", cheat pos " .. minetest.pos_to_string(cheat.players[pname].cheatpos) .. " last clear pos " .. minetest.pos_to_string(cheat.players[pname].lastpos) .. " cheat type " .. cheat.players[pname].cheattype .. " cheatcount " .. cheat.players[pname].count );
			end
		end

	end
})

minetest.register_chatcommand("cdebug", { -- toggle cdebug= display of stats on/off for this player
	privs = {
		interact = true
	},
	func = function(name, param)
		local privs = minetest.get_player_privs(name).privs;
		if not cheat.moderators[name] and not privs then return end
		
		if cheat.debuglist[name] == nil then cheat.debuglist[name] = true else cheat.debuglist[name] = nil end;
		
		minetest.chat_send_player(name,"#anticheat: " .. version);
		if cheat.debuglist[name]==true then 
			minetest.chat_send_player(name,"#anticheat: display of debug messages is ON");
		else
			minetest.chat_send_player(name,"#anticheat: display of debug messages is OFF");
		end
	end
})


------------------------------------------------------
-- [Mod] Spectator Mode [git] [spectator_mode]
-- https://github.com/minetest-mods/spectator_mode
-- by jp » Tue Dec 08, 2015 15:34
-- modified/bugfixes by rnd
------------------------------------------------------


local original_pos = {}

local function unwatching(name)
	local watcher = minetest.get_player_by_name(name)
	local privs = minetest.get_player_privs(name)

	if watcher and default.player_attached[name] == true then
		watcher:set_detach()
		
		
		local pos = original_pos[watcher]
		if pos then
			-- setpos seems to be very unreliable
			-- this workaround helps though
			minetest.after(0.1, function()
				watcher:setpos(pos)
			end)
			original_pos[watcher] = nil
		end
		cheat.watcher[name]=nil;
		
		minetest.after(5,
			function()
				default.player_attached[name] = false
				watcher:set_eye_offset({x=0, y=0, z=0}, {x=0, y=0, z=0})
				watcher:set_nametag_attributes({color = {a=255, r=255, g=255, b=255}})

				watcher:hud_set_flags({
					healthbar = true,
					minimap = true,
					breathbar = true,
					hotbar = true,
					wielditem = true,
					crosshair = true
				})

				watcher:set_properties({
					visual_size = {x=1, y=1},
					makes_footstep_sound = true,
					collisionbox = {-0.3, -1, -0.3, 0.3, 1, 0.3}
				})
			end
		)
		-- if not privs.interact and cheat.moderators[name] == true then
			-- privs.interact = true
			-- minetest.set_player_privs(name, privs)
		-- end
		
		
		
	end
end

minetest.register_chatcommand("watch", {
	params = "<to_name>",
	description = "",
	privs = {interact=true},
	func = function(name, param)
		
		local privs = minetest.get_player_privs(name)
		if not cheat.moderators[name] and not privs.kick then return end
		local watcher = minetest.get_player_by_name(name)
		
		
		if param == "" then -- no name given - select a suspect automatically
			local players = minetest.get_connected_players();
			for _,player in pairs(players) do
				local pname = player:get_player_name();
				if cheat.players[pname].count>0 then
					param = pname; 
					cheat.suspect = param;
					break; 
				end
			end
			if param == "" and cheat.suspect~="" then param = cheat.suspect end -- if none found watch last suspect
		end
		
		local target = minetest.get_player_by_name(param);
		
		if not target then return end
		if not cheat.players[param] then return end

		
		local canwatch = false;
		for ip,v in pairs(anticheatdb) do
			if v.name == param then 
				canwatch = true;
				break;
			end
		end
	
		
		if canwatch or cheat.players[param].count>0 or param == cheat.suspect or privs.kick then
		else 
			minetest.chat_send_player(name, "ordinary watchers can only watch cheat suspects of detected cheaters");
			return
		end
		
		if target and watcher ~= target then
			if default.player_attached[name] == true then
				unwatching(param)
			else
				original_pos[watcher] = watcher:getpos()
			end
		
			-- show inventory
			local tinv =  target:get_inventory():get_list("main");
			for i,v in pairs(tinv) do tinv[i] = v:to_string(); end
			tinv = dump(tinv);
			local form = "size [6,7] textarea[0,0;6.5,8.5;creport;INVENTORY LIST;".. tinv.."]"
			minetest.show_formspec(name, "watch_inventory", form)
			
			
			default.player_attached[name] = true
			watcher:set_attach(target, "", {x=0, y=-5, z=-20}, {x=0, y=0, z=0})
			watcher:set_eye_offset({x=0, y=-5, z=-20}, {x=0, y=0, z=0})
			watcher:set_nametag_attributes({color = {a=0}})

			watcher:hud_set_flags({
				healthbar = false,
				minimap = false,
				breathbar = false,
				hotbar = false,
				wielditem = false,
				crosshair = false
			})

			watcher:set_properties({
				visual_size = {x=0, y=0},
				makes_footstep_sound = false,
				collisionbox = {0}
			})

			-- privs.interact = nil
			-- minetest.set_player_privs(name, privs)

			cheat.watcher[name]=true;
			watchers[param][name] = true; -- register name as watcher of param
			
			
			return true, "Watching '"..param.."' at "..minetest.pos_to_string(vector.round(target:getpos()))
		end

		return false, "Invalid parameter ('"..param.."')."
	end
})

minetest.register_chatcommand("unwatch", {
	description = "",
	privs = {interact=true},
	func = function(name, param)	
		unwatching(name)
		-- unregister name as watcher
		for pname,val in pairs (watchers) do
			if val[name] then watchers[pname][name] = nil; end
		end
		
	end
})

minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
	for pname,_ in pairs (watchers[name]) do
		unwatching(pname); -- all watchers do /unwatch
	end
	watchers[name] = nil;
end)