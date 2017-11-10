



local button_form = "size[6,8;]"..
				"background[0,0;6,8;myhighscore_form_bg.png]"..
				"label[2,0.5;HIGH SCORES]"..
				"button[1,1;4,1;game;label]"..
				"button_exit[2,7;2,1;exit;Exit]"

--place holders
local game_name = "the game"
local game_player_name = "the player"
local game_player_score = "648138"

local function show_formspec_for_game(playername, gamename)
	local def = myhighscore.registered_games[gamename]
	local scores = myhighscore.scores[gamename] or {}
	-- Obtain a comma separated list of scores to display
	local scorelist = ""
	for _,score in pairs(scores) do
		scorelist = scorelist .."       ".. minetest.formspec_escape(score.player) ..
			"\t\t\t\t " .."           ".. score.score ..","
	end

	minetest.show_formspec(playername, "myhighscores:score_" .. gamename, "size[6,8;]"..
		"background[0,0;6,8;myhighscore_form_bg.png]"..
		"label[1,0.5;HIGH SCORES FOR "..def.description.."]"..
		"label[1.25,1.5;PLAYER]"..
		"label[3.5,1.5;SCORE]"..
		"textlist[0.5,2;5,5;;"..scorelist.."]"..
		"button_exit[3,7;2,1;exit;Exit]")
end


minetest.register_node("myhighscore:score_board", {
	description = "Score Board",
	tiles = {
			"myhighscore_top.png",
			"myhighscore_back.png",
			"myhighscore_side.png^[transformFX",
			"myhighscore_side.png",
			"myhighscore_back.png",
			"myhighscore_front.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.5, 0.375, -0.1875, 0.5},
			{-0.375, -0.5, 0.1875, 0.375, 0.5, 0.5},
			{-0.1875, -0.5, -0.3125, -0.125, 0, -0.25},
			{-0.375, -0.5, 0, -0.3125, 0.5, 0.5},
			{0.3125, -0.5, 0, 0.375, 0.5, 0.5},
			{-0.375, 0.4375, 0, 0.375, 0.5, 0.5},
		}
	},
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("infotext", "High Scores")

		local textlist = ""
		for game,def in pairs(myhighscore.registered_games) do
			textlist = textlist .." ".. minetest.formspec_escape(def.description) .. ","
		end

		meta:set_string("formspec", "size[6,8;]"..
						"background[0,0;6,8;myhighscore_form_bg.png]"..
						"label[2,0.5;HIGH SCORES]"..
						"label[1.3,1;Choose a game for its score]"..
						"textlist[0.5,1.6;5,5;gameid;"..textlist.."]"..
						"button_exit[2,7;2,1;exit;Exit]")

	end,
	on_receive_fields = function(pos, formname, fields, sender)
		local meta = minetest.env:get_meta(pos)
		local playername = sender:get_player_name()
		if fields.gameid then
			local event = minetest.explode_textlist_event(fields.gameid)
			-- find which game it is
			local i, game = 0, nil
			repeat
				game = next(myhighscore.registered_games, game)
				i = i + 1
			until not game or i == event.index
			if game then
				show_formspec_for_game(playername, game)
			end
		end
	end,
})
