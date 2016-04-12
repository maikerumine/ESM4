minetest.register_node("mario:portal", {
	description = "Portal",
	drawtype = "glasslike",
	tiles = {"mario_glass.png"},
	paramtype = "light",
	sunlight_propagates = true,
	alpha = 150,
	paramtype2 = "facedir",
	walkable = false,
	is_ground_content = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
	on_turtle_collision = function(pos, obj, gameid)
		obj:setpos({x=pos.x,y=pos.y+12,z=pos.z})
	end
})
minetest.register_node("mario:portal_left", {
	description = "Portal Left",
	drawtype = "glasslike",
	tiles = {"mario_border.png"},
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	--walkable = false,
	is_ground_content = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
	on_player_collision = function(pos, player, gameid)
		player:setpos(vector.add(pos,{x=31, y=0, z=0}))
	end,
	on_turtle_collision = function(pos, obj, gameid)
		obj:setpos(vector.add(pos,{x=31, y=0, z=0}))
	end
})
minetest.register_node("mario:portal_right", {
	description = "Portal Right",
	drawtype = "glasslike",
	tiles = {"mario_border.png"},
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	--walkable = false,
	is_ground_content = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
	on_player_collision = function(pos, player, gameid)
		player:setpos(vector.add(pos,{x=-31, y=0, z=0}))
	end,
	on_turtle_collision = function(pos, obj, gameid)
		obj:setpos(vector.add(pos,{x=31, y=0, z=0}))
	end
})
