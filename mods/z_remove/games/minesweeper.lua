--Minesweeper
local minesweeper = {};
minesweeper.games = {};-- games in progress

minetest.register_node("games:minesweeper", {
description = "minesweeper",
	tiles = {"default_copper_block.png"},
	groups = {oddly_breakable_by_hand=2},
	is_ground_content = false,
	paramtype = "light",
	light_source = 10,
	sounds = default.node_sound_wood_defaults(),
	
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos);
		local width = 10;meta:set_int("width",width);
		local height = 10;meta:set_int("height",height);
		local count = 20;meta:set_int("count",count);
		meta:set_string("player",""); -- whos playing
		meta:set_int("t",0); -- start of game
		
		local form  = "size[3,3] field[0.25,0.5;1,1;width;width ;"..width.."]"..
			"field[2.25,0.5;1,1;height;height ;"..height.."]" ..
			"field[0.25,1.5;1,1;count;count ;"..count.."]" ..
			"button_exit[0.,2.5;1,1;OK;OK]";
		meta:set_string("formspec", form);
		meta:set_string("owner", placer:get_player_name());
		meta:set_string("infotext","Minesweeper, punch or activate to start the game");
	end,
	
	on_receive_fields = function(pos, formname, fields, player)
        if minetest.is_protected(pos, player:get_player_name()) then return end
		if fields.OK then
			local meta = minetest.get_meta(pos);
			local width = tonumber(fields.width) or 5;
			local height = tonumber(fields.height) or 5;
			local count = tonumber(fields.count) or 5;
			local form  = "size[3,3] field[0.25,0.5;1,1;width;width ;"..width.."]"..
			"field[2.25,0.5;1,1;height;height ;"..height.."]" ..
			"field[0.25,1.5;1,1;count;count ;"..count.."]" ..
			"button_exit[0.,2.5;1,1;OK;OK]";
			meta:set_string("formspec", form);
			-- clear gamearea
			
			local i,j;
			for i=1,width do
				for j=1,height do
					minetest.set_node({x=pos.x+i+1,y=pos.y,z=pos.z+j+1},{name = "air"}); 
				end
			end
			meta:set_int("mines",0);
			meta:set_int("width",width);
			meta:set_int("height",height);
			meta:set_int("count", count);
			meta:set_string("player","");
			meta:set_int("t",0); -- start of game
			meta:set_string("infotext", "minesweeper game set. punch block to start game.")

		end
	end,
      
	on_punch = function(pos, node, puncher, pointed_thing)
		
		if puncher:get_player_control().sneak then return end
		
		local meta = minetest.get_meta(pos);
		-- can we start new game? not too soon and player not still playing
		local t0 = meta:get_int("t");
		local t1 = minetest.get_gametime();
		if t1-t0<5 then return end
		meta:set_int("t",t1);
		local pname = meta:get_string("player");
		local name = puncher:get_player_name();
		local mines = meta:get_int("mines");
		
	
		if pname~=name then
			local player = minetest.get_player_by_name(pname);
			if player then 
				local p = player:getpos();
				local dist = math.sqrt((p.x-pos.x)^2+(p.y-pos.y)^2+(p.z-pos.z)^2);
				if dist< 30 then minetest.chat_send_player(name, "games: minesweeper game still in progress") return end
			end
		elseif minesweeper.games[name] then -- if game in progress end it
			
			local finished = true;
			
			-- check if mines are marked correctly!
			local width = meta:get_int("width");
			local height = meta:get_int("height");
			local count = meta:get_int("count");
			local i,j,mpos;
			for i=1,width do
				for j=1,height do
					mpos = {x=pos.x+i+1,y=pos.y,z=pos.z+j+1};
					if minetest.get_node(mpos).name ~= "games:markmine" and minetest.get_meta(mpos):get_int("mine")==1 then -- FAIL
						finished = false;
					elseif minetest.get_node(mpos).name == "games:markmine" and minetest.get_meta(mpos):get_int("mine")==0 then
						finished = false;
					end
					
				end
			end
			
			if not finished then
			
				minetest.chat_send_all("games: BOOM! ".. name .. " has failed to detect the mines properly ! ")  
				if mpos then minetest.swap_node(mpos,{name = "default:cobble"}) end
				minesweeper.games[name]=nil; -- end game
				return;

			else -- done
				
			
				-- activates block below minesweeper game block upon game completion
				local pos = {x=pos.x,y=pos.y-1,z=pos.z};
				local node = minetest.get_node(pos); if not node.name then return end -- error
				local table = minetest.registered_nodes[node.name];
				if table and table.mesecons and table.mesecons.effector then 
					local effector=table.mesecons.effector;
					if effector.action_on then
						effector.action_on(pos,node,16) 
					end
				end;
				meta:set_string("infotext", name .. " just solved minesweeper level");
				meta:set_string("player","");
				minesweeper.games[name]=nil;
				return
			end
		end
	
		-- no game yet, place mines
		meta:set_string("player",name);
		minesweeper.create_game(pos);
		return
		
	
	end
	}
)

minesweeper.create_game = function(pos)

	local meta = minetest.get_meta(pos);
	local width = meta:get_int("width");
	local height = meta:get_int("height");
	local count = meta:get_int("count");
	local i,j;
	for i=1,width do
		for j=1,height do
			minetest.set_node({x=pos.x+i+1,y=pos.y,z=pos.z+j+1},{name = "games:dirt"}); --??
		end
	end
	
	local mines = 0;
	local mtable = {};
	math.randomseed(minetest.get_gametime());
	
	for i=1,count do -- place max up to count mines
		local x = math.random(width);
		local z = math.random(height);
		if not mtable[{x,z}] then 
			mtable[{x,z}]=true 
			local mmeta = minetest.get_meta({x=pos.x+x+1,y=pos.y,z=pos.z+z+1});
			mmeta:set_int("mine",1);
			mines=mines+1;
		end
	end
	
	local pname = meta:get_string("player");
	minesweeper.games[pname] = {pos=pos}; -- position of gameblock
	meta:set_int("mines", mines); -- remaining mines
	meta:set_string("infotext", "Minesweeper game started by "..pname..", there are ".. mines .. " mines. Mark all mines by double punch from distance. Mark area as safe by standing over it and punching. When you are done punch gameblock.");
	minetest.chat_send_player(pname, "game: Minesweeper game started");
	
end

local punch_minesweep = function(pos, node, puncher, pointed_thing)
		
		-- find closeby game and play
		local gpos, dist;
		for _,v in pairs(minesweeper.games) do
			dist = math.sqrt((v.pos.x-pos.x)^2+(v.pos.y-pos.y)^2+(v.pos.z-pos.z)^2);
			if dist<32 then gpos = v.pos end
		end
		
		local name = puncher:get_player_name();
		if not gpos then 
			minetest.chat_send_player(name,"games: punch nearby game block for minesweeper to start playing.")
			return 
		end
	
		local meta = minetest.get_meta(pos);
		
		
		local ppos = puncher:getpos(); -- player position
		--dist = math.sqrt((ppos.x-pos.x)^2+(ppos.y-pos.y)^2+(ppos.z-pos.z)^2);
		
		local mines = 0;
		for i = -1,1 do
			for j = -1,1 do
				local mmeta = minetest.get_meta({x=pos.x+i,y=pos.y,z=pos.z+j});
				if mmeta:get_int("mine") == 1 then mines = mines +1 end
			end
		end
			--minetest.chat_send_player(name, "Found " .. mines .. " nearby mines. Punch 2x to mark mine")
		meta:set_string("infotext", "found ".. mines .. " nearby mines")
		
		 -- try mark block as safe?
		if meta:get_int("mine")==1 then
			minetest.chat_send_all("games: BOOM! ".. name .. " has stepped on mine ")  
			minetest.swap_node(pos,{name = "games:markmine"})
			puncher:setpos({x=gpos.x,y=gpos.y+1,z=gpos.z});
			local gmeta =  minetest.get_meta(gpos);
			local pname = gmeta:get_string("player");
			minesweeper.games[name]=nil; -- end game
			gmeta:set_string("player","");
			
			-- activates block below minesweeper game with OFF upon fail
			gpos.y=gpos.y-1;
			local node = minetest.get_node(gpos); if not node.name then return end -- error
			local table = minetest.registered_nodes[node.name];
			if table and table.mesecons and table.mesecons.effector then 
				local effector=table.mesecons.effector;
				if effector.action_off then 
					effector.action_off(gpos,node,16) 
				end
			end;
			
			return
		else
			minetest.swap_node(pos,{name = "default:dirt_with_grass"})
		end
		
end

local reveal_minesweep = function(pos, node, player, itemstack, pointed_thing)

	-- local t0 = meta:get_int("t");
	-- local t1 = minetest.get_gametime();
	-- if t1-t0<1 then -- un/mark mine
	if node.name == "games:dirt" then
		minetest.swap_node(pos,{name = "games:markmine"})
	else
		minetest.swap_node(pos,{name = "games:dirt"})
	end
	--meta:set_int("t",t1);

	end







minetest.register_node("games:dirt", {
	description = "Dirt with mines, punch from far to check for mines, stand near and punch to clear mine",
	tiles = {"default_dirt.png"},
	groups =  {immortal = 1},
	sounds = default.node_sound_dirt_defaults(),
	on_punch = punch_minesweep,
	on_rightclick = reveal_minesweep
})

minetest.register_node("games:markmine", {
	description = "Dirt with mines, punch from far to check for mines, stand near and punch to clear mine",
	tiles = {"default_lava.png"},
	groups =  {immortal = 1},
	sounds = default.node_sound_dirt_defaults(),
	on_punch = punch_minesweep,
	on_rightclick = reveal_minesweep
});
