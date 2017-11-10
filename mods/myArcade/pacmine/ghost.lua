
local ghosts_death_delay = 5


local ghosts = {
	{"pinky","Pinky"},
	{"inky","Inky"},
	{"blinky","Blinky"},
	{"clyde","Clyde"},
	}
for i in ipairs(ghosts) do
	local itm = ghosts[i][1]
	local desc = ghosts[i][2]

	minetest.register_entity("pacmine:"..itm, {
		hp_max = 1,
		physical = true,
		collide_with_objects = true,
		visual = "cube",
		visual_size = {x = 0.6, y = 1},
		textures = {
			"pacmine_"..itm.."s.png",
			"pacmine_"..itm.."s.png",
			"pacmine_"..itm.."s.png",
			"pacmine_"..itm.."s.png",
			"pacmine_"..itm.."f.png",
			"pacmine_"..itm.."s.png",
		},
		velocity = {x=math.random(-1,1), y=0, z=math.random(-1,1)},
		collisionbox = {-0.25, -1.0, -0.25, 0.25, 0.48, 0.25},
		is_visible = true,
		automatic_rotate = true,
		automatic_face_movement_dir = -90, -- set yaw direction in degrees, false to disable
		makes_footstep_sound = false,

		set_velocity = function(self, v)
			if not v then v = 0 end
			local yaw = self.object:getyaw()
			self.object:setvelocity({x=math.sin(yaw) * -v, y=self.object:getvelocity().y, z=math.cos(yaw) * v})
		end,

		on_step = function(self, dtime)
			-- every 1 second
			self.timer = (self.timer or 0) + dtime
			if self.timer < 1 then return end
			self.timer = 0

			-- Do we have game state? if not just die
			local gamestate = pacmine.games[self.gameid]
			if not gamestate then
				minetest.log("action", "Removing pacman ghost without game assigned")
				self.object:remove()
				return
			end
			-- Make sure we are in the right state by keeping track of the reset time
			-- if the reset time changed it's likely the game got resetted while the entity wasn't loaded
			if self.last_reset then
				if self.last_reset ~= gamestate.last_reset then
					minetest.log("action", "Removing pacman ghost remaining after reset ")
					self.object:remove()
				end
			else
				self.last_reset = gamestate.last_reset
			end

			-- Make sure we have a targetted player
			if not self.target then
				self.target = minetest.get_player_by_name(gamestate.player_name)
			end
			local player = self.target

			-- If there's no player just stop
			if not player then
				self.set_velocity(self, 0)
				return
			end

			local s = self.object:getpos() -- ghost
			local p = player:getpos() -- player

			 -- find distance from ghost to player
			local distance = ((p.x-s.x)^2 + (p.y-s.y)^2 + (p.z-s.z)^2)^0.5
			if distance < 1.6 then
				-- player touches ghost!!

				if gamestate.power_pellet then
					-- Player eats ghost! move it to spawn
					local ghost_spawn = gamestate.ghost_start
					self.object:setpos(ghost_spawn)
					-- set the timer negative so it'll have to wait extra time
					self.timer = -ghosts_death_delay
					-- play sound and reward player
					minetest.sound_play("pacmine_eatghost", {pos = boardcenter,max_hear_distance = 6, object=player, loop=false})
					gamestate.score = gamestate.score + 200
					pacmine.update_hud(gamestate.id, player)
					minetest.chat_send_player(gamestate.player_name,"You ate a ghost!")
				else
					-- Ghost catches the player!
					gamestate.lives = gamestate.lives - 1
					if gamestate.lives < 1 then
						minetest.chat_send_player(gamestate.player_name,"Game Over")
						pacmine.game_end(self.gameid)
						minetest.sound_play("pacmine_death", {pos = boardcenter,max_hear_distance = 20, object=player, loop=false})

					elseif gamestate.lives == 1 then
						minetest.chat_send_player(gamestate.player_name,"This is your last life")
						pacmine.game_reset(self.gameid, player)
					else
						minetest.chat_send_player(gamestate.player_name,"You have ".. gamestate.lives .." lives left")
						pacmine.game_reset(self.gameid, player)
					end
				end
				pacmine.update_hud(self.gameid, player)

			else
				local vec = {x=p.x-s.x, y=p.y-s.y, z=p.z-s.z}
				local yaw = (math.atan(vec.z/vec.x)+math.pi/2)
				if p.x > s.x then
					yaw = yaw + math.pi
				end
				-- face player and move backwards/forwards
				self.object:setyaw(yaw)
				if gamestate.power_pellet then
					self.set_velocity(self, -gamestate.speed) --negative velocity
				else
					self.set_velocity(self, gamestate.speed)
				end
			end
		end,

		-- This function should return the saved state of the entity in a string
		get_staticdata = function(self)
			return (self.gameid or "") .. ";" .. (self.last_reset or "")
		end,

		-- This function should load the saved state of the entity from a string
		on_activate = function(self, staticdata)
			self.object:set_armor_groups({immortal=1})
			if staticdata and staticdata ~= "" then
				local data = string.split(staticdata, ";")
				if #data == 2 then
					self.gameid = data[1]
					self.last_reset = tonumber(data[2])
				end
			end
		end
	})
end
