
--Andrey created mob for his world needs
--Maikerumine added badplayer for his world needs

--BLACK
mobs:register_mob("mobs:stone_monster_black", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_black.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_black",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_black",
	nodes = {"cblocks:stone_black", "cblocks:cobble_black", "cblocks:stonebrick_black"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--BLUE
mobs:register_mob("mobs:stone_monster_blue", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_blue.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_blue",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_blue",
	nodes = {"cblocks:stone_blue", "cblocks:cobble_blue", "cblocks:stonebrick_blue"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--BROWN
mobs:register_mob("mobs:stone_monster_brown", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_brown.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_brown",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_brown",
	nodes = {"cblocks:stone_brown", "cblocks:cobble_brown", "cblocks:stonebrick_brown"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--CYAN
mobs:register_mob("mobs:stone_monster_cyan", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_cyan.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_cyan",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_cyan",
	nodes = {"cblocks:stone_cyan", "cblocks:cobble_cyan", "cblocks:stonebrick_cyan"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--DARK_GREEN
mobs:register_mob("mobs:stone_monster_dark_green", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_dark_green.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_dark_green",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_dark_green",
	nodes = {"cblocks:stone_dark_green", "cblocks:cobble_dark_green", "cblocks:stonebrick_dark_green"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--GREEN
mobs:register_mob("mobs:stone_monster_green", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_green.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_green",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_green",
	nodes = {"cblocks:stone_green", "cblocks:cobble_green", "cblocks:stonebrick_green"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--MAGENTA
mobs:register_mob("mobs:stone_monster_magenta", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_magenta.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_magenta",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_magenta",
	nodes = {"cblocks:stone_magenta", "cblocks:cobble_magenta", "cblocks:stonebrick_magenta"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--ORANGE
mobs:register_mob("mobs:stone_monster_orange", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_orange.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_orange",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_orange",
	nodes = {"cblocks:stone_orange", "cblocks:cobble_orange", "cblocks:stonebrick_orange"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--PINK
mobs:register_mob("mobs:stone_monster_pink", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_pink.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_pink",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_pink",
	nodes = {"cblocks:stone_pink", "cblocks:cobble_pink", "cblocks:stonebrick_pink"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--RED
mobs:register_mob("mobs:stone_monster_red", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_red.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_red",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_red",
	nodes = {"cblocks:stone_red", "cblocks:cobble_red", "cblocks:stonebrick_red"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--VIOLET
mobs:register_mob("mobs:stone_monster_violet", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_violet.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_violet",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_violet",
	nodes = {"cblocks:stone_violet", "cblocks:cobble_violet", "cblocks:stonebrick_violet"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--WHITE
mobs:register_mob("mobs:stone_monster_white", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_white.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_white",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_white",
	nodes = {"cblocks:stone_white", "cblocks:cobble_white", "cblocks:stonebrick_white"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--YELLOW
mobs:register_mob("mobs:stone_monster_yellow", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_yellow.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_yellow",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_yellow",
	nodes = {"cblocks:stone_yellow", "cblocks:cobble_yellow", "cblocks:stonebrick_yellow"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = 2,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--=========================
--DUNGEON
--BLACK
mobs:register_mob("mobs:stone_monster_black2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_black.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_black",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_black2",
	nodes = {"cblocks:cobble_black", "cblocks:stonebrick_black"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--BLUE
mobs:register_mob("mobs:stone_monster_blue2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_blue.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_blue",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_blue2",
	nodes = {"cblocks:cobble_blue", "cblocks:stonebrick_blue"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--BROWN
mobs:register_mob("mobs:stone_monster_brown2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_brown.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_brown",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_brown2",
	nodes = {"cblocks:cobble_brown", "cblocks:stonebrick_brown"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--CYAN
mobs:register_mob("mobs:stone_monster_cyan2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_cyan.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_cyan",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_cyan2",
	nodes = {"cblocks:cobble_cyan", "cblocks:stonebrick_cyan"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--DARK_GREEN
mobs:register_mob("mobs:stone_monster_dark_green2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_dark_green.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_dark_green",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_dark_green2",
	nodes = {"cblocks:cobble_dark_green", "cblocks:stonebrick_dark_green"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--GREEN
mobs:register_mob("mobs:stone_monster_green2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_green.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_green",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_green2",
	nodes = {"cblocks:cobble_green", "cblocks:stonebrick_green"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--MAGENTA
mobs:register_mob("mobs:stone_monster_magenta2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_magenta.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_magenta",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_magenta2",
	nodes = {"cblocks:cobble_magenta", "cblocks:stonebrick_magenta"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--ORANGE
mobs:register_mob("mobs:stone_monster_orange2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_orange.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_orange",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_orange2",
	nodes = {"cblocks:cobble_orange", "cblocks:stonebrick_orange"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--PINK
mobs:register_mob("mobs:stone_monster_pink2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_pink.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_pink",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_pink2",
	nodes = {"cblocks:cobble_pink", "cblocks:stonebrick_pink"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--RED
mobs:register_mob("mobs:stone_monster_red2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_red.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_red",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_red2",
	nodes = {"cblocks:cobble_red", "cblocks:stonebrick_red"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--VIOLET
mobs:register_mob("mobs:stone_monster_violet2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_violet.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_violet",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_violet2",
	nodes = {"cblocks:cobble_violet", "cblocks:stonebrick_violet"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--WHITE
mobs:register_mob("mobs:stone_monster_white2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_white.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_white",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_white2",
	nodes = {"cblocks:cobble_white", "cblocks:stonebrick_white"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--YELLOW
mobs:register_mob("mobs:stone_monster_yellow2", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster_yellow.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3.5,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "cblocks:stone_yellow",
		chance = 9,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		random = "rocks",
		attack = "rocks",
		war_cry = "grr",
		damage = "rocks",
		jump = "rocks",
		death = "grr",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 30,
	floats = 0,
})

mobs:spawn({
	name = "mobs:stone_monster_yellow2",
	nodes = {"cblocks:cobble_yellow", "cblocks:stonebrick_yellow"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 5000,
	active_object_count = 12,
	min_height = -200,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})


--[[
if minetest.setting_get("log_mods") then
	minetest.log("action", "stonemonster_color mobs loaded")
end
]]