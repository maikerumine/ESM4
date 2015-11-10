
dofile(minetest.get_modpath("carts").."/functions.lua")

carts={}
carts.registered_driver={}

--
-- Cart entity
--

minetest.register_globalstep(function(dtime)
	--jump out if needed and keep accurate list
	for i, EachDriver in ipairs(carts.registered_driver) do
		if EachDriver.state == 3 then
			carts.registered_driver[i].driver:set_detach()
			if carts.registered_driver[i].driver and carts.registered_driver[i].driver:is_player() then
				local name = carts.registered_driver[i].driver:get_player_name()
				default.player_attached[name] = false
			end
			table.remove(carts.registered_driver, i)
			if EachDriver.cart then
				EachDriver.cart.driver=nil
			end
			-- minetest.log("action", "Cart - cleared")
		elseif not EachDriver.driver or not EachDriver.driver:is_player() then	--no player
			table.remove(carts.registered_driver, i)
			if EachDriver.cart then
				EachDriver.cart.driver=nil
			end
			minetest.log("action", "Cart - cleared. no player")
		elseif not EachDriver.cart or EachDriver.cart==nil then	--no cart
			carts.registered_driver[i].driver:set_detach()
			if carts.registered_driver[i].driver and carts.registered_driver[i].driver:is_player() then
				local name = carts.registered_driver[i].driver:get_player_name()
				default.player_attached[name] = false
			end
			table.remove(carts.registered_driver, i)
			minetest.log("action", "Cart - cleared. no cart")
		end
	end

	for i, EachDriver in ipairs(carts.registered_driver) do
		if EachDriver.state == 1 then
			if EachDriver.cart and EachDriver.driver and EachDriver.driver:is_player() then
				carts.registered_driver[i].state=2	--drive
				EachDriver.cart.driver=carts.registered_driver[i].driver
				carts.registered_driver[i].driver:set_attach(carts.registered_driver[i].cart.object, "", {x=0,y=5,z=0}, {x=0,y=0,z=0})
				if carts.registered_driver[i].driver and carts.registered_driver[i].driver:is_player() then
					local name = carts.registered_driver[i].driver:get_player_name()
					default.player_attached[name] = true
				end
				-- minetest.log("action", "Cart - occupied")
			else
				carts.registered_driver[i].state=3	--something wrong
				minetest.log("action", "Cart - something wrong")
			end
		end
	end

end)

local cart = {
	physical = false,
	collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
	visual = "mesh",
	mesh = "cart.x",
	visual_size = {x=1, y=1},
	textures = {"cart.png"},

	driver = nil,

	old_pos = nil,	--rounded
	old_direction = {x=0, y=0, z=0},

	current_pos = nil,	--rounded
	current_direction = {x=0, y=0, z=0},

	next_pos = nil,	--rounded

	current_speed = 0,	--positive
	MAX_SPEED = 8, -- Limit of the velocity
}

function cart:on_rightclick(clicker)
	if not clicker or not clicker:is_player() then
		return
	end

	for i, EachDriver in ipairs(carts.registered_driver) do
		if EachDriver.state == 2 and EachDriver.driver and EachDriver.driver == clicker then
			carts.registered_driver[i].state=3	--jump out from old carts
			if EachDriver.cart == self then
				return	--just jump out from current cart
			end
		elseif EachDriver.state == 1 and EachDriver.driver and EachDriver.driver == clicker  then
			return	--this driver already registered
		elseif EachDriver.cart == self then
			return	--cart busy by other player
		end
	end

	table.insert(carts.registered_driver, {cart=self, driver=clicker, state=1} )
end

function cart:on_activate(staticdata, dtime_s)

	self.object:set_armor_groups({immortal=1})
	self.old_pos = cart_func.v3:round( self.object:getpos() )
	self.current_pos = cart_func.v3:round( self.object:getpos() )
	self.next_pos = cart_func.v3:round( self.object:getpos() )
	self.driver=nil

	if not cart_func:is_rail( self.current_pos ) then
		minetest.log("action", "Removing old chart at "..self.current_pos.x..","..self.current_pos.y..","..self.current_pos.z)
		if self.driver ~= nil then
			self.driver:set_detach()
		end
		self.object:remove()
		return
	end

	-- if staticdata then
		-- local tmp = minetest.deserialize(staticdata)
		-- if tmp and tmp.current_speed then
			-- self.current_speed = current_speed
		-- end
		-- if tmp and tmp.current_direction then
			-- self.current_direction = current_direction
			-- self.old_direction = current_direction
		-- end
	-- end

end

function cart:get_staticdata()
	return minetest.serialize({
		current_speed = self.current_speed,
		current_direction = self.current_direction,
	})
end

-- Remove the cart if holding a tool or accelerate it
function cart:on_punch(puncher, time_from_last_punch, tool_capabilities, direction)
	if not puncher or not puncher:is_player() then
		return
	end

	if puncher:get_player_control().sneak then
		-- first partially drop driver from the cart, only then remove cart
		if self.driver ~= nil then
			self.driver:set_detach()
		end
		self.object:remove()
		local inv = puncher:get_inventory()
		if minetest.setting_getbool("creative_mode") then
			if not inv:contains_item("main", "carts:cart") then
				inv:add_item("main", "carts:cart")
			end
		else
			inv:add_item("main", "carts:cart")
		end
		return
	end

	if puncher == self.driver then
		return
	end

	local d = cart_func:velocity_to_dir(direction)
	if time_from_last_punch > tool_capabilities.full_punch_interval then
		time_from_last_punch = tool_capabilities.full_punch_interval
	end
	local f = 4*(time_from_last_punch/tool_capabilities.full_punch_interval)

	--change speed or stop cart
	if cart_func.v3:empty( self.current_direction ) or self.current_speed == 0 then
		self.current_direction.x = d.x
		self.current_direction.z = d.z
		self:recalculate_way()
		self.current_speed = f
	elseif d.x==self.current_direction.x and d.z==self.current_direction.z then
		self.current_speed=self.current_speed + f
	else
		self.current_speed = 0
	end

	-- Speed limits
	if self.current_speed < 0 then
		self.current_speed = 0
	end
	if self.current_speed > self.MAX_SPEED then
		self.current_speed = self.MAX_SPEED
	end

	self:get_moving()

end

--step done. all checked. now just calculate next rail and direction
function cart:recalculate_way()
	if not cart_func.v3:empty(self.current_direction) and self.current_speed>0 then
		local p=cart_func.v3:copy(self.current_pos)
		-- Check player control.
		--this code is long, but optimal enough. If you think you can make it better - do it.
		if self.driver and self.driver:is_player() then
			if self.driver:get_player_control().right then
				if self.current_direction.x == 1 then
					if cart_func:is_rail({x=p.x, y=p.y, z=p.z-1}) then
						self.next_pos={x=p.x, y=p.y, z=p.z-1}
						self.current_direction={x=0, y=0, z=-1}
						return
					end
					if cart_func:is_rail({x=p.x, y=p.y-1, z=p.z-1}) then
						self.next_pos={x=p.x, y=p.y-1, z=p.z-1}
						self.current_direction={x=0, y=-1, z=-1}
						return
					end
					if cart_func:is_rail({x=p.x, y=p.y+1, z=p.z-1}) then
						self.next_pos={x=p.x, y=p.y+1, z=p.z-1}
						self.current_direction={x=0, y=1, z=-1}
						return
					end
				end
				if self.current_direction.x == -1 then
					if cart_func:is_rail({x=p.x, y=p.y, z=p.z+1}) then
						self.next_pos={x=p.x, y=p.y, z=p.z+1}
						self.current_direction={x=0, y=0, z=1}
						return
					end
					if cart_func:is_rail({x=p.x, y=p.y+1, z=p.z+1}) then
						self.next_pos={x=p.x, y=p.y+1, z=p.z+1}
						self.current_direction={x=0, y=1, z=1}
						return
					end
					if cart_func:is_rail({x=p.x, y=p.y-1, z=p.z+1}) then
						self.next_pos={x=p.x, y=p.y-1, z=p.z+1}
						self.current_direction={x=0, y=-1, z=1}
						return
					end
				end
				if self.current_direction.z == 1 then
					if cart_func:is_rail({x=p.x+1, y=p.y, z=p.z}) then
						self.next_pos={x=p.x+1, y=p.y, z=p.z}
						self.current_direction={x=1, y=0, z=0}
						return
					end
					if cart_func:is_rail({x=p.x+1, y=p.y+1, z=p.z}) then
						self.next_pos={x=p.x+1, y=p.y+1, z=p.z}
						self.current_direction={x=1, y=1, z=0}
						return
					end
					if cart_func:is_rail({x=p.x+1, y=p.y-1, z=p.z}) then
						self.next_pos={x=p.x+1, y=p.y-1, z=p.z}
						self.current_direction={x=1, y=-1, z=0}
						return
					end
				end
				if self.current_direction.z == -1 then
					if cart_func:is_rail({x=p.x-1, y=p.y, z=p.z}) then
						self.next_pos={x=p.x-1, y=p.y, z=p.z}
						self.current_direction={x=-1, y=0, z=0}
						return
					end
					if cart_func:is_rail({x=p.x-1, y=p.y+1, z=p.z}) then
						self.next_pos={x=p.x-1, y=p.y+1, z=p.z}
						self.current_direction={x=-1, y=1, z=0}
						return
					end
					if cart_func:is_rail({x=p.x-1, y=p.y-1, z=p.z}) then
						self.next_pos={x=p.x-1, y=p.y-1, z=p.z}
						self.current_direction={x=-1, y=-1, z=0}
						return
					end
				end
			end
			if self.driver:get_player_control().left then
				if self.current_direction.x == -1 then
					if cart_func:is_rail({x=p.x, y=p.y, z=p.z-1}) then
						self.next_pos={x=p.x, y=p.y, z=p.z-1}
						self.current_direction={x=0, y=0, z=-1}
						return
					end
					if cart_func:is_rail({x=p.x, y=p.y-1, z=p.z-1}) then
						self.next_pos={x=p.x, y=p.y-1, z=p.z-1}
						self.current_direction={x=0, y=-1, z=-1}
						return
					end
					if cart_func:is_rail({x=p.x, y=p.y+1, z=p.z-1}) then
						self.next_pos={x=p.x, y=p.y+1, z=p.z-1}
						self.current_direction={x=0, y=1, z=-1}
						return
					end
				end
				if self.current_direction.x == 1 then
					if cart_func:is_rail({x=p.x, y=p.y, z=p.z+1}) then
						self.next_pos={x=p.x, y=p.y, z=p.z+1}
						self.current_direction={x=0, y=0, z=1}
						return
					end
					if cart_func:is_rail({x=p.x, y=p.y+1, z=p.z+1}) then
						self.next_pos={x=p.x, y=p.y+1, z=p.z+1}
						self.current_direction={x=0, y=1, z=1}
						return
					end
					if cart_func:is_rail({x=p.x, y=p.y-1, z=p.z+1}) then
						self.next_pos={x=p.x, y=p.y-1, z=p.z+1}
						self.current_direction={x=0, y=-1, z=1}
						return
					end
				end
				if self.current_direction.z == -1 then
					if cart_func:is_rail({x=p.x+1, y=p.y, z=p.z}) then
						self.next_pos={x=p.x+1, y=p.y, z=p.z}
						self.current_direction={x=1, y=0, z=0}
						return
					end
					if cart_func:is_rail({x=p.x+1, y=p.y+1, z=p.z}) then
						self.next_pos={x=p.x+1, y=p.y+1, z=p.z}
						self.current_direction={x=1, y=1, z=0}
						return
					end
					if cart_func:is_rail({x=p.x+1, y=p.y-1, z=p.z}) then
						self.next_pos={x=p.x+1, y=p.y-1, z=p.z}
						self.current_direction={x=1, y=-1, z=0}
						return
					end
				end
				if self.current_direction.z == 1 then
					if cart_func:is_rail({x=p.x-1, y=p.y, z=p.z}) then
						self.next_pos={x=p.x-1, y=p.y, z=p.z}
						self.current_direction={x=-1, y=0, z=0}
						return
					end
					if cart_func:is_rail({x=p.x-1, y=p.y+1, z=p.z}) then
						self.next_pos={x=p.x-1, y=p.y+1, z=p.z}
						self.current_direction={x=-1, y=1, z=0}
						return
					end
					if cart_func:is_rail({x=p.x-1, y=p.y-1, z=p.z}) then
						self.next_pos={x=p.x-1, y=p.y-1, z=p.z}
						self.current_direction={x=-1, y=-1, z=0}
						return
					end
				end
			end
		end

		p = cart_func.v3:add(cart_func.v3:copy(self.current_pos), self.current_direction)
		p.y=self.current_pos.y --y is handled differently
		-- Check front
		if cart_func:is_rail(p) then
			self.next_pos=p
			self.current_direction={x=self.current_direction.x, y=0, z=self.current_direction.z}
			return
		end
		-- Check downhill
		if cart_func:is_rail({x=p.x, y=p.y-1, z=p.z}) then
			self.next_pos={x=p.x, y=p.y-1, z=p.z}
			self.current_direction={x=self.current_direction.x, y=-1, z=self.current_direction.z}
			return
		end
		-- Check uphill
		if cart_func:is_rail({x=p.x, y=p.y+1, z=p.z}) then
			self.next_pos={x=p.x, y=p.y+1, z=p.z}
			self.current_direction={x=self.current_direction.x, y=1, z=self.current_direction.z}
			return
		end
		-- Check right and left. positive direction has priority. not sure about uphill/downhill priority.
		p=cart_func.v3:copy(self.current_pos)
		if math.abs(self.current_direction.x)==1 then
			if cart_func:is_rail({x=p.x, y=p.y, z=p.z+1}) then
				self.next_pos={x=p.x, y=p.y, z=p.z+1}
				self.current_direction={x=0, y=0, z=1}
				return
			end
			if cart_func:is_rail({x=p.x, y=p.y, z=p.z-1}) then
				self.next_pos={x=p.x, y=p.y, z=p.z-1}
				self.current_direction={x=0, y=0, z=-1}
				return
			end
			if cart_func:is_rail({x=p.x, y=p.y+1, z=p.z+1}) then
				self.next_pos={x=p.x, y=p.y+1, z=p.z+1}
				self.current_direction={x=0, y=1, z=1}
				return
			end
			if cart_func:is_rail({x=p.x, y=p.y-1, z=p.z-1}) then
				self.next_pos={x=p.x, y=p.y-1, z=p.z-1}
				self.current_direction={x=0, y=-1, z=-1}
				return
			end
			if cart_func:is_rail({x=p.x, y=p.y+1, z=p.z-1}) then
				self.next_pos={x=p.x, y=p.y+1, z=p.z-1}
				self.current_direction={x=0, y=1, z=-1}
				return
			end
			if cart_func:is_rail({x=p.x, y=p.y-1, z=p.z+1}) then
				self.next_pos={x=p.x, y=p.y-1, z=p.z+1}
				self.current_direction={x=0, y=-1, z=1}
				return
			end
		end
		if math.abs(self.current_direction.z)==1 then
			if cart_func:is_rail({x=p.x+1, y=p.y, z=p.z}) then
				self.next_pos={x=p.x+1, y=p.y, z=p.z}
				self.current_direction={x=1, y=0, z=0}
				return
			end
			if cart_func:is_rail({x=p.x-1, y=p.y, z=p.z}) then
				self.next_pos={x=p.x-1, y=p.y, z=p.z}
				self.current_direction={x=-1, y=0, z=0}
				return
			end
			if cart_func:is_rail({x=p.x+1, y=p.y+1, z=p.z}) then
				self.next_pos={x=p.x+1, y=p.y+1, z=p.z}
				self.current_direction={x=1, y=1, z=0}
				return
			end
			if cart_func:is_rail({x=p.x-1, y=p.y-1, z=p.z}) then
				self.next_pos={x=p.x-1, y=p.y-1, z=p.z}
				self.current_direction={x=-1, y=-1, z=0}
				return
			end
			if cart_func:is_rail({x=p.x-1, y=p.y+1, z=p.z}) then
				self.next_pos={x=p.x-1, y=p.y+1, z=p.z}
				self.current_direction={x=-1, y=1, z=0}
				return
			end
			if cart_func:is_rail({x=p.x+1, y=p.y-1, z=p.z}) then
				self.next_pos={x=p.x+1, y=p.y-1, z=p.z}
				self.current_direction={x=1, y=-1, z=0}
				return
			end
		end
		-- Else it is ded-end, check that somewhere.
		minetest.log("action","Cart stopped at: "..minetest.get_node( cart_func.v3:add( self.next_pos, self.current_direction ) ).name) --debug
		self.current_direction = {x=0, y=0, z=0}

		self.next_pos = p
	end
end

-- Handle chart physical stuff
function cart:get_moving()

	local pos = self.object:getpos()

	local correction_x = (self.current_pos.x-pos.x)*0.2
	local correction_y = (self.current_pos.y-pos.y)*0.2
	local correction_z = (self.current_pos.z-pos.z)*0.2

	-- Actually change cart speed
	if math.abs(self.current_direction.y) == 1 and math.abs(self.current_direction.x) == 1 then
		self.object:setvelocity({x=self.current_direction.x*self.current_speed*0.71, y=self.current_direction.y*self.current_speed*0.71, z=correction_z})
	elseif math.abs(self.current_direction.y) == 1 and math.abs(self.current_direction.z) == 1 then
		self.object:setvelocity({x=correction_x, y=self.current_direction.y*self.current_speed*0.71, z=self.current_direction.z*self.current_speed*0.71})
	elseif math.abs(self.current_direction.x) == 1 then
		self.object:setvelocity({x=self.current_direction.x*self.current_speed, y=correction_y, z=correction_z})
	elseif math.abs(self.current_direction.z) == 1 then
		self.object:setvelocity({x=correction_x, y=correction_y, z=self.current_direction.z*self.current_speed})
	end

	-- Direction
	if self.current_direction.x < 0 then
		self.object:setyaw(math.pi/2)
	elseif self.current_direction.x > 0 then
		self.object:setyaw(3*math.pi/2)
	elseif self.current_direction.z < 0 then
		self.object:setyaw(math.pi)
	elseif self.current_direction.z > 0 then
		self.object:setyaw(0)
	end

	-- And animation.
	if self.current_direction.y == -1 then
		self.object:set_animation({x=1, y=1}, 1, 0)
	elseif self.current_direction.y == 1 then
		self.object:set_animation({x=2, y=2}, 1, 0)
	else
		self.object:set_animation({x=0, y=0}, 1, 0)
	end

end

-- Correct cart position on rail
function cart:precize_on_rail(pos)
	if self.current_direction.x == 0 and math.abs(self.current_pos.x-pos.x)>0.2 then
		self.object:setpos(self.current_pos)
	elseif self.current_direction.z == 0 and math.abs(self.current_pos.z-pos.z)>0.2 then
		self.object:setpos(self.current_pos)
	elseif self.current_direction.y == 0 and math.abs(self.current_pos.y-pos.y)>0.2 then
		self.object:setpos(self.current_pos)
	end
end

function cart:on_step(dtime)

	local pos = self.object:getpos()
	local new_pos=cart_func.v3:round(pos) --rounded

	-- When on new position, check the route
	if not cart_func.v3:equal( self.current_pos, new_pos ) then
		--wait for unloaded world
		if self.next_pos and self.driver and minetest.get_node( cart_func.v3:add( self.next_pos, self.current_direction ) ).name == "ignore" then
			self.object:setvelocity({x=0, y=0, z=0}) --don't move cart, until world ahead is loaded
			return
		end

		--move back if out of road
		if not cart_func:is_rail(new_pos) then
			if cart_func:is_rail(self.next_pos) then
				self.object:setpos(self.next_pos)
				self.current_pos = cart_func.v3:copy(self.next_pos)
				self.current_speed=self.current_speed-0.01
			elseif cart_func:is_rail(self.current_pos) then
				self.object:setpos(self.current_pos)
				self.current_speed=self.current_speed-0.01
			else
				if self.driver ~= nil then
					self.driver:set_detach()
				end
				self.object:remove() --not on rails
				return
			end
		else
			self.old_pos=self.current_pos
			self.current_pos=new_pos
		end

		-- Direction to new rail node
		self:recalculate_way()

		-- Stop if ded-end
		if cart_func.v3:empty(self.current_direction ) then
			self.object:setvelocity({x=0, y=0, z=0})
			self:precize_on_rail(pos)
			return
		end

		-- Increase or decrease speed on uphill/downhill
		if self.current_direction.y == 1 then
			self.current_speed = self.current_speed - 0.4
		end
		if self.current_direction.y == -1 then
			self.current_speed = self.current_speed + 0.4
		end

		-- Decrease sped a little at any rail.
		self.current_speed = self.current_speed - 0.04


		-- Increase or decrease speed on powerrail/brakerail  LATER!!!
		if minetest.get_node(self.current_pos).name == "carts:powerrail" then
			self.current_speed = self.current_speed + 0.44
			--local a = tonumber(minetest.get_meta(pos):get_string("cart_acceleration"))
			--self.current_speed = self.current_speed + a
		elseif minetest.get_node(self.current_pos).name == "carts:brakerail" then
			self.current_speed = self.current_speed - 0.36
			--local a = tonumber(minetest.get_meta(pos):get_string("cart_acceleration"))
			--self.current_speed = self.current_speed + a -- +
		end


		-- Speed limits
		if self.current_speed < 0 then
			self.current_speed = 0
		end
		if self.current_speed > self.MAX_SPEED then
			self.current_speed = self.MAX_SPEED
		end

		-- Stop the cart if the velocity is nearly 0
		-- On all, not just flat
		if self.current_speed < 0.2 then
			self.object:setvelocity({x=0, y=0, z=0})
			self:precize_on_rail(pos)
			return
		end

		-- Move opposite direction if the velocity is nearly 0 but not stopped yet
		-- Only uphill/downhill
		-- if self.current_speed < 0.3 and self.current_direction.y ~= 0 then
			-- self.current_direction={x=-self.current_direction.x, y=-self.current_direction.y, z=-self.current_direction.z}
			-- self.object:setvelocity({x=0, y=0, z=0})
			-- self.current_speed = 0.3
			-- self.next_pos=cart_func.v3:copy(self.old_pos)
			-- self:recalculate_way()
		-- end

		-- Need to move cart precise on rail.
		self:precize_on_rail(pos)

		self:get_moving()
	end
end

minetest.register_entity("carts:cart", cart)


minetest.register_craftitem("carts:cart", {
	description = "Minecart",
	inventory_image = minetest.inventorycube("cart_top.png", "cart_side.png", "cart_side.png"),
	wield_image = "cart_side.png",

	on_place = function(itemstack, placer, pointed_thing)
		if not pointed_thing.type == "node" then
			return
		end
		if cart_func:is_rail(pointed_thing.under) then
			minetest.add_entity(pointed_thing.under, "carts:cart")
			if not minetest.setting_getbool("creative_mode") then
				itemstack:take_item()
			end
			return itemstack
		elseif cart_func:is_rail(pointed_thing.above) then
			minetest.add_entity(pointed_thing.above, "carts:cart")
			if not minetest.setting_getbool("creative_mode") then
				itemstack:take_item()
			end
			return itemstack
		end
	end,
})

minetest.register_craft({
	output = "carts:cart",
	recipe = {
		{"", "", ""},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
	},
})

--[[minetest.register_craft({
	output = "carts:cart",
	recipe = {
		{"technic:wrought_iron_ingot", "", "technic:wrought_iron_ingot"},
		{"technic:wrought_iron_ingot", "", "technic:wrought_iron_ingot"},
		{'technic:wrought_iron_ingot', 'technic:wrought_iron_ingot', 'technic:wrought_iron_ingot'},
	},
})]]




--
-- Mesecon support
--

minetest.register_node(":default:rail", {
	description = "Rail",
	drawtype = "raillike",
	tiles = {"default_rail.png", "default_rail_curved.png", "default_rail_t_junction.png", "default_rail_crossing.png"},
	inventory_image = "default_rail.png",
	wield_image = "default_rail.png",
	paramtype = "light",
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		-- but how to specify the dimensions for curved and sideways rails?
		fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {bendy=2,cracky=1,attached_node=1,rail=1,connect_to_raillike=1,level=2},
})

minetest.register_node("carts:powerrail", {
	description = "Powered Rail",
	drawtype = "raillike",
	tiles = {"carts_rail_pwr.png", "carts_rail_curved_pwr.png", "carts_rail_t_junction_pwr.png", "carts_rail_crossing_pwr.png"},
	inventory_image = "carts_rail_pwr.png",
	wield_image = "carts_rail_pwr.png",
	paramtype = "light",
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		-- but how to specify the dimensions for curved and sideways rails?
		fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {bendy=2,cracky=1,attached_node=1,rail=1,connect_to_raillike=1,level=2},

	after_place_node = function(pos, placer, itemstack)
		if not mesecon then
			minetest.get_meta(pos):set_string("cart_acceleration", "0.5")
		end
	end,

	mesecons = {
		effector = {
			action_on = function(pos, node)
				minetest.get_meta(pos):set_string("cart_acceleration", "0.5")
			end,

			action_off = function(pos, node)
				minetest.get_meta(pos):set_string("cart_acceleration", "0")
			end,
		},
	},
})

minetest.register_node("carts:brakerail", {
	description = "Brake Rail",
	drawtype = "raillike",
	tiles = {"carts_rail_brk.png", "carts_rail_curved_brk.png", "carts_rail_t_junction_brk.png", "carts_rail_crossing_brk.png"},
	inventory_image = "carts_rail_brk.png",
	wield_image = "carts_rail_brk.png",
	paramtype = "light",
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		-- but how to specify the dimensions for curved and sideways rails?
		fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {bendy=2,cracky=1,attached_node=1,rail=1,connect_to_raillike=1,level=2},

	after_place_node = function(pos, placer, itemstack)
		if not mesecon then
			minetest.get_meta(pos):set_string("cart_acceleration", "-0.2")
		end
	end,

	mesecons = {
		effector = {
			action_on = function(pos, node)
				minetest.get_meta(pos):set_string("cart_acceleration", "-0.2")
			end,

			action_off = function(pos, node)
				minetest.get_meta(pos):set_string("cart_acceleration", "0")
			end,
		},
	},
})

minetest.register_craft({
	output = "carts:powerrail 2",
	recipe = {
		{"default:steel_ingot", "default:mese_crystal_fragment", "default:steel_ingot"},
		{"default:steel_ingot", "default:stick", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "carts:powerrail 2",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "default:stick", "default:steel_ingot"},
		{"default:steel_ingot", "default:mese_crystal_fragment", "default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "carts:brakerail 2",
	recipe = {
		{"default:steel_ingot", "default:coal_lump", "default:steel_ingot"},
		{"default:steel_ingot", "default:stick", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "carts:brakerail 2",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "default:stick", "default:steel_ingot"},
		{"default:steel_ingot", "default:coal_lump", "default:steel_ingot"},
	}
})
