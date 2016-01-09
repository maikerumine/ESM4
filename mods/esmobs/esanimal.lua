--esmobs v0.0.7
--maikerumine
--made for Extreme Survival game


--dofile(minetest.get_modpath("esmobs").."/api.lua")

--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
bp:register_mob("esmobs:rat", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "mobs_rat.x",
	textures = {"mobs_rat.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,

	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "mobs:rat")
			self.object:remove()
		end
	end,
})
bp:register_spawn("esmobs:rat", {"default:dirt_with_grass", "default:stone"}, 20, -1, 7000, 1, 31000)


-- Sheep by PilzAdam

bp:register_mob("esmobs:sheep", {
	type = "animal",
	passive = false,
	hp_min = 12,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "mobs_sheep.x",
	textures = {
		{"mobs_sheep.png"},
	},
	visual_size = {x=1,y=1},
	gotten_texture = {"mobs_sheep_shaved.png"},
	gotten_mesh = "mobs_sheep_shaved.x",
	makes_footstep_sound = true,
	sounds = {
		random = "Sheep3",
		death = "mobs_sheep",
		hurt = "mobs_sheep",
	},
	walk_velocity = 1.7,
	jump = true,
	drops = {
		{name = "esmobs:meat_raw",
		chance = 1, min = 2, max = 3},
		{name = "wool:white",
		chance = 1, min = 1, max = 1},
	},
	water_damage = 1,
	lava_damage = 50,
	light_damage = 0,
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 0,		stand_end = 80,
		walk_start = 81,		walk_end = 100,
	},
	follow = "farming:wheat",
	view_range = 5,
	replace_rate = 50,
	replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "farming:wheat_8"},
	replace_with = "air",
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		if item:get_name() == "farming:wheat" then
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			if self.child == true then
				self.hornytimer = self.hornytimer + 10
				return
			end
			self.food = (self.food or 0) + 1
			if self.food >= 8 then
				self.food = 0
				if self.hornytimer == 0 then
					self.horny = true
				end
				self.gotten = false -- can be shaved again
				self.tamed = true
				self.object:set_properties({
					textures = {"mobs_sheep.png"},
					mesh = "mobs_sheep.x",
				})
				minetest.sound_play("mobs_sheep", {object = self.object,gain = 1.0,max_hear_distance = 32,loop = false,})
			end
			return
		end

		if item:get_name() == "esmobs:shears"
		and self.gotten == false
		and self.child == false then
			self.gotten = true -- shaved
			if minetest.registered_items["wool:white"] then
				local pos = self.object:getpos()
				pos.y = pos.y + 0.5
				local obj = minetest.add_item(pos, ItemStack("wool:white "..math.random(2,3)))
				if obj then
					obj:setvelocity({x=math.random(-1,1), y=5, z=math.random(-1,1)})
				end
				item:add_wear(650) -- 100 uses
				clicker:set_wielded_item(item)
			end
			self.object:set_properties({
				textures = {"mobs_sheep_shaved.png"},
				mesh = "mobs_sheep_shaved.x",
			})
		end

		if item:get_name() == "esmobs:magic_lasso"
		and clicker:is_player()
		and clicker:get_inventory()
		and self.child == false
		and clicker:get_inventory():room_for_item("main", "esmobs:sheep") then
			clicker:get_inventory():add_item("main", "esmobs:sheep")
			self.object:remove()
			item:add_wear(3000) -- 22 uses
			print ("wear", item:get_wear())
			clicker:set_wielded_item(item)
		end
	end,
})

--bp:register_spawn("esmobs:sheep", {"default:dirt_with_grass", "ethereal:green_dirt"}, 20, 10, 5000, 8, 31000)

--bp:register_egg("esmobs:sheep", "Sheep", "wool_white.png", 1)



--BEGIN MC ANIMALS
bp:register_mob("esmobs:sheep2", {
	type = "animal",
	hp_max = 25,
	collisionbox = {-0.5, -0.01, -0.5, 0.5, 1.5, 0.5},
	textures = {"sheep.png"},
	visual = "mesh",
	mesh = "sheep.x",
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 200,
	drops = {
		{name = "esmobs:mutton_raw",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "wool:white",
		chance = 1,
		min = 1,
		max = 1,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	sounds = {
		random = "Sheep3",
		death = "mobs_sheep",
		hurt = "mobs_sheep",
	},
	animation = {
		speed_normal = 24,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 49,
		hurt_start = 118,
		hurt_end = 154,
		death_start = 154,
		death_end = 179,
		eat_start = 49,
		eat_end = 78,
		look_start = 78,
		look_end = 108,
	},
	follow = "farming:wheat",
	view_range = 5,

	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		if item:get_name() == "farming:wheat" then
			if not self.tamed then
				if not minetest.setting_getbool("creative_mode") then
					item:take_item()
					clicker:set_wielded_item(item)
				end
				self.tamed = true
			elseif self.naked then
				if not minetest.setting_getbool("creative_mode") then
					item:take_item()
					clicker:set_wielded_item(item)
				end
				self.food = (self.food or 0) + 1
				if self.food >= 4 then
					self.food = 0
					self.naked = false
					self.object:set_properties({
						textures = {"sheep.png"},
					})
				end
			end
			return
		end
		if item:get_name() == "esmobs:shears" and not self.naked then
			self.naked = true
			local pos = self.object:getpos()
			minetest.sound_play("shears", {pos = pos})
			pos.y = pos.y + 0.5
			if not self.color then
				minetest.add_item(pos, ItemStack("wool:white "..math.random(1,3)))
			else
				minetest.add_item(pos, ItemStack("wool:"..self.color.." "..math.random(1,3)))
			end
			self.object:set_properties({
				textures = {"sheep_sheared.png"},
			})
			if not minetest.setting_getbool("creative_mode") then
				item:add_wear(300)
				clicker:get_inventory():set_stack("main", clicker:get_wield_index(), item)
			end
		end
		if minetest.get_item_group(item:get_name(), "dye") == 1 and not self.naked then
print(item:get_name(), minetest.get_item_group(item:get_name(), "dye"))
			local name = item:get_name()
			local pname = name:split(":")[2]

			self.object:set_properties({
				textures = {"sheep_"..pname..".png"},
			})
			self.color = pname
			self.drops = {
				{name = "esmobs:mutton_raw",
				chance = 1,
				min = 1,
				max = 2,},
				{name = "wool:"..self.color,
				chance = 1,
				min = 1,
				max = 1,},
			}
		end
	end,
})
bp:register_spawn("esmobs:sheep2", {"default:dirt_with_grass"}, 20, 12, 15000, 2, 31000)


bp:register_mob("esmobs:pig", {
	type = "animal",
	hp_max = 25,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	textures = {"pig.png"},
	visual = "mesh",
	mesh = "pig.x",
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 200,
	drops = {
		{name = "esmobs:porkchop_raw",
		chance = 1,
		min = 1,
		max = 3,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	sounds = {
		random = "Pig2",
		death = "Pigdeath",
		hurt = "Pig2",
	},
	animation = {
		speed_normal = 24,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 49,
		hurt_start = 118,
		hurt_end = 154,
		death_start = 154,
		death_end = 179,
		eat_start = 49,
		eat_end = 78,
		look_start = 78,
		look_end = 108,
	},
	follow = "farming:carrot", --was farming_plus:carrot_item
	view_range = 5,
	on_rightclick = function(self, clicker)
		if not clicker or not clicker:is_player() then
			return
		end
		local item = clicker:get_wielded_item()
		if item:get_name() == "esmobs:saddle" and self.saddle ~= "yes" then
			self.object:set_properties({
				textures = {"pig_with_saddle.png"},
			})
			self.saddle = "yes"
			self.tamed = true
			self.drops = {
				{name = "esmobs:porkchop_raw",
				chance = 1,
				min = 1,
				max = 3,},
				{name = "esmobs:saddle",
				chance = 1,
				min = 1,
				max = 1,},
			}
			if not minetest.setting_getbool("creative_mode") then
				local inv = clicker:get_inventory()
				local stack = inv:get_stack("main", clicker:get_wield_index())
				stack:take_item()
				inv:set_stack("main", clicker:get_wield_index(), stack)
			end
			return
		end
	-- from boats mod
	local name = clicker:get_player_name()
	if self.driver and clicker == self.driver then
		self.driver = nil
		clicker:set_detach()
		default.player_attached[name] = false
		default.player_set_animation(clicker, "stand" , 30)
	elseif not self.driver and self.saddle == "yes" then
		self.driver = clicker
		clicker:set_attach(self.object, "", {x = 0, y = 19, z = 0}, {x = 0, y = 0, z = 0})
		default.player_attached[name] = true
		minetest.after(0.2, function()
			default.player_set_animation(clicker, "sit" , 30)
		end)
		--self.object:setyaw(clicker:get_look_yaw() - math.pi / 2)
	end
	end,
})
bp:register_spawn("esmobs:pig", {"default:dirt_with_grass"}, 20, 12, 15000, 1, 31000)


bp:register_mob("esmobs:cow", {
	type = "animal",
	hp_max = 28,
	collisionbox = {-0.6, -0.01, -0.6, 0.6, 1.8, 0.6},
	textures = {"cow.png"},
	visual = "mesh",
	mesh = "cow.x",
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 200,
	drops = {
		{name = "esmobs:beef_raw",
		chance = 1,
		min = 1,
		max = 3,},
		{name = "esmobs:leather",
		chance = 1,
		min = 0,
		max = 2,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	sounds = {
		random = "Cow1",
		death = "Cowhurt1",
		hurt = "Cowhurt1",
	},
	animation = {
		speed_normal = 24,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 49,
		hurt_start = 118,
		hurt_end = 154,
		death_start = 154,
		death_end = 179,
		eat_start = 49,
		eat_end = 78,
		look_start = 78,
		look_end = 108,
	},
	follow = "farming:wheat",
	view_range = 5,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		if item:get_name() == "bucket:bucket_empty" and clicker:get_inventory() then
			local inv = clicker:get_inventory()
			inv:remove_item("main", "bucket:bucket_empty")
			-- if room add bucket of milk to inventory, otherwise drop as item
			if inv:room_for_item("main", {name="bucket:bucket_milk"}) then
				clicker:get_inventory():add_item("main", "bucket:bucket_milk")
			else
				local pos = self.object:getpos()
				pos.y = pos.y + 0.5
				minetest.add_item(pos, {name = "bucket:bucket_milk"})
			end
		end
	end,
})
bp:register_spawn("esmobs:cow", {"default:dirt_with_grass"}, 20, 8, 17000, 1, 31000)


bp:register_mob("esmobs:chicken", {
	type = "animal",
	hp_max = 24,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	textures = {"chicken.png"},
	visual = "mesh",
	mesh = "chicken.x",
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 200,
	drops = {
		{name = "esmobs:chicken_raw",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "esmobs:feather",
		chance = 1,
		min = 0,
		max = 2,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	sounds = {
		random = "Chicken1",
		death = "Chickenhurt1",
		hurt = "Chickenhurt1",
	},
	animation = {
		speed_normal = 24,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 49,
		hurt_start = 118,
		hurt_end = 154,
		death_start = 154,
		death_end = 179,
		eat_start = 49,
		eat_end = 78,
		look_start = 78,
		look_end = 108,
		fly_start = 181,
		fly_end = 187,
	},
	follow = "farming:seed_wheat",
	view_range = 5,
	on_rightclick = function(self, clicker)   --WAS FOOD:EGG
		if clicker:get_inventory() then
			if minetest.registered_items["esmobs:egg"] then
				clicker:get_inventory():add_item("main", ItemStack("esmobs:egg 1"))
			end
		end
	end,
})
bp:register_spawn("esmobs:chicken", {"default:dirt_with_grass"}, 20, 8, 17000, 2, 31000)

--KPGMOBS HORSE
--By: KrupnovPavel
local function is_ground(pos)
	local nn = minetest.get_node(pos).name
	return minetest.get_item_group(nn, "crumbly") ~= 0 or
	minetest.get_item_group(nn, "choppy") ~= 0 or
	minetest.get_item_group(nn, "cracky") ~= 0  or
	minetest.get_item_group(nn, "snappy") ~= 0  or
	minetest.get_item_group(nn, "unbreakable") ~= 0  or
	minetest.get_item_group(nn, "immortal") ~= 0
end

local function get_sign(i)
	if i == 0 then
		return 0
	else
		return i/math.abs(i)
	end
end

local function get_velocity(v, yaw, y)
	local x = math.cos(yaw)*v
	local z = math.sin(yaw)*v
	return {x=x, y=y, z=z}
end

local function get_v(v)
	return math.sqrt(v.x^2+v.z^2)
end

function merge(a, b)
    if type(a) == 'table' and type(b) == 'table' then
        for k,v in pairs(b) do if type(v)=='table' and type(a[k] or false)=='table' then merge(a[k],v) else a[k]=v end end
    end
    return a
end

-- HORSE go go goooo :)
local horse = {
	physical = true,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	stepheight = 1.1,
	visual_size = {x=1,y=1},
	mesh = "mobs_horseh1.x",
	driver = nil,
	v = 0,

	on_rightclick = function(self, clicker)
		if not clicker or not clicker:is_player() then
			return
		end
		if self.driver and clicker == self.driver then
			self.driver = nil
			clicker:set_detach()
		elseif not self.driver then
			self.driver = clicker
			clicker:set_attach(self.object, "", {x=0,y=11,z=0}, {x=0,y=0,z=0})
			self.object:setyaw(clicker:get_look_yaw())
		end
	end,

	on_activate = function(self, staticdata, dtime_s)
		self.object:set_armor_groups({immortal=1})
		print (self.texture, self.jmp)
	end,

	on_punch = function(self, puncher, time_from_last_punch, tool_capabilities, direction)
		if puncher and puncher:is_player() then
			puncher:get_inventory():add_item("main", self.name)
			self.object:remove()
		end
	end,

	on_step = function(self, dtime)

		self.v = get_v(self.object:getvelocity())*get_sign(self.v)

		if self.driver then
			local ctrl = self.driver:get_player_control()
			if ctrl.up then
				self.v = self.v + self.jmp
			end
			if ctrl.down then
				self.v = self.v-0.1
			end
			if ctrl.left then
				self.object:setyaw(self.object:getyaw()+math.pi/120+dtime*math.pi/120)
			end
			if ctrl.right then
				self.object:setyaw(self.object:getyaw()-math.pi/120-dtime*math.pi/120)
			end
			if ctrl.jump then
				local p = self.object:getpos()
				p.y = p.y-0.5
				if is_ground(p) then
					local pos = self.object:getpos()
					pos.y = math.floor(pos.y)+4
					self.object:setpos(pos)
					self.object:setvelocity(get_velocity(self.v, self.object:getyaw(), 0))
				end
			end
		end

		local s = get_sign(self.v)
		self.v = self.v - 0.02*s
		if s ~= get_sign(self.v) then
			self.object:setvelocity({x=0, y=0, z=0})
			self.v = 0
			return
		end

		if math.abs(self.v) > 4.5 then
			self.v = 4.5*get_sign(self.v)
		end

		local p = self.object:getpos()
		p.y = p.y-0.5

		if not is_ground(p) then
			if minetest.registered_nodes[minetest.get_node(p).name].walkable then
				self.v = 0
			end
			self.object:setacceleration({x=0, y=-10, z=0})
			self.object:setvelocity(get_velocity(self.v, self.object:getyaw(), self.object:getvelocity().y))
		else
			p.y = p.y+1
			if is_ground(p) then
				self.object:setacceleration({x=0, y=3, z=0})
				local y = self.object:getvelocity().y
				if y > 2 then
					y = 2
				end
				if y < 0 then
					self.object:setacceleration({x=0, y=10, z=0})
				end
				self.object:setvelocity(get_velocity(self.v, self.object:getyaw(), y))
			else
				self.object:setacceleration({x=0, y=0, z=0})
				if math.abs(self.object:getvelocity().y) < 1 then
					local pos = self.object:getpos()
					pos.y = math.floor(pos.y)+0.5
					self.object:setpos(pos)
					self.object:setvelocity(get_velocity(self.v, self.object:getyaw(), 0))
				else
					self.object:setvelocity(get_velocity(self.v, self.object:getyaw(), self.object:getvelocity().y))
				end
			end
		end
	end,
}

--END HORSE

-- backup table
local hbak = horse

-- Brown Horse
local hrs = {
	textures = {"mobs_horseh1.png"},
	jmp = 2,
}
minetest.register_entity("esmobs:horseh1", merge(hrs, horse))

-- White Horse
horse = hbak
local peg = {
	textures = {"mobs_horsepegh1.png"},
	jmp = 2,
}
minetest.register_entity("esmobs:horsepegh1", merge(peg, horse))

-- Black Horse
horse = hbak
local ara = {
	textures = {"mobs_horsearah1.png"},
	jmp = 3,
}
minetest.register_entity("esmobs:horsearah1", merge(ara, horse))


bp:register_mob("esmobs:horse", {
	type = "animal",
	hp_min = 5,
	hp_max = 10,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	textures = {
		{"mobs_horse.png"},
	},
	visual = "mesh",
	mesh = "mobs_horse.x",
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 200,
	drops = {
		{name = "esmobs:meat_raw",
		chance = 1,
		min = 2,
		max = 3,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		stand_start = 25,		stand_end = 75,
		walk_start = 75,		walk_end = 100,
	},
	follow = "farming:wheat",
	view_range = 5,

	on_rightclick = function(self, clicker)
		local tool = clicker:get_wielded_item()
		if tool:get_name() == "esmobs:saddle" then
			clicker:get_inventory():remove_item("main", "esmobs:saddle")
			local pos = self.object:getpos()
			self.object:remove()
			minetest.add_entity(pos, "esmobs:horseh1")
		end
	end,
})
bp:register_spawn("esmobs:horse", {"default:dirt_with_dry_grass"}, 20, 8, 17000, 1, 31000)

bp:register_mob("esmobs:horse2", {
	type = "animal",
	hp_min = 5,
	hp_max = 10,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	textures = {
		{"mobs_horsepeg.png"},
	},
	visual = "mesh",
	mesh = "mobs_horse.x",
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 200,
	drops = {
		{name = "esmobs:meat_raw",
		chance = 1,
		min = 2,
		max = 3,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		stand_start = 25,		stand_end = 75,
		walk_start = 75,		walk_end = 100,
	},
	follow = "farming:wheat",
	view_range = 5,

	on_rightclick = function(self, clicker)
		local tool = clicker:get_wielded_item()
		if tool:get_name() == "esmobs:saddle" then
			clicker:get_inventory():remove_item("main", "esmobs:saddle")
			local pos = self.object:getpos()
			self.object:remove()
			minetest.add_entity(pos, "esmobs:horsepegh1")
		end
	end,
})
bp:register_spawn("esmobs:horse2", {"default:dirt_with_dry_grass"}, 20, 8, 17000, 1, 31000)

bp:register_mob("esmobs:horse3", {
	type = "animal",
	hp_min = 5,
	hp_max = 10,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	textures = {
		{"mobs_horseara.png"},
	},
	visual = "mesh",
	mesh = "mobs_horse.x",
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 200,
	drops = {
		{name = "esmobs:meat_raw",
		chance = 1,
		min = 2,
		max = 3,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		stand_start = 25,		stand_end = 75,
		walk_start = 75,		walk_end = 100,
	},
	follow = "farming:wheat",
	view_range = 5,

	on_rightclick = function(self, clicker)
		local tool = clicker:get_wielded_item()
		if tool:get_name() == "esmobs:saddle" then
			clicker:get_inventory():remove_item("main", "esmobs:saddle")
			local pos = self.object:getpos()
			self.object:remove()
			minetest.add_entity(pos, "esmobs:horsearah1")
		end
	end,
})
bp:register_spawn("esmobs:horse3", {"default:desert_sand"}, 20, 8, 17000, 1, 31000)


