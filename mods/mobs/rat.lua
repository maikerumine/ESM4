
-- Rat

mobs:register_mob("mobs:rat", {
	type = "monster",
	hp_min = 1,
	hp_max = 1, -- 1
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "mobs_rat.x",
	textures = {"mobs_rat.png"},
	makes_footstep_sound = false,
	view_range = 16,
	walk_velocity = 3.5,
	run_velocity = 4.6,
	armor = 100,
	damage = 1.5,
	attack_type = "dogfight",
	sounds = {
		attack = "bite",
	},
	--lifetimer=300,
	drops = {
	{name = "mobs:rat", -- rnd
		chance = 2,
		min = 1,
		max = 1,},
	{name = "farming:seed_wheat",
		chance = 100,	--was 100
		min = 0,
		max = 3,},
	{name = "farming:seed_cotton",
		chance = 100,	--was 100
		min = 0,
		max = 3,},
	},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
jump = true,
step = 1,
--passive = true,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "mobs:rat")
			self.object:remove()
		end
	end,
})
--mobs:register_spawn("mobs:rat", {"default:stone"}, 20, -1, 5000, 10, 31000)

--mobs:register_spawn("mobs:rat", "default:stone", 6, 1, 89000, 1, 500, 0)--bp
--mobs:register_spawn("mobs:rat", "default:stone", 6, 1, 5000, 10, 5000, -15000)
--mobs:register_spawn("mobs:rat", "default:stone", 6, 1, 85000, 2, 5000, -15000)
mobs:spawn({
	name = "mobs:rat",
	nodes = {"group:cracky", "bones:bones"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 1,
	min_height = -2000,
	max_height = 500,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})


--Ratzilla
mobs:register_mob("mobs:ratzilla", {
	type = "monster",
	hp_min = 90,
	hp_max = 150, -- 1
	collisionbox = {-2.2, -0.01, -0.8, 2.5, 2.2, 0.8},
	visual = "mesh",
	--mesh = "mobs_rat.b3d",
	mesh = "mobs_rat.x",
	visual_size = {x = 7.5, y = 7.5},
	--textures = {"mobs_rat.png"},
	textures = {"mobs_rat.png"},
	makes_footstep_sound = true,
	view_range = 16,
	walk_velocity = 2.5,
	run_velocity = 3.6,
	armor = 80,
	damage = 2.5,
	attack_type = "dogfight",
	sounds = {
		random = "mobs_ratzilla",
		attack = "grr4",
		war_cry = "grr4",
		--shoot_attack = "rocks",
		damage = "default_punch3",
		jump = "mobs_slash_attack",
		death = "mobs_ratzilla",
	},
	--lifetimer=300,
	drops = {
		{name = "mobs:rat", -- rnd
		chance = 2,
		min = 5,
		max = 23,},
		{name = "default:mese",
			chance = 0,
			min = 1,
			max=2,
		},
		{name = "default:obsidian",
			chance = 0,
			min = 1,
			max=10,
		},
		},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
jump = true,
step = 1,
--[[
	on_die = function(self, pos)

		minetest.sound_play({ pos = pos, name = "bite", gain = 10, max_hear_distance = 500 })
		minetest.sound_play({ pos = pos, name = "bite", gain = 10, max_hear_distance = 500 })
		ratghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		ratghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		ratghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		ratghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		ratghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		ratghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		ratghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		ratghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		ent = ratghost:get_luaentity()
		self.object:remove()
		
		minetest.add_particlespawner({
			amount = 1720,
			time = 3.25,
			minpos = pos,
			maxpos = pos,
			minvel = {x = -2, y = -0.25, z = -2},
			maxvel = {x = 2, y = 4, z = 2},
			minacc = {x = 0, y = 1, z = 0},
			maxacc = {x = 2, y = 10, z = 2},
			minexptime = 0.1,
			maxexptime = 3,
			minsize = 1.5,
			maxsize = 4.0,
			texture = "mobs_blood.png",
		})
		end,]]
})

mobs:spawn({
	name = "mobs:ratzilla",
	nodes = {"bones:bones", "default:gravel"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 2,
	min_height = -20000,
	max_height = 5000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
mobs:spawn({
	name = "mobs:ratzilla",
	nodes = {"bones:bones"},
	neighbors = {"default:water_source"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 1,
	min_height = -20,
	max_height = 5,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})


-- Can Right-click Rat to Pick Up

minetest.register_craftitem("mobs:rat", {
	description = "Rat",
	inventory_image = "mobs_rat_inventory.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "mobs:rat")
			itemstack:take_item()
		end
		return itemstack
	end,
})

--Ratburger
--======================================
minetest.register_craftitem("mobs:ratburger", {
	description = "The tastiest burger in town!",
	inventory_image = "mobs_ratburger.png",
	on_use = minetest.item_eat(6),
})
minetest.register_craft({
	type = "shapeless",
	output = "mobs:ratburger",
	recipe = {"mobs:rat_cooked","farming:bread"},
})
	
-- Cooked Rat, yummy!

minetest.register_craftitem("mobs:rat_cooked", {
	description = "Cooked Rat",
	inventory_image = "mobs_cooked_rat.png",
	
	on_use = minetest.item_eat(4),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:rat_cooked",
	recipe = "mobs:rat",
	cooktime = 5,
})

--alias legacy
minetest.register_alias(":rat", "mobs:rat")
minetest.register_alias("rat", "mobs:rat")
minetest.register_alias("default:rat", "mobs:rat")
minetest.register_alias("legacy:rat", "mobs:rat")
minetest.register_alias(":cooked_rat", "mobs:rat_cooked")
minetest.register_alias("cooked_rat", "mobs:rat_cooked")
minetest.register_alias("mobs:cooked_rat", "mobs:rat_cooked")
minetest.register_alias("default:cooked_rat", "mobs:rat_cooked")
minetest.register_alias("legacy:cooked_rat", "mobs:rat_cooked")
