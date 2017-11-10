
local ghosts_death_delay = 5


local turtles = {
	{"turtle1","Ferk"},
	{"turtle2","Don"},
	{"turtle3","Max"},
	{"turtle4","Nathan"},
	}
for i in ipairs(turtles) do
	local itm = turtles[i][1]
	local desc = turtles[i][2]

	minetest.register_entity("mario:"..itm, {
		hp_max = 1,
		physical = true,
		collide_with_objects = true,
		visual = "sprite",
		visual_size = {x = 1, y = 1},
		textures = {
			"mario_turtle.png",
			"mario_turtle.png",
			"mario_turtle.png",
			"mario_turtle.png",
			"mario_turtle.png",
			"mario_turtle.png",
		},

		collisionbox = {-0.25, -0.25, -0.25, 0.25, 0.25, 0.25},
		is_visible = true,
		automatic_rotate = true,
		automatic_face_movement_dir = -90, -- set yaw direction in degrees, false to disable
		makes_footstep_sound = false,
		direction = {x=1, y=0, z=0},
		acceleration = {x=0, y=-10, z=0},
		speed = 3,

		update_velocity = function(self)
			local velocity = vector.multiply(self.direction, self.speed)
			self.object:setvelocity(velocity)
		end,

		on_step = function(self, dtime)
			-- every 1 second
			self.timer = (self.timer or 0) + dtime
			if self.timer < 1 then return end
			self.timer = 0

			-- Do we have game state? if not just die
			local gamestate = mario.games[self.gameid]
			if not gamestate then
				minetest.log("action", "Removing turtle without game assigned")
				self.object:remove()
				return
			end

			-- Make sure we are in the right state by keeping track of the reset time
			-- if the reset time changed it's likely the game got resetted while the entity wasn't loaded
			if self.last_reset then
				if self.last_reset ~= gamestate.last_reset then
					minetest.log("action", "Removing turtle remaining after reset ")
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

			-- find distance to the player
			local dist = vector.distance(self.object:getpos(), player:getpos())
			if dist < 1 then
				mario.on_player_death(self.gameid, player)
			end

			local velocity = self.object:getvelocity()

			-- if our velocity is close to zero, we are in collision
			if math.abs(velocity.x) < 0.25 then
				-- Check if there's a portal or some other node
				local pos = self.object:getpos()
				pos.y = pos.y + 0.5
				local node = minetest.get_node(pos)
				if minetest.registered_nodes[node.name].on_turtle_collision then
					minetest.registered_nodes[node.name].on_turtle_collision(pos, self.object, self.gameid)
				else
					self.direction.x = -self.direction.x
				end
				if(self.direction.x == 0) then
					self.direction.x = 1
				end
			end
			self:update_velocity()
		end,
--[[
			-- If there's no player just stop
			if not player then
				self.set_velocity(self, 0)
				return
			end

			local s = self.object:getpos() -- ghost
			local p = player:getpos() -- player

			 -- find distance from ghost to player
			local distance = ((p.x-s.x)^2 + (p.y-s.y)^2 + (p.z-s.z)^2)^0.5
			if distance < 1.5 then
				-- player touches ghost!!


					-- Ghost catches the player!
					gamestate.lives = gamestate.lives - 1
					if gamestate.lives < 1 then
						minetest.chat_send_player(gamestate.player_name,"Game Over")
						mario.game_end(self.gameid)
						minetest.sound_play("mario_death", {pos = boardcenter,max_hear_distance = 20, object=player, loop=false})

					elseif gamestate.lives == 1 then
						minetest.chat_send_player(gamestate.player_name,"This is your last life")
						mario.game_reset(self.gameid, player)
					else
						minetest.chat_send_player(gamestate.player_name,"You have ".. gamestate.lives .." lives left")
						mario.game_reset(self.gameid, player)
					end
				--end
				mario.update_hud(self.gameid, player)



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
		--]]

		-- This function should return the saved state of the entity in a string
		get_staticdata = function(self)
			return (self.gameid or "") .. ";" .. (self.last_reset or "")
		end,

		-- This function should load the saved state of the entity from a string
		on_activate = function(self, staticdata)
			self:update_velocity()
			self.object:setacceleration(self.acceleration)
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
