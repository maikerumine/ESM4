-- Code by UjEdwin
--[[
License: CC-BY-SA
Name: Invisible
Created by: UjEdwin
Date: 2016-04-09
Version: 1

Hides players nametag when they are sneaking, or invisible if you have the invisible privilege.

Give yourself the invisible stick, to toggle your invisible on/off

/giveme i
]]

minetest.register_alias("i", "es:tool")

invisible={time=0}
minetest.register_privilege("invisible", {
	description = "Be invisible",
	give_to_singleplayer= false,
})

invisible.toogle=function(user,sneak)
	local name=user:get_player_name()
	if minetest.check_player_privs(user:get_player_name(), {invisible=true}) then
		if not invisible[name] then
			user:set_nametag_attributes({color = {a = 0, r = 255, g = 255, b = 255}})
			invisible[name]={}
			invisible[name].tool=sneak
			invisible[name].textures=user:get_properties().textures
			invisible[name].collisionbox=user:get_properties().collisionbox
			invisible[name].visual_size=user:get_properties().visual_size
			user:set_properties({
				--visual = "mesh",
				visual = "node",
				textures={"invisible_hidden.png"},
				visual_size = {x=1, y=1},
				collisionbox = {0,0,0, 0,0,0},
			})
			minetest.chat_send_player(name, "invisible on")
		else
			user:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}})
			user:set_properties({
				--visual = "mesh",
				visual = "mesh",
				textures=invisible[name].textures,
				visual_size = invisible[name].visual_size,
				collisionbox=invisible[name].collisionbox


			})
			invisible[name]=nil
			minetest.chat_send_player(name, "invisible off")
		end
	else

		if not invisible[name] then
			invisible[name]={}
			user:set_nametag_attributes({color = {a = 0, r = 255, g = 255, b = 255}})
		else
			user:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}})
			invisible[name]=nil
		end
	end
end

minetest.register_tool("es:tool", {
	description = "invisible",
	inventory_image = "default_stick.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		if minetest.check_player_privs(user:get_player_name(), {invisible=true}) then
				invisible.toogle(user,true)
		else
			itemstack:replace(nil)
		end
		return itemstack
	end
})

minetest.register_globalstep(function(dtime)
	invisible.time=invisible.time+dtime
	if invisible.time<0.5 then return end
	invisible.time=0
	for _, player in pairs(minetest.get_connected_players()) do
		local name=player:get_player_name()
		local sneak=player:get_player_control().sneak
		if (sneak and not invisible[name]) or (sneak==false and invisible[name] and not invisible[name].tool) then
			invisible.toogle(player)
		end
	end
end)
