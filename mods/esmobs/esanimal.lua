--esmobs v0.0.7
--maikerumine
--made for Extreme Survival game


--dofile(minetest.get_modpath("esmobs").."/api.lua")

--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)

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
bp:register_spawn("esmobs:sheep2", {"default:dirt_with_grass"}, 20, 12, 5000, 8, 31000)


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
	follow = "default:apple", --was farming_plus:carrot_item
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
bp:register_spawn("esmobs:pig", {"default:dirt_with_grass"}, 20, 12, 5000, 8, 31000)


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
bp:register_spawn("esmobs:cow", {"default:dirt_with_grass"}, 20, 8, 7000, 7, 31000)


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
bp:register_spawn("esmobs:chicken", {"default:dirt_with_grass"}, 20, 8, 7000, 7, 31000)


