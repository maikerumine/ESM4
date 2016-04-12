--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.


es = {}



-- rnd: anti noclip cheat
local clip_nodes = {["default:stone"]=1,["default:cobble"]=1,["default:stonebrick"]=1,["default:dirt"]=1,["default:glass"]=1,["default:dirt"]=1,["default:steelblock"]=1}
local time =0;
local ANTI_CHEAT_UPDATE_TIME = 5;
local anti_cheat = {};


minetest.register_globalstep(function(dtime)
	time = time + dtime
	if time < ANTI_CHEAT_UPDATE_TIME then return end
	time = 0;

	for _,player in ipairs(minetest.get_connected_players()) do
 local p = player:getpos()
 local name = player:get_player_name();
	local node1 = minetest.get_node(p).name;
 p.y=p.y+1;
 local node2 = minetest.get_node(p).name;
	--minetest.chat_send_all(name .. " : " .. (clip_nodes[node1] or 0) .. " " .. (clip_nodes[node2] or 0));
 local privs = minetest.get_player_privs(name);
	if not privs.noclip then
	if clip_nodes[node1]==1 and clip_nodes[node2]==1 then
	if player:get_hp() > 0 then -- if alive
	local p0 = anti_cheat[name] or {x=p.x,y=p.y,z=p.z}; -- read previous player position from 5 secs ago
	local check = true;
	if clip_nodes[minetest.get_node(p0).name]~=1 then check = false end -- previous position was not inside clip
	p0={x=p.x-p0.x,y=p.y-p0.y,z=p.z-p0.z}; -- movement direction
	local dist = math.sqrt(p0.x*p0.x+p0.y*p0.y+p0.z*p0.z);
	if dist == 0 then check = false -- player not moving
	else
	p0.x=p0.x/dist;p0.y=p0.y/dist;p0.z=p0.z/dist;
	for i=1,16 do -- look into direction of movement backwards for any nonclip blocks
	local node = minetest.get_node({x=p.x-p0.x*i,y=p.y-p0.y*i,z=p.z-p0.z*i}).name;
	if clip_nodes[node]~=1 then check = false break end
	end

	end
	if check then
	player:set_hp(3); -- kill player
	minetest.chat_send_all(name.. " was caught walking inside walls at " .. p.x .. " " .. p.y .. " " .. p.z)
	minetest.log("action", name.. " was caught walking inside walls at " .. p.x .. " " .. p.y .. " " .. p.z)
	end

	end
	end
	end
	anti_cheat[name]=p; -- remember previous position
	end
end
)
