local cbox = {
		type = "fixed",
		fixed = {{-0.875,  0.125,  -0.0625,  -0.125,  0.875,  0.0625}}
	}
local sbox = {
		type = "fixed",
		fixed = {{0, 0, 0, 0, 0, 0}}
	}

local pelletitems = {
	{"cherrys", "Cherrys","100"},
	{"strawberry", "Strawberry","300"},
	{"orange", "Orange","500"},
	{"apple", "Apple","700"},
	}
for i in ipairs (pelletitems) do
	local itm = pelletitems[i][1]
	local desc = pelletitems[i][2]
	local points = pelletitems[i][3]

minetest.register_node("pacmine:"..itm,{
	description = desc,
	inventory_image = "pacmine_"..itm..".png",
	tiles = {"pacmine_"..itm..".png",},
	drawtype = "mesh",
	mesh = "pacmine_"..itm..".obj",
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	light_source = 14,
	groups = {immortal=1,not_in_creative_inventory = 1},
	--node_box = cbox,
	selection_box = sbox,
	collision_box = cbox,
	on_timer = function(pos, dtime)
		minetest.remove_node(pos)
	end,
	on_player_collision = function(pos, player, gameid)
		minetest.remove_node(pos)
		pacmine.on_player_got_fruit(player, points)
	end
})
end
