--Andrey created mob for his world needs
--Maikerumine added badplayer and various extras for his world needs
--updated:  20211204

--preload files
--=====================================================
dofile(minetest.get_modpath("mobs").."/api.lua")
dofile(minetest.get_modpath("mobs").."/crafts.lua")
dofile(minetest.get_modpath("mobs").."/laser_gun.lua")
dofile(minetest.get_modpath("mobs").."/weapons.lua")
--dofile(minetest.get_modpath("mobs").."/mc2_burning.lua")
--dofile(minetest.get_modpath("mobs").."/bones.lua")

--various mobs
--=====================================================
--dofile(minetest.get_modpath("mobs").."/badplayer.lua")
--dofile(minetest.get_modpath("mobs").."/badplayer_nospawn.lua")
dofile(minetest.get_modpath("mobs").."/badplayer_lightspawn.lua")
--dofile(minetest.get_modpath("mobs").."/badplayer_christmas.lua")
dofile(minetest.get_modpath("mobs").."/beedomonster.lua")
dofile(minetest.get_modpath("mobs").."/benmonster.lua")
--dofile(minetest.get_modpath("mobs").."/creeper.lua")
dofile(minetest.get_modpath("mobs").."/destructor.lua")
dofile(minetest.get_modpath("mobs").."/drcube.lua")
dofile(minetest.get_modpath("mobs").."/griefer_ghost.lua")
dofile(minetest.get_modpath("mobs").."/maymonster.lua")
dofile(minetest.get_modpath("mobs").."/mount.lua")
dofile(minetest.get_modpath("mobs").."/mob_just_test_griefer.lua")
dofile(minetest.get_modpath("mobs").."/nyancat.lua")
dofile(minetest.get_modpath("mobs").."/nyancat_warmachine.lua")
dofile(minetest.get_modpath("mobs").."/princess.lua")
dofile(minetest.get_modpath("mobs").."/rat.lua")
dofile(minetest.get_modpath("mobs").."/spaceplayer.lua")
dofile(minetest.get_modpath("mobs").."/stonemonster.lua")
dofile(minetest.get_modpath("mobs").."/stonemonster_color.lua")
dofile(minetest.get_modpath("mobs").."/dungeonmaster.lua")
dofile(minetest.get_modpath("mobs").."/dustdevil.lua")
dofile(minetest.get_modpath("mobs").."/oerkki.lua")
dofile(minetest.get_modpath("mobs").."/omsk.lua")
dofile(minetest.get_modpath("mobs").."/sirenhead.lua")

--important
--=====================================================
--add following to mobs api at bottom
--this code is for npc basic gifting and commands
--[[
			--Brandon Reese code to face pos
			function mobs:face_pos(self,pos)
				local s = self.object:getpos()
				local vec = {x=pos.x-s.x, y=pos.y-s.y, z=pos.z-s.z}
				local yaw = math.atan(vec.z/vec.x)+math.pi/2
				if self.drawtype == "side" then
					yaw = yaw+(math.pi/2)
				end
				if pos.x > s.x then
					yaw = yaw+math.pi
				end
				self.object:setyaw(yaw)
				return yaw
			end

			--Reese chat
			local_chat = function(pos,text,radius)
				if radius == nil then
					radius = 25
				end
				if pos ~= nil then
					local oir = minetest.get_objects_inside_radius(pos, radius)
					for _,p in pairs(oir) do
						if p:is_player() then
							minetest.chat_send_player(p:get_player_name(),text)
						end
					end
				end
			end

			--maikeruminefollow
			function mobs:team_player(self,pos)
				if tamed == true or
					self.tamed == true then
					self.order = "follow"
				end
			end
]]

--if minetest.setting_get("log_mods") then
	minetest.log("action", "Andrey / Maikerumine mobs loaded")
	minetest.log("action", "ES: [all dem mobs!] loaded.")
--end
