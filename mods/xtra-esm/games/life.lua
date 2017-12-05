-- game of life

local life_table = {};
local dim = 5;

minetest.register_abm(
	{nodenames = {"games:life"},
	interval = 5.0,
	chance = 1,
	action = function(pos)
	
	local meta = minetest.get_meta(pos); local infotext = meta:get_string("infotext");
	if infotext~="RUN" then return end
	
	if life_table[0]==nil then return end--  punch node again to initialize
	
	local table_new = {};
	local i,j,k,c,n,p;
	local dp = {{-1,-1},{0,-1},{1,-1},{-1,0},{1,0},{-1,1},{0,1},{1,1}};
	for i = -dim,dim do
		table_new[i]={};
		for j = -dim,dim do
			c = life_table[i][j];
			n=0;
			for k = 1,8 do
				p={i+dp[k][1],j+dp[k][2]};
				if p[1]<-dim then p[1]=dim elseif p[1]>dim then p[1]=-dim end;
				if p[2]<-dim then p[2]=dim elseif p[2]>dim then p[2]=-dim end;
				if life_table[ p[1] ][ p[2] ]==1 then n=n+1 end
			end
			if c == 1 then --alive
				if n>=2 and n<=3 then table_new[i][j]=1
					else
					table_new[i][j]=0
				end
			else -- dead
				if n==3 then table_new[i][j]=1 else table_new[i][j]=0 end
			end
		end
	end
	
	p={x=pos.x,y=pos.y+1,z=pos.z}
	for i = -dim,dim do
		for j = -dim,dim do
			life_table[i][j]=table_new[i][j]
			p.x = pos.x+i;p.z=pos.z+j;
			if minetest.get_node(p).name=="air" then
				if life_table[i][j]==1 then minetest.set_node(p,{name="stairs:slab_stone"}) end
			else
				if life_table[i][j]==0 then minetest.set_node(p,{name="air"}) end
			end
		end
	end
		
	end,
}) 

local function init_game(pos)
	local name; local i,j;local p = {x=pos.x;y=pos.y+1,z=pos.z};
	for i = -dim,dim do
		life_table[i]={};
		for j = -dim,dim do
			p.x = pos.x+i;p.z=pos.z+j
			name = minetest.get_node(p).name;
			if name == "air" then life_table[i][j]=0 else life_table[i][j]=1 end
			if life_table[i][j]==1 then minetest.set_node(p,{name="stairs:slab_stone"}) end
			
		end
	end
end

minetest.register_node("games:life", {
	description = "game of life, game field is 1 above ",
	inventory_image = "default_tree.png",
	wield_image = "default_tree.png",
	wield_scale = {x=0.8,y=2.5,z=1.3},
	tiles = {"default_tree.png"},
	stack_max = 1,
	groups = {oddly_breakable_by_hand=3},
	
	on_punch = function(pos, node, puncher, pointed_thing)
		
		local name = puncher:get_player_name();if name == nil then return end
		local privs = minetest.get_player_privs(name);
		if not privs.ban then return end
		
		local meta = minetest.get_meta(pos)
		local infotext = meta:get_string("infotext");
		if infotext=="RUN" then infotext ="STOP" else infotext="RUN" end
		meta:set_string("infotext", infotext) 
		init_game(pos)
	end
	}
)


 -- minetest.register_craft({
	-- output = "games:life",
	-- recipe = {
		-- {"default:stone","","default:stone"},
		-- {"","default:stone",""},
		-- {"default:stone","","default:stone"},
	-- }
-- })