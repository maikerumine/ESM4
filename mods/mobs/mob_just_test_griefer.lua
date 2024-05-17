	
-------------------------
--BAD NPC
-------------------------
--Garry
mobs:register_mob("mobs:Garry", {
	nametag = "Garry",
	type = "monster",
	docile_by_day = false,
	passive = false,
	attack_type = "dogfight",
	attack_monsters = false,
	attack_chance = 100,	--'attack_specific' has a table of entity names that monsters can attack {"player", "mobs_animal:chicken"}
	--pathfinding = 2,
	pathfinding = 1,
	reach = 2,
	hp_min = 4,
	hp_max = 8,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {
		{
		"garry.png",
		"3d_armor_trans.png",
		minetest.registered_items["mobs:axe_steel"].inventory_image,
		}
	},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 30,
	walk_velocity = 2.5,
	run_velocity = 3,
	damage = 4,
	drops = {
		{name = "default:coal_lump",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "es:griefer_soul",
		chance = 5,
		min = 0,
		max = 1,},	
	},
	light_resistant = true,
	armor = 60,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
	--lifetimer=300,
	group_attack = true,
	fear_height = 3,
	sounds = {
		random = "mobs_mc_zombie_growl",
		war_cry = "mobs_swing",
		death = "mobs_mc_zombie_death",
		damage = "mobs_mc_zombie_hurt",
		distance = 16,
	},

	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	
	on_die = function(self, pos)
		minetest.sound_play({ pos = pos, name = "mobs_spell", gain = 10, max_hear_distance = 500 })
		minetest.sound_play({ pos = pos, name = "lightning_thunder", gain = 10, max_hear_distance = 500 })
		garryghost = minetest.add_entity(self.object:getpos(), "mobs:stone_monster")
		garryghost = minetest.add_entity(self.object:getpos(), "mobs:stone_monster")
		garryghost = minetest.add_entity(self.object:getpos(), "mobs:stone_monster")
		garryghost = minetest.add_entity(self.object:getpos(), "mobs:stone_monster")
		ent = garryghost:get_luaentity()
		
		minetest.add_particlespawner({
			amount = 1920,
			time = 3.25,
			minpos = pos,
			maxpos = pos,
			minvel = {x = -2, y = -0.25, z = -2},
			maxvel = {x = 2, y = 2, z = 2},
			minacc = {x = 0, y = 1, z = 0},
			maxacc = {x = 2, y = 10, z = 2},
			minexptime = 0.1,
			maxexptime = 3,
			minsize = 1.5,
			maxsize = 3.0,
			texture = "mobs_flat_fireball.png",
		})		
	end,	
})

--mobs:spawn_specfic(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height, day_toggle, on_spawn)

mobs:spawn({
	name = "mobs:Garry",
	nodes = {"default:mossycobble", "default:mossycobblestone", "hades_core:mossystone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 13000,
	active_object_count = 1,
	min_height = -15000,
	max_height = 2000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})






mobs:register_mob("mobs:Griefer_Garry", {
	nametag = "Griefer_Garry",
	type = "monster",
	docile_by_day = true,
	passive = false,
	attack_type = "dogfight",
	attack_monsters = false,
	attack_chance = 100,
	pathfinding = 2,
	reach = 2,
	hp_min = 25,
	hp_max = 40,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {
		{"character_1.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_2.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_3.png",  "3d_armor_trans.png", minetest.registered_items["default:dirt"].inventory_image,},
		{"character_4.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_5.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_6.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_7.png",  "3d_armor_trans.png", minetest.registered_items["mobs:sword_steel"].inventory_image,},
		{"character_8.png",  "3d_armor_trans.png", minetest.registered_items["default:shovel_wood"].inventory_image,},
		{"character_9.png",  "3d_armor_trans.png", minetest.registered_items["mobs:pick_steel"].inventory_image,},
		{"character_10.png",  "3d_armor_trans.png", minetest.registered_items["mobs:shovel_steel"].inventory_image,},
		{"character_11.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_12.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_13.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_14.png",  "3d_armor_trans.png", minetest.registered_items["default:sword_stone"].inventory_image,},
		{"character_15.png",  "3d_armor_trans.png", minetest.registered_items["mobs:sword_steel"].inventory_image,},
		{"character_16.png",  "3d_armor_trans.png", minetest.registered_items["mobs:sword_steel"].inventory_image,},
		{"character_17.png",  "3d_armor_trans.png", minetest.registered_items["mobs:sword_steel"].inventory_image,},
		{"character_18.png",  "3d_armor_trans.png", minetest.registered_items["mobs:sword_steel"].inventory_image,},
		{"character_19.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_20.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_21.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_22.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_23.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_24.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_25.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_26.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_27.png",  "3d_armor_trans.png", minetest.registered_items["mobs:pick_steel"].inventory_image,},
		{"character_28.png",  "3d_armor_trans.png", minetest.registered_items["mobs:pick_steel"].inventory_image,},
		{"character_29.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_30.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
		{"character_31.png",  "3d_armor_trans.png", minetest.registered_items["mobs:axe_steel"].inventory_image,},
	},	
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 30,
	walk_velocity = 2.5,
	run_velocity = 3,
	damage = 4,
	drops = {
		{name = "es:griefer_soul",
		chance = 3,
		min = 1,
		max = 1,},
		{name = "default:mese",
		chance = 27,
		min = 1,
		max = 1,},	
		{name = "flowers:flower_dandelion_yellow",
		chance = 27,
		min = 0,
		max = 1,},
		{name = "flowers:flower_geranium",
		chance = 27,
		min = 0,
		max = 1,},
		{name = "flowers:flower_viola",
		chance = 27,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_white",
		chance = 27,
		min = 0,
		max = 1,},	
	},

	light_resistant = true,
	armor = 60,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
	group_attack = true,
	fear_height = 3,
	sounds = {
		random = "mobs_mc_zombie_growl",
		war_cry = "mobs_swing",
		death = "mobs_mc_zombie_death",
		damage = "mobs_mc_zombie_hurt",
		distance = 16,
	},

	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 170,
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},	
	on_die = function(self, pos)
	--[[
		minetest.set_node({x = pos.x, y = pos.y - 1, z = pos.z}, {name = "fire:basic_flame"})
		minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, {name = "fire:basic_flame"})
		minetest.set_node({x = pos.x - 1, y = pos.y - 1, z = pos.z}, {name = "fire:basic_flame"})
		minetest.set_node({x = pos.x + 1, y = pos.y - 1, z = pos.z}, {name = "fire:basic_flame"})
		minetest.set_node({x = pos.x, y = pos.y - 1, z = pos.z - 1}, {name = "fire:basic_flame"})
		minetest.set_node({x = pos.x, y = pos.y - 1, z = pos.z + 1}, {name = "fire:basic_flame"})]]

		minetest.sound_play({ pos = pos, name = "mobs_spell", gain = 10, max_hear_distance = 500 })
		minetest.sound_play({ pos = pos, name = "lightning_thunder", gain = 10, max_hear_distance = 500 })
		
		garryghost = minetest.add_entity(self.object:getpos(), "mobs:Griefer_Garry_Ghost")
		garryghost = minetest.add_entity(self.object:getpos(), "mobs:GrIefer_Garry_Ghost")
		garryghost = minetest.add_entity(self.object:getpos(), "mobs:Griffer_Garry_Ghost")
		garryghost = minetest.add_entity(self.object:getpos(), "mobs:Griefer_Gary_Ghost")
		ent = garryghost:get_luaentity()
	
		minetest.add_particlespawner({
			amount = 120,
			time = 2.25,
			minpos = pos,
			maxpos = pos,
			minvel = {x = -2, y = -0.25, z = -2},
			maxvel = {x = 2, y = 2, z = 2},
			minacc = {x = 0, y = 1, z = 0},
			maxacc = {x = 2, y = 10, z = 2},
			minexptime = 0.1,
			maxexptime = 3,
			minsize = 0.5,
			maxsize = 1.0,
			texture = "mobs_blood.png",
		})	
	end,
})
--mobs:spawn_specfic(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height, day_toggle, on_spawn)
mobs:spawn_specific("mobs:Griefer_Garry",{ "group:cracky"}, {"air"},
	0, 6, 35, 23000, 1, -25000, -55)
	
	
mobs:register_mob("mobs:Griefer_Garry_Ghost", {
	nametag = "Griefer_Garry_Ghost",
	type = "monster",
	docile_by_day = false,
	passive = false,
	attack_type = "dogfight",
	pathfinding = 1,
	reach = 2,
	hp_min = 25,
	hp_max = 40,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {
		{
		"character_32_ghost.png^[makealpha:255,255,255",
		"3d_armor_trans.png",
		minetest.registered_items["mobs:sword_steel"].inventory_image,
		}
	},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 2.5,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "es:griefer_soul",
		chance = 7,
		min = 0,
		max = 1,},
		
		{name = "default:sword_steel",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_yellow",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_geranium",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_viola",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_white",
		chance = 7,
		min = 0,
		max = 1,},
	},

	light_resistant = true,
	armor = 60,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
	group_attack = true,
	fear_height = 30,
	floats = 1,
	fly = true,
	fly_in = "air",
	keep_flying = false,
	sounds = {
		random = "mobs_mc_zombie_growl",
		war_cry = "mobs_eerie",
		death = "mobs_mc_zombie_death",
		damage = "mobs_mc_zombie_hurt",
		distance = 16,
	},

	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 170,
		die_speed = 15,
		die_loop = false,
	},

	on_die = function(self, pos)
--		minetest.set_node(pos, {name = "fire:basic_flame"})

		minetest.add_particlespawner({
			amount = 20,
			time = 0.25,
			minpos = pos,
			maxpos = pos,
			minvel = {x = -2, y = -2, z = -2},
			maxvel = {x = 2, y = 2, z = 2},
			minacc = {x = 0, y = -10, z = 0},
			maxacc = {x = 0, y = -10, z = 0},
			minexptime = 0.1,
			maxexptime = 1,
			minsize = 0.5,
			maxsize = 1.0,
			texture = "fire_basic_flame.png",
		})	
	end,
})
--mobs:spawn_specfic(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height, day_toggle, on_spawn)
mobs:spawn_specific("mobs:Griefer_Garry_Ghost",{ "group:crumbly"}, {"air"},
	0, 6, 35, 13000, 1, -500, -1200)	

mobs:register_mob("mobs:GrIefer_Garry_Ghost", {
	nametag = "GrIefer_Garry_Ghost",
	type = "monster",
	docile_by_day = false,
	passive = false,
	attack_type = "dogfight",
	specific_attack =  {"player","mobs:griefer_ghost"},
	pathfinding = 1,
	reach = 2,
	hp_min = 25,
	hp_max = 40,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {
		{
		"character_32_ghost.png^[makealpha:255,255,255",
		"3d_armor_trans.png",
		minetest.registered_items["mobs:axe_steel"].inventory_image,
		}
	},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 2.5,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "es:griefer_soul",
		chance = 7,
		min = 0,
		max = 1,},
		
		{name = "default:axe_steel",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_yellow",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_geranium",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_viola",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_white",
		chance = 7,
		min = 0,
		max = 1,},
	},
	light_resistant = true,
	armor = 60,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
	group_attack = true,
	fear_height = 30,
	fly = true,
	fly_in = "air",
	keep_flying = false,
	sounds = {
		random = "mobs_mc_zombie_growl",
		war_cry = "mobs_eerie",
		death = "mobs_mc_zombie_death",
		damage = "mobs_mc_zombie_hurt",
		distance = 16,
	},
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 170,
		die_speed = 15,
		die_loop = false,
	},
	on_die = function(self, pos)
	--	minetest.set_node(pos, {name = "fire:basic_flame"})

		minetest.add_particlespawner({
			amount = 20,
			time = 0.25,
			minpos = pos,
			maxpos = pos,
			minvel = {x = -2, y = -2, z = -2},
			maxvel = {x = 2, y = 2, z = 2},
			minacc = {x = 0, y = -10, z = 0},
			maxacc = {x = 0, y = -10, z = 0},
			minexptime = 0.1,
			maxexptime = 1,
			minsize = 0.5,
			maxsize = 1.0,
			texture = "fire_basic_flame.png",
		})
	end,
})
--mobs:spawn_specfic(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height, day_toggle, on_spawn)
mobs:spawn_specific("mobs:GrIefer_Garry_Ghost",{ "group:crumbly"}, {"air"},
	0, 6, 35, 13000, 1, -500, -1200)	


mobs:register_mob("mobs:Griffer_Garry_Ghost", {
	nametag = "Griffer_Garry_Ghost",
	type = "monster",
	docile_by_day = false,
	passive = false,
	attack_type = "dogfight",
	specific_attack =  {"player","mobs:griefer_ghost"},
	pathfinding = 1,
	reach = 2,
	hp_min = 25,
	hp_max = 40,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {
		{
		"character_32_ghost.png^[makealpha:255,255,255",
		"3d_armor_trans.png",
		minetest.registered_items["mobs:shovel_steel"].inventory_image,
		}
	},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 2.5,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "es:griefer_soul",
		chance = 7,
		min = 0,
		max = 1,},
		
		{name = "default:shovel_steel",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_yellow",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_geranium",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_viola",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_white",
		chance = 7,
		min = 0,
		max = 1,},
	},
	light_resistant = true,
	armor = 60,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
	lifetimer=300,
	group_attack = true,
	fear_height = 3,
	fly = true,
	fly_in = "air",
	keep_flying = false,
	sounds = {
		random = "mobs_mc_zombie_growl",
		war_cry = "mobs_eerie",
		death = "mobs_mc_zombie_death",
		damage = "mobs_mc_zombie_hurt",
		distance = 16,
	},
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 170,
		die_speed = 15,
		die_loop = false,
	},
	on_die = function(self, pos)
--		minetest.set_node(pos, {name = "fire:basic_flame"})
		minetest.add_particlespawner({
			amount = 20,
			time = 0.25,
			minpos = pos,
			maxpos = pos,
			minvel = {x = -2, y = -2, z = -2},
			maxvel = {x = 2, y = 2, z = 2},
			minacc = {x = 0, y = -10, z = 0},
			maxacc = {x = 0, y = -10, z = 0},
			minexptime = 0.1,
			maxexptime = 1,
			minsize = 0.5,
			maxsize = 1.0,
			texture = "fire_basic_flame.png",
		})
	end,
})
--mobs:spawn_specfic(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height, day_toggle, on_spawn)
mobs:spawn_specific("mobs:Griffer_Garry_Ghost",{ "group:crumbly"}, {"air"},
	0, 6, 35, 13000, 1, -500, -1200)	


mobs:register_mob("mobs:Griefer_Gary_Ghost", {
	nametag = "Griefer_Gary_Ghost",
	type = "monster",
	docile_by_day = false,
	passive = false,
	attack_type = "dogfight",
	specific_attack =  {"player","mobs:griefer_ghost"},
	pathfinding = 1,
	reach = 2,
	hp_min = 25,
	hp_max = 40,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {
		{
		"character_32_ghost.png^[makealpha:255,255,255",
		"3d_armor_trans.png",
		minetest.registered_items["mobs:sword_steel"].inventory_image,
		}
	},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 2.5,
	run_velocity = 3.4,
	damage = 2,
	drops = {
		{name = "es:griefer_soul",
		chance = 7,
		min = 0,
		max = 1,},
		
		{name = "default:sword_steel",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_yellow",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_geranium",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_viola",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_white",
		chance = 7,
		min = 0,
		max = 1,},
	},
	light_resistant = true,
	armor = 60,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 10,
	attack_type = "dogfight",
	lifetimer=300,
	group_attack = true,
	fear_height = 30,
	fly = true,
	fly_in = "air",
	keep_flying = false,
	sounds = {
		random = "mobs_mc_zombie_growl",
		war_cry = "mobs_eerie",
		death = "mobs_mc_zombie_death",
		damage = "mobs_mc_zombie_hurt",
		distance = 16,
	},
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 170,
		die_speed = 15,
		die_loop = false,
	},
	on_die = function(self, pos)
--		minetest.set_node(pos, {name = "fire:basic_flame"})

		minetest.add_particlespawner({
			amount = 20,
			time = 0.25,
			minpos = pos,
			maxpos = pos,
			minvel = {x = -2, y = -2, z = -2},
			maxvel = {x = 2, y = 2, z = 2},
			minacc = {x = 0, y = -10, z = 0},
			maxacc = {x = 0, y = -10, z = 0},
			minexptime = 0.1,
			maxexptime = 1,
			minsize = 0.5,
			maxsize = 1.0,
			texture = "fire_basic_flame.png",
		})
	end,
})
--mobs:spawn_specfic(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height, day_toggle, on_spawn)
mobs:spawn_specific("mobs:Griefer_Gary_Ghost",{ "group:crumbly"}, {"air"},
	0, 6, 35, 13000, 1, -500, -1200)	

--mobs:alias_mob("mobs:griefer_ghost", "mobs:Griefer_Gary_Ghost") -- compatibility
mobs:register_spawn("mobs:Garry", "es:griefer_soul_block", 4, -1, 2, 2, -20, 20)
