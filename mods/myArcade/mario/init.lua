mario = {}

dofile(minetest.get_modpath("mario").."/pipes.lua")
dofile(minetest.get_modpath("mario").."/blocks.lua")
dofile(minetest.get_modpath("mario").."/portal.lua")
dofile(minetest.get_modpath("mario").."/turtle.lua")
dofile(minetest.get_modpath("mario").."/gamestate.lua")
dofile(minetest.get_modpath("mario").."/hud.lua")


minetest.register_node("mario:placer",{
	description = "Mario",
	tiles = {
			"mario_border.png",
			"mario_border.png",
			"mario_border.png",
			"mario_border.png",
			"mario_border.png",
			"mario_border.png^mario_m.png",
			},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		mario.game_start(pos, player, {
			schematic = minetest.get_modpath("mario").."/schems/mario.mts",
			scorename = "mario:classic_board",
		})
	end,
})
minetest.register_node("mario:placer2",{
	description = "Mario",
	tiles = {
			"mario_border.png",
			"mario_border.png",
			"mario_border.png",
			"mario_border.png",
			"mario_border.png",
			"mario_border.png^mario_m.png",
			},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1,not_in_creative_inventory=1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		local schem = minetest.get_modpath("mario").."/schems/mario.mts"
		minetest.place_schematic({x=pos.x-1,y=pos.y-1,z=pos.z-2},schem,0, "air", true)
	end,
})

minetest.register_node("mario:exit",{
	description = "Exit",
	tiles = {
			"mario_grey.png",
			"mario_grey.png",
			"mario_grey.png",
			"mario_grey.png",
			"mario_grey.png",
			"mario_grey.png^mario_exit.png",
			},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1,not_in_creative_inventory=1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		local name = player:get_player_name()
		local game = mario.get_game_by_player(name)
		if not game then
			minetest.chat_send_player(name, "You aren't running a game at the moment")
			pos.z = pos.z - 3
			player:moveto(pos)
		else
			mario.game_end(game.id)
		end
	end,
})

-- Register with the myhighscore mod
myhighscore.register_game("mario:classic_board", {
	description = "Mario",
	icon = "mario_border.png^mario_m.png",
})
