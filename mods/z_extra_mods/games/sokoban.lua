-- SOKOBAN GAME
-- by rnd


local sokoban = {};
sokoban.push_time = 0
sokoban.blocks = 0;sokoban.level = 0; sokoban.moves=0;
sokoban.load=0;sokoban.playername =""; sokoban.pos = {};
local SOKOBAN_WALL = "games:stone_maze"
local SOKOBAN_FLOOR = "default:stone"
local SOKOBAN_GOAL = "default:tree"


minetest.register_node("games:crate", { -- block that player pushes around, basically main sokoban routine
	description = "sokoban crate",
	tiles = {"crate.png"},
	paramtype = "light",
	light_source = 10,
	is_ground_content = false,
	groups = {immortal = 1},
	sounds = default.node_sound_wood_defaults(),
	on_punch = function(pos, node, player)
		local name = player:get_player_name(); if name==nil then return end
		if sokoban.playername~=name then 
			if sokoban.playername == "" then 
				minetest.chat_send_player(name,"Please right click level loader block to load and play Sokoban")
				return
			end
			minetest.chat_send_player(name,"Only ".. sokoban.playername .. " can play. To play new level please right click loader block and select level.")
			return
		end
		local time = sokoban.push_time; local t = minetest.get_gametime();
		if t-time<1 then return end;sokoban.push_time = t
		local p=player:getpos();local q={x=pos.x,y=pos.y,z=pos.z}
		p.x=p.x-q.x;p.y=p.y-q.y;p.z=p.z-q.z
		if math.abs(p.y+0.5)>0 then return end
		if math.abs(p.x)>math.abs(p.z) then
			if p.z<-0.5 or p.z>0.5 or math.abs(p.x)>1.5 then return end
			if p.x+q.x>q.x then q.x= q.x-1 
				else q.x = q.x+1
			end
		else
			if p.x<-0.5 or p.x>0.5 or  math.abs(p.z)>1.5 then return end
			if p.z+q.z>q.z then q.z= q.z-1 
				else q.z = q.z+1
			end
		end
		
		
		if minetest.get_node(q).name=="air" then -- push crate
			sokoban.moves = sokoban.moves+1
			local old_infotext = minetest.get_meta(pos):get_string("infotext");
			minetest.set_node(pos,{name="air"})
			minetest.set_node(q,{name="games:crate"})
			minetest.sound_play("default_dig_dig_immediate", {pos=q,gain=1.0,max_hear_distance = 24,})
			local meta = minetest.get_meta(q);
			q.y=q.y-1; 
			if minetest.get_node(q).name==SOKOBAN_GOAL then  
				if old_infotext~="GOAL REACHED" then
					sokoban.blocks = sokoban.blocks -1;
				end
				meta:set_string("infotext", "GOAL REACHED") 
			else 
				if old_infotext=="GOAL REACHED" then
					sokoban.blocks = sokoban.blocks +1
				end
				meta:set_string("infotext", "push crate on top of goal block") 
			end
		end
		local name = player:get_player_name(); if name==nil then return end
		if sokoban.blocks~=0 then
			minetest.chat_send_player(name,"move " .. sokoban.moves .. " : " ..sokoban.blocks .. " crates left ");
			else 
				minetest.chat_send_all("games: ".. name .. " just solved sokoban level ".. sokoban.level .. " in " .. sokoban.moves .. " moves.");
				local meta = minetest.get_meta(sokoban.pos);
				meta:set_string("infotext", name .. " just solved sokoban level ".. sokoban.level .. " in " .. sokoban.moves .. " moves.");
				
				local imax = meta:get_int("imax"); local jmax = meta:get_int("jmax");
				
				local i,j;
				for i = 1,imax do
					for j=1,jmax do
						minetest.set_node({x= sokoban.pos.x+i,y=sokoban.pos.y,z=sokoban.pos.z+j}, {name = "air"}); -- clear level
					end
				end
				
				-- activates block below sokoban game block upon game completion
				local pos = {x=sokoban.pos.x,y=sokoban.pos.y-1,z=sokoban.pos.z};
				local node = minetest.get_node(pos); if not node.name then return end -- error
				local table = minetest.registered_nodes[node.name];
				if table and table.mesecons and table.mesecons.effector then 
					local effector=table.mesecons.effector;
					effector.action_on(pos,node,16) 
				end;
				sokoban.playername = ""; sokoban.level = 1
		end
	end,
})


minetest.register_node("games:sokoban", { -- level loader block
description = "sokoban crate",
	tiles = {"default_brick.png","crate.png","crate.png","crate.png","crate.png","crate.png"},
	groups = {oddly_breakable_by_hand=1},
	is_ground_content = false,
	paramtype = "light",
	light_source = 14,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		
		local form  = 
		"size[3,1]" ..  -- width, height
		"field[0,0.5;3,1;level;enter level 1 to 90;1]"..
		"button_exit[2.5,0.25;1,1;OK;OK]"
		meta:set_string("formspec", form)
		meta:set_string("infotext","sokoban level loader, right click to select level")
		meta:set_int("time", minetest.get_gametime()-300);
	end, 
	on_punch = function(pos, node, player) -- make timer ready to enter
		local name = player:get_player_name(); if name==nil then return end
		local privs = minetest.get_player_privs(name); 
		if not privs.ban then return end
		local meta = minetest.get_meta(pos)
		minetest.chat_send_player(name,"Sokoban loader reset. Load level now.")
	end,
	on_receive_fields = function(pos, formname, fields, sender) 
		local name = sender:get_player_name(); if name==nil then return end
		local privs = minetest.get_player_privs(name); 

		if fields.OK ~= "OK" then return end
		
		local meta = minetest.get_meta(pos)
		if not privs.kick and sokoban.playername~="" then 
			local player = minetest.get_player_by_name(sokoban.playername)
			if player and name~= sokoban.playername then
				local ppos = player:getpos();
				local dist = math.max(math.abs(pos.x-ppos.x),math.abs(pos.y-ppos.y),math.abs(pos.z-ppos.z));
				if dist<32 then 
					minetest.chat_send_player(name,sokoban.playername .. " is still playing. Wait until he is finished and then try again");
					return
				end
			end			
		end
		
		sokoban.pos = pos;
		sokoban.playername = name
		local lvl;
		if tonumber(fields.level) ~=nil then			
			lvl = tonumber(fields.level)-1 
		end
		if lvl == nil then return end
		if lvl <0 or lvl >89 then return end
		
		local file = io.open(minetest.get_modpath("games").."/sokoban.txt","r")
		if not file then minetest.chat_send_player(name,"failed to open sokoban.txt") return end
		local str = ""; local s; local p = {x=pos.x,y=pos.y,z=pos.z}; local i,j;i=0;
		local lvl_found = false
		while str~= nil do
			str = file:read("*line"); 
			if str~=nil and str =="; "..lvl then lvl_found=true break end
		end
		if not lvl_found then file:close();return end
		
		sokoban.blocks = 0;sokoban.level = lvl+1; sokoban.moves=0;
		local imax=0; local jmax = 0;
		while str~= nil do
			str = file:read("*line"); 
			if str~=nil then 
				if string.sub(str,1,1)==";" then
					imax=i;
					meta:set_int("imax",imax); meta:set_int("jmax", jmax); -- remember game dimensions
					file:close(); minetest.chat_send_all("games: sokoban level "..sokoban.level .." loaded by ".. name .. ". It has " .. sokoban.blocks  .. " boxes to push. "); return 
				end
				i=i+1;
				if string.len(str)>jmax then jmax = string.len(str) end -- determine max dimensions
				for j = 1,string.len(str) do
					p.x=pos.x+i;p.y=pos.y; p.z=pos.z+j; s=string.sub(str,j,j);
					p.y=p.y-1; 
					if minetest.get_node(p).name~=SOKOBAN_FLOOR then minetest.set_node(p,{name=SOKOBAN_FLOOR}); end -- clear floor
					p.y=p.y+1;
					if s==" " and minetest.get_node(p).name~="air" then minetest.set_node(p,{name="air"}) end
					if s=="#" and minetest.get_node(p).name~=SOKOBAN_WALL then minetest.set_node(p,{name=SOKOBAN_WALL}) end
					if s=="$" then minetest.set_node(p,{name="games:crate"});sokoban.blocks=sokoban.blocks+1 end
					if s=="." then p.y=p.y-1;minetest.set_node(p,{name=SOKOBAN_GOAL}); p.y=p.y+1;minetest.set_node(p,{name="air"}) end
					--starting position
					if s=="@" then 
						sender:setpos({x=p.x,y=p.y+3,z=p.z}); -- move player to start position
						p.y=p.y-1;minetest.set_node(p,{name="default:glass"}); 
						p.y=p.y+1;minetest.set_node(p,{name="air"}) 
						p.y=p.y+2;minetest.set_node(p,{name="default:ladder"}) 
					end
					if s~="@" then p.y = pos.y+2;minetest.set_node(p,{name="games:glass_maze"});  
						else p.y=pos.y+2;minetest.set_node(p,{name="default:ladder"})
					end -- roof above to block jumps
					
				end
			end
		end
		
		file:close();		
	end,
})