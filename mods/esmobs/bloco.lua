
--bp:spawn_specific("esmobs:bloco", {"default:stone"}, {"default:stone"}, 0, 20, 30, 12000, 3, -31000, -20)

--BLOCO from Not so simple mobs: https://forum.minetest.net/viewtopic.php?f=11&t=11813
--Created by:   NPX team
--License:
-- Code: GPL v3
-- Textures, models and sounds: CC BY-SA

bp:spawn_specific("esmobs:bloco", {"default:stone"}, {"default:stone"}, 0, 20, 30, 12000, 3, -31000, -20)
bp:register_mob("esmobs:bloco", {
	type = "monster",
	hp_max = 15,
	hp_min = 14,
	collisionbox = {-0.56, -0.2, -0.56, 0.56, 1.2, 0.56},
	visual = "mesh",
	mesh = "bloco.x",
	textures = {{"bloco.png"}},
	visual_size = {x=4, y=4},
	makes_footstep_sound = true,
	view_range = 8,
	walk_velocity = 1,
	run_velocity = 2.5,
    rotate = 270,
    sounds = {
		random = "bloco",
	},
	damage = 2,
	jump = true,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:stone",
		chance = 1,
		min = 2,
		max = 3,},
	},
	armor = 60,
	drawtype = "front",
	water_damage = 3,
	lava_damage = 1,
	light_damage = 1,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 20,
		speed_run = 20,
		stand_start = 90,
		stand_end = 110,
		walk_start = 1,
		walk_end = 80,
		run_start = 120,
		run_end = 160,
		punch_start = 170,
		punch_end = 190,
	}
})


--bp:spawn_specific("esmobs:blocod", {"default:dirt"}, {"default:dirt_with_grass"}, 3, 20, 30, 15000, 3, -31000, 20)

bp:spawn_specific("esmobs:blocod", {"default:dirt"}, {"default:dirt_with_grass"}, 3, 20, 30, 15000, 3, -31000, 20)

bp:register_mob("esmobs:blocod", {
	type = "monster",
	hp_max = 15,
	hp_min = 14,
	collisionbox = {-0.56, -0.2, -0.56, 0.56, 1.2, 0.56},
	visual = "mesh",
	mesh = "bloco.x",
	textures = {{"blocograss.png"}},
	visual_size = {x=4, y=4},
	makes_footstep_sound = true,
	view_range = 8,
	walk_velocity = 1,
	run_velocity = 2.5,
    rotate = 270,
    sounds = {
		random = "bloco",
	},
	damage = 2,
	jump = true,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:dirt_with_grass",
		chance = 1,
		min = 2,
		max = 3,},
	},
	armor = 60,
	drawtype = "front",
	water_damage = 3,
	lava_damage = 1,
	light_damage = 1,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 20,
		speed_run = 20,
		stand_start = 90,
		stand_end = 110,
		walk_start = 1,
		walk_end = 80,
		run_start = 120,
		run_end = 160,
		punch_start = 170,
		punch_end = 190,
	}
})



