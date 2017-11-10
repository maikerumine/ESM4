

local hud_table = {}

function mario.update_hud(id, player)
	local game = mario.games[id]
	player = player or minetest.get_player_by_name(game.player_name)
	if not player then
		return
	elseif not game then
		mario.remove_hud(player)
		return
	end
	local coins_left = game.coin_total - game.coin_count
	local hudtext = "Score      " .. game.score
		.. "\nLevel       " .. game.level
		.. "\nLives       " .. game.lives
		.. "\nCoins       " .. coins_left

	local hud = hud_table[game.player_name]
	if not hud then
		hud = player:hud_add({
			hud_elem_type = "text",
			position = {x = 0, y = 1},
			offset = {x=100, y = -100},
			scale = {x = 100, y = 100},
			number = 0xff2227, --color
			text = hudtext
		})
		hud_table[game.player_name] = hud
	else
		player:hud_change(hud, "text", hudtext)
	end
end


function mario.remove_hud(player, playername)
	local name = playername or player:get_player_name()
	local hud = hud_table[name]
	if hud then
		player:hud_remove(hud)
		hud_table[name] = nil
	end
end
