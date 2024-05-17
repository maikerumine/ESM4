    --Version 0.2
    --by emperor_genshin
    --modified for ESM game by: maikerumine
    --https://forum.minetest.net/viewtopic.php?f=9&t=13775&hilit=[mod]skybox


	-- speed, jump, gravity, sneak, sneak_glitch, new_move

    pos = {x=0, y=0, z=0}

    local space = 5000 --value for space, change the value to however you like.
    local cave = -40 --value for cave, change the value to however you like.
    local cave_deep = -18500 --value for cave, change the value to however you like.

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
	local ThickCloudsWater = {
	"ThickCloudsWaterUp.jpg",
	"ThickCloudsWaterDown.jpg",
	"ThickCloudsWaterFront.jpg",
	"ThickCloudsWaterBack.jpg",
	"ThickCloudsWaterLeft.jpg",
	"ThickCloudsWaterRight.jpg",
    }

	local time = 0
	
	local space_sky = function(player)
	player:set_sky({type="regular", clouds=false, sky_color={
		day_sky = "#000000",
		day_horizon = "#000000",
		dawn_sky = "#000000",
		dawn_horizon = "#000000",
		night_sky = "#000000",
		night_horizon = "#000000",
		fog_tint_type = "custom",
		fog_sun_tint = "#000000",
		fog_moon_tint = "#000000",
	}})
	end

	local earth_sky = function(player)
	player:set_sky({type="regular", clouds=false, sky_color={
		day_sky = "#F0E3B0",
		day_horizon = "#F0E3B0",
		dawn_sky = "#807340",
		dawn_horizon = "#807340",
		night_sky = "#4C3B18",
		night_horizon = "#4C3B18",
		fog_tint_type = "custom",
		fog_sun_tint = "#201C10",
		fog_moon_tint = "#201C10",
	}})
	end	
	
	local earth_blue_sky = function(player)
	player:set_sky({type="regular", clouds=true, sky_color={
		day_sky = "#89c5f7",
		day_horizon = "#568aa8",
		dawn_sky = "#0f1164",
		dawn_horizon = "#fa48fa",
		night_sky = "#1b1c39",
		night_horizon = "#0c0f4d",
		fog_tint_type = "custom",
		fog_sun_tint = "#eec869",
		fog_moon_tint = "#babdf4",
	}})
	end	
minetest.register_globalstep(function(dtime)
		time = time + dtime
		if time > 0 then for _, player in ipairs(minetest.get_connected_players()) do
		time = 0

		local name = player:get_player_name()
		local pos = player:get_pos()
	
	    --If the player has reached Space
		if minetest.get_player_by_name(name) and pos.y >= space then
			player:set_stars({visible=true})
			player:set_moon({visible=false})
			player:set_sun({visible=false, sunrise_visible=false, scale=0.5})
			space_sky(player)
			player:set_physics_override({gravity = 0.2,}) 
--			player:set_sky({
--				base_color = "blue",
--				type = "skybox",
--				textures = spaceskybox,
--				clouds = false
--			})
		    --If the player is on Earth
			elseif minetest.get_player_by_name(name) and pos.y < space then
				player:set_stars({visible=true})
				player:set_moon({visible=false})
				player:set_sun({visible=true, sunrise_visible=true, scale=0.5})
				--earth_sky(player)
				earth_blue_sky(player)
				--player:set_clouds({color="#FFFF72B8", density=0.7, height=200, thickness=24})
				player:set_clouds({color="#9b978d", density=0.7, height=200, thickness=24})
				--player:set_clouds({color="#9b978dB8", density=0.7, height=200, thickness=24})
				player:set_physics_override({gravity = 1,})
--				player:set_sky({
--					base_color = "white",
--					type = "regular",
					--type = "skybox",
					--textures = ThickCloudsWater,
--					{},
					--clouds = true
					
--				})
			    --If the player has reached Cave
				if minetest.get_player_by_name(name) and pos.y <=cave then
				player:set_stars({visible=false})
				player:set_moon({visible=false})
				player:set_sun({visible=false, sunrise_visible=false, scale=0.5})
				space_sky(player)
				clouds = false
				player:set_physics_override({gravity = 1.2,})
--				player:set_sky({
--					base_color = "black",
--					type = "skybox",
--					textures = caveskybox,
--					clouds = false
--				})
				end
				
				--====================
				if minetest.get_player_by_name(name) and pos.y <=cave_deep then
				player:set_stars({visible=true})
				player:set_moon({visible=true})
				player:set_sun({visible=true, sunrise_visible=true, scale=0.5})
				earth_sky(player)
				clouds = true
				player:set_physics_override({gravity = 1.5,})

				end
				--====================
				
			end
		end
	end
end)

minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
		if name then
			player:set_sky({
			base_color = "white",
			type = "regular",
			{},
			clouds = true
		})
	end
end)
