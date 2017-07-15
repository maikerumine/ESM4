    --Version 0.2
    --by emperor_genshin
    --modified for ESM game by: maikerumine
    --https://forum.minetest.net/viewtopic.php?f=9&t=13775&hilit=[mod]skybox


    pos = {x=0, y=0, z=0}

    local space = 900 --value for space, change the value to however you like.
    local cave = -40 --value for cave, change the value to however you like.

    --The skybox for space, feel free to change it to however you like.
    local spaceskybox = {
    "sky_pos_y.png",
    "sky_neg_y.png",
    "sky_pos_z.png",
    "sky_neg_z.png",
    "sky_neg_x.png",
    "sky_pos_x.png",
    }
    local caveskybox = {
    "black.png",
    "black.png",
    "black.png",
    "black.png",
    "black.png",
    "black.png",
    }

local time = 0
--minetest.after(1, function()
minetest.register_globalstep(function(dtime)
		time = time + dtime
		if time > 0 then for _, player in ipairs(minetest.get_connected_players()) do
		time = 0

		local name = player:get_player_name()
		local pos = player:getpos()
	
	       --If the player has reached Space
		if minetest.get_player_by_name(name) and pos.y >= space then
			player:set_physics_override(1, 0.6, 0.2,false,false) -- speed, jump, gravity
			player:set_sky({}, "skybox", spaceskybox) -- Sets skybox
--===================================
--===================================
--===================================

--===================================
--===================================
--===================================
		       --If the player is on Earth
			elseif minetest.get_player_by_name(name) and pos.y < space then
				player:set_physics_override(1, 1, 1,true,true) -- speed, jump, gravity [default]
				--player:set_sky({}, "regular", {}) -- Sets skybox, in this case it sets the skybox to it's default setting if and only if the player's Y value is less than the value of space.
				--player:set_sky(color, "plain", nil)  --problem updating color
				player:set_sky(color, "regular", nil)  --seems to work but weather color is stuck
				skycolor.update_sky_color()
				

				
				
			       --If the player has reached Cave
				if minetest.get_player_by_name(name) and pos.y <=cave then
					player:set_physics_override(1, 1, 1.2,true,true) -- speed, jump, gravity
					player:set_sky({}, "cavebox", caveskybox) -- Sets skybox
					end
				end
			end
		end
	end)
--end)


--[[
					-- Update sky color. If players not specified update sky for all players.
	update_sky_color = function(players)
		local color = skycolor.current_sky_layer_color()
		if (color == nil) then
			skycolor.active = false
			skycolor.set_default_sky()
			return
		end

		players = skycolor.utils.get_players(players)
		for _, player in ipairs(players) do
			player:set_sky(color, "plain", nil)
		end
	end,
]]
minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
	if name then
		player:set_sky({}, "regular", {})
		end
end)
