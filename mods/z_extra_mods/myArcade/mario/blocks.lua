minetest.register_node("mario:platform",{
	description = "Platform",
	tiles = {
			"mario_blue.png",
			},
	drawtype = "normal",
	paramtype = "light",
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
})
minetest.register_node("mario:grey",{
	description = "Grey",
	tiles = {
			"mario_grey.png",
			},
	drawtype = "normal",
	paramtype = "light",
	light_source = 14,
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
})
minetest.register_node("mario:border",{
	description = "Border",
	tiles = {
			"mario_border.png",
			},
	drawtype = "normal",
	paramtype = "light",
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
})
minetest.register_node("mario:brick",{
	description = "Brick",
	tiles = {
			"mario_brick.png",
			},
	drawtype = "normal",
	paramtype = "light",
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
})
minetest.register_node("mario:glass", {
	description = "Glass",
	tiles = {"mario_grey.png","mario_glass.png"},
	drawtype = "glasslike_framed",
	paramtype = "light",
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
})
minetest.register_node("mario:coin", {
	description = "Coin",
	tiles = {"mario_coin.png"},
	drawtype = "plantlike",
	paramtype = "light",
	walkable = false,
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
	on_destruct = function(pos)
		minetest.sound_play("mario-coin", {pos = pos,max_hear_distance = 40,gain = 10.0,})
	end,
	on_player_collision = function(pos, player, gameid)
		minetest.remove_node(pos)
		mario.on_player_got_coin(player)
	end
})

local nbox = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, -0.0625, 0.25},
			{-0.3125, -0.4375, -0.3125, 0.3125, 0.4375, 0.3125},
			{-0.375, -0.375, -0.375, 0.375, 0.375, 0.375},
			{-0.375, -0.1875, -0.4375, 0.375, 0.3125, 0.4375},
			{-0.4375, -0.1875, -0.5, 0.4375, 0.1875, 0.5},
			{-0.1875, 0.4375, -0.1875, 0.1875, 0.5, 0.1875},
			{-0.5, -0.1875, -0.4375, 0.5, 0.1875, 0.4375},
			{-0.4375, -0.1875, -0.375, 0.4375, 0.3125, 0.375},
		}
	}

minetest.register_node("mario:mushroom",{
	description = "Mushroom",
	tiles = {
			"mario_mushroom_top.png",
			"mario_mushroom_bottom.png",
			"mario_mushroom.png",
			"mario_mushroom.png",
			"mario_mushroom.png",
			"mario_mushroom.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	walkable = false,
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
	node_box = nbox,
	on_timer = function(pos, dtime)
		minetest.remove_node(pos)
	end,
	on_player_collision = function(pos, player, gameid)
		minetest.remove_node(pos)
		mario.on_player_got_mushroom(player, 15)
	end
})

minetest.register_node("mario:mushroom_green",{
	description = "Green Mushroom",
	tiles = {
			"mario_mushroom_top_g.png",
			"mario_mushroom_bottom.png",
			"mario_mushroom_g.png",
			"mario_mushroom_g.png",
			"mario_mushroom_g.png",
			"mario_mushroom_g.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	walkable = false,
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
	node_box = nbox,
	on_timer = function(pos, dtime)
		minetest.remove_node(pos)
	end,
	on_player_collision = function(pos, player, gameid)
		minetest.remove_node(pos)
		minetest.sound_play("mario-1-up", {pos = pos,max_hear_distance = 6,gain = 10.0,})
		local gamestate = mario.games[gameid]
		if gamestate then
			gamestate.lives = gamestate.lives + 1
		end
		mario.on_player_got_mushroom(player, 15)
	end
})
