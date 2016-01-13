--Dripping Water Mod
--by kddekadenz

-- License of code, textures & sounds: CC0

--Random
math.randomseed(3)


--Drop entities

--water

minetest.register_entity("drippingwater:drop_water", {
	hp_max = 2000,
	physical = true,
	collisionbox = {0,0,0,0,0,0},
	visual = "cube",
	visual_size = {x=0.05, y=0.1},
	textures = {"default_water.png","default_water.png","default_water.png","default_water.png", "default_water.png", 	"default_water.png"},
	spritediv = {x=1, y=1},
	initial_sprite_basepos = {x=0, y=0},

	on_activate = function(self, staticdata)
		self.object:setsprite({x=0,y=0}, 1, 1, true)
	end,

	on_step = function(self, dtime)
	local k = math.random(1,12)
	local ownpos = self.object:getpos()

	if k==1 then
	self.object:setacceleration({x=0, y=-5, z=0})
	end

	if minetest.get_node({x=ownpos.x, y=ownpos.y +0.5, z=ownpos.z}).name == "air" then
	self.object:setacceleration({x=0, y=-5, z=0})
	end
	
		if minetest.get_node({x=ownpos.x, y=ownpos.y - 1, z=ownpos.z}).name ~= "air" then
		self.object:remove()
		minetest.sound_play({name="drippingwater_drip"}, {pos = ownpos, gain = 0.5, max_hear_distance = 8})
		end
	end,
})


--lava

minetest.register_entity("drippingwater:drop_lava", {
	hp_max = 2000,
	physical = true,
	collisionbox = {0,0,0,0,0,0},
	visual = "cube",
	visual_size = {x=0.05, y=0.1},
	textures = {"default_lava.png","default_lava.png","default_lava.png","default_lava.png", "default_lava.png", "default_lava.png"},
	spritediv = {x=1, y=1},
	initial_sprite_basepos = {x=0, y=0},

	on_activate = function(self, staticdata)
		self.object:setsprite({x=0,y=0}, 1, 0, true)
	end,

	on_step = function(self, dtime)
	local k = math.random(1,12)
	local ownpos = self.object:getpos()

	if k==1 then
	self.object:setacceleration({x=0, y=-5, z=0})
	end

	if minetest.get_node({x=ownpos.x, y=ownpos.y +0.5, z=ownpos.z}).name == "air" then
	self.object:setacceleration({x=0, y=-5, z=0})
	end

		
		if minetest.get_node({x=ownpos.x, y=ownpos.y - 1, z=ownpos.z}).name ~= "air" then
		self.object:remove()
		minetest.sound_play({name="drippingwater_lavadrip"}, {pos = ownpos, gain = 0.5, max_hear_distance = 8})
		end
	end,
})



--Create drop

minetest.register_abm(
        {nodenames = {"group:crumbly"},
	neighbors = {"group:water"},
        interval = 2,
        chance = 42,
        action = function(pos)
		if minetest.get_node({x=pos.x, y=pos.y -1, z=pos.z}).name == "air" and 
		minetest.get_node({x=pos.x, y=pos.y -2, z=pos.z}).name == "air" then
		local i = math.random(-45,45) / 100
		local p2 = {x=pos.x + i, y=pos.y - 0.5, z=pos.z + i}
		local objects = minetest.get_objects_inside_radius(p2, 5)
		local count = 0
		for _,obj in ipairs(objects) do
			if obj:get_luaentity() and obj:get_luaentity().name == "drippingwater:drop_water" then
				count = count + 1
			end
		end
		if count < 10 then
			minetest.add_entity(p2, "drippingwater:drop_water")
		end
		end
        end,
})


--Create lava drop

minetest.register_abm(
        {nodenames = {"group:crumbly"},
	neighbors = {"group:lava"},
        interval = 2,
        chance = 42,
        action = function(pos)
		if minetest.get_node({x=pos.x, y=pos.y -1, z=pos.z}).name == "air" and 
		minetest.get_node({x=pos.x, y=pos.y -2, z=pos.z}).name == "air" then
		local i = math.random(-45,45) / 100
		local p2 = {x=pos.x + i, y=pos.y - 0.5, z=pos.z + i}
		local objects = minetest.get_objects_inside_radius(p2, 5)
		local count = 0
		for _,obj in ipairs(objects) do
			if obj:get_luaentity() and obj:get_luaentity().name == "drippingwater:drop_lava" then
				count = count + 1
			end
		end
		if count < 10 then
			minetest.add_entity(p2, "drippingwater:drop_lava")
		end
		end
        end,
})
