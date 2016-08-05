
-- This variable will be exported to other mods when they "depend" on this mod
pacmine = {}

dofile(minetest.get_modpath("pacmine").."/fruit.lua")
dofile(minetest.get_modpath("pacmine").."/ghost.lua")
dofile(minetest.get_modpath("pacmine").."/blocks.lua")
dofile(minetest.get_modpath("pacmine").."/portals.lua")
dofile(minetest.get_modpath("pacmine").."/gamestate.lua")
dofile(minetest.get_modpath("pacmine").."/hud.lua")
--dofile(minetest.get_modpath("pacmine").."/aliases.lua")



--Yellow Pellets
minetest.register_node("pacmine:pellet_1", {
	description = "Pellet 1",
	tiles = {"wool_yellow.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	light_source = 11,
	drop = "",
	groups = {immortal = 1, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.625, 0.25, -0.125, -0.375, 0.5, 0.125},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0},
		}
	},
	on_player_collision = function(pos, player, gameid)
		minetest.remove_node(pos)
		pacmine.on_player_got_pellet(player)
	end
})

--Power Pellets. Need to make these do something
minetest.register_node("pacmine:pellet_2", {
	description = "Pellet 2",
	tiles = {{name="pacmine_powerpellet.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.8}},},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	light_source = 11,
	drop = {max_items = 1,items = {
		{items = {"pacmine:cherrys"},rarity = 4,},
		{items = {"pacmine:apple"},rarity = 4,},
		{items = {"pacmine:peach"},rarity = 4,},
		{items = {"pacmine:strawberry"},rarity = 4,},},
		},
	groups = {immortal = 1, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.625,  -0.125,  -0.25,   -0.375,  0.125,  0.25},
			{-0.75,   -0.125,  -0.125,  -0.25,   0.125,  0.125},
			{-0.625,  -0.25,   -0.125,  -0.375,  0.25,   0.125},
			{-0.6875, -0.1875, -0.1875, -0.3125, 0.1875, 0.1875},
			}
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0},
		}
	},
	on_player_collision = function(pos, player, gameid)
		minetest.remove_node(pos)
		pacmine.on_player_got_power_pellet(player)
	end
})

--The placer block for pacmine
minetest.register_node("pacmine:classic_board",{
	description = "Pacman",
	inventory_image = "pacmine_1.png",
	tiles = {
		"pacmine_wallc.png",
		"pacmine_1.png",
		"pacmine_1.png",
		"pacmine_1.png",
		"pacmine_1.png",
		"pacmine_1.png",
		},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 8,
	groups = {cracky = 1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		pacmine.game_start(pos, player, {
			schematic = minetest.get_modpath("pacmine").."/schems/pacmine.mts",
			scorename = "pacmine:classic_board",
		})
	end,
})
--The placer block for pacmine mini
minetest.register_node("pacmine:mini_board",{
	description = "Pacman Mini",
	inventory_image = "pacmine_1.png^pacmine_mini.png",
	tiles = {
		"pacmine_wallc.png",
		"pacmine_1.png",
		"pacmine_1.png",
		"pacmine_1.png",
		"pacmine_1.png",
		"pacmine_1.png^pacmine_mini.png",
		},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 8,
	groups = {cracky = 1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		pacmine.game_start(pos, player, {
			schematic =  minetest.get_modpath("pacmine").."/schems/pacmini.mts",
			player_start = {x=13,y=0.5,z=2},
			ghost_start = {x=13,y=0.5,z=10},
			ghost_amount = 2,
			speed = 1,
			pellet_total = 91,
			scorename = "pacmine:mini_board",
		})
	end,
})

minetest.register_alias("pacmine:block", "pacmine:mini_board")
minetest.register_alias("pacmine:block2", "pacmine:normal_board")

-- Register with the myhighscore mod
myhighscore.register_game("pacmine:classic_board", {
	description = "Pacmine",
	icon = "pacmine_1.png",
})

-- Register with the myhighscore mod
myhighscore.register_game("pacmine:mini_board", {
	description = "Pacmine Mini",
	icon = "pacmine_1.png^pacmine_mini.png",
})
