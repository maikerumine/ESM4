--mobs_badplayer v1.4
--maikerumine
--made for Extreme Survival game
--License for code is WTFPL

-------------------------
--BAD NPC'S
-------------------------
mobs:register_mob("mobs_badplayer:badplayer2", {
	type = "monster",
	hp_min = 35,
	hp_max = 75,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_2.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "default:jungletree",
		chance = 1,
		min = 0,
		max = 2,},
		{name = "default:sword_steel",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 0,
			max=3,},

	},
	armor = 100,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
		},
})

mobs:register_mob("mobs_badplayer:badplayer3", {
	type = "monster",
	hp_min = 49,
	hp_max = 83,
	collisionbox = {-0.3, -0.6, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_3.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,}
			},
	visual_size = {x=1.2, y=.7},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 0.1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:stone_with_mese",
		chance = 7,
		min = 0,
		max = 5,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:apple",
			chance = 1,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_howl",
		attack = "default_punch3",
		},
})

mobs:register_mob("mobs_badplayer:badplayer4", {
	type = "monster",
	hp_min = 37,
	hp_max = 82,
	collisionbox = {-0.3, -1.3, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_4.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_steel"].inventory_image,}
			},
	visual_size = {x=1.2, y=1.3},
	makes_footstep_sound = true,
	view_range = 19,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "default:sword_steel",
		chance = 2,
		min =0,
		max = 1,},
		{name = "default:pick_steel",
		chance = 4,
		min = 0,
		max = 1,},
		{name = "default:steel_ingot",
			chance = 2,
			min = 1,
			max=3,},

	},
	armor = 100,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch",
		},
})

mobs:register_mob("mobs_badplayer:badplayer6", {
	type = "monster",
	hp_min = 130,
	hp_max = 140,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_6.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,}
			},
	visual_size = {x=.9, y=.8},
	makes_footstep_sound = true,
	view_range = 20,
	walk_velocity = 3,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:sword_mese",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:gold_ingot",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:apple",
			chance = 2,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch3",
		},
})

mobs:register_mob("mobs_badplayer:badplayer7", {
	type = "monster",
	hp_min = 37,
	hp_max = 70,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_7.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.2,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "default:sword_mese",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:steel_ingot",
		chance = 3,
		min = 0,
		max = 5,},
		{name = "default:apple",
			chance = 1,
			min = 1,
			max=2,},

	},
	armor = 85,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_yeti_death",
		attack = "mobs_oerkki_attack",
		},
})

mobs:register_mob("mobs_badplayer:badplayer8", {
	type = "monster",
	hp_min = 157,
	hp_max = 195,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_8.png",
				"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,}
			},
	visual_size = {x=0.6, y=0.8},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 1.5,
	damage = 3,
	drops = {
		{name = "default:snow",
		chance = 1,
		min = 3,
		max = 33,},
		{name = "default:sword_steel",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:ice",
			chance = 2,
			min = 13,
			max=30,},

	},
	armor = 100,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
		},
})

mobs:register_mob("mobs_badplayer:badplayer9", {
	type = "monster",
	hp_min = 177,
	hp_max = 190,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_9.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_diamond"].inventory_image,}
			},
	visual_size = {x=.9, y=.8},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "default:sword_diamond",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:stone_with_diamond",
		chance = 6,
		min = 0,
		max = 3,},
		{name = "default:apple",
			chance = 1,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch3",
		},
})

mobs:register_mob("mobs_badplayer:badplayer10", {
	type = "monster",
	hp_min = 157,
	hp_max = 200,
	collisionbox = {-0.3, -1.5, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_10.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,}
			},
	visual_size = {x=1.3, y=1.5},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity =15,
	damage = 4,
	drops = {
		{name = "farming:cotton",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_diamond",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:sword_mese",
			chance = 2,
			min = 0,
			max=1,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_fireball",
		attack = "mobs_slash_attack",
		},
})

mobs:register_mob("mobs_badplayer:badplayer11", {
	type = "monster",
	hp_min = 49,
	hp_max = 85,
	collisionbox = {-0.3, -1.3, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_11.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,}
			},
	visual_size = {x=1, y=1.3},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:sapling",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_steel",
		chance = 6,
		min = 0,
		max = 1,},
		{name = "default:dirt",
			chance = 2,
			min = 13,
			max=30,},

	},
	armor = 100,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
		},
})

mobs:register_mob("mobs_badplayer:badplayer12", {
	type = "monster",
	hp_min = 57,
	hp_max = 85,
	collisionbox = {-0.3, -0.5, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_12.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,}
			},
	visual_size = {x=1, y=.5},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 0.3,
	run_velocity = 1.5,
	damage = 3,
	drops = {
		{name = "default:grass_1",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_wood",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:sand",
			chance = 2,
			min = 13,
			max=30,},

	},
	armor = 100,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch3",
		},
})


mobs:register_mob("mobs_badplayer:badplayer16", {
	type = "monster",
	hp_min = 47,
	hp_max = 85,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_16.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_wood"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 1.4,
	damage = 3,
	drops = {
		{name = "default:pick_wood",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:sword_wood",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 1,
			max=5,},

	},
	armor = 90,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch",
		},
})

mobs:register_mob("mobs_badplayer:badplayer18", {
	type = "monster",
	hp_min = 48,
	hp_max = 77,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_18.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_stone"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:pick_stone",
		chance = 1,
		min = 1,
		max = 3,},
		{name = "default:sword_stone",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "default:stone_with_gold",
			chance = 2,
			min = 4,
			max=8,},

	},
	armor = 90,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		},
	sounds = {
		war_cry = "mobs_eerie",
		death = "mobs_yeti_death",
		attack = "default_punch3",
		},
})

mobs:register_mob("mobs_badplayer:badplayer22", {
	type = "monster",
	hp_min = 77,
	hp_max = 90,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_22.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,
	run_velocity = 3,
	damage = 4,
	drops = {
		{name = "default:chest",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:book",
			chance = 4,
			min = 1,
			max=30,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death2",
		attack = "default_punch",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})

mobs:register_mob("mobs_badplayer:badplayer23", {
	type = "monster",
	hp_min = 127,
	hp_max = 152,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_23.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 17,
	walk_velocity = 1.3,
	run_velocity = 3.5,
	damage = 3,
	drops = {
		{name = "default:steelblock",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:bronze_ingot",
			chance = 2,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
		},
})

mobs:register_mob("mobs_badplayer:badplayer24", {
	type = "monster",
	hp_min = 137,
	hp_max = 159,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_24.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:gold_ingot"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 0.5,
	run_velocity = 3,
	damage = 2.5,
	drops = {
		{name = "default:goldblock",
		chance = 6,
		min = 1,
		max = 4,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 0,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	fly = true,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_barbarian_death",
		attack = "default_punch3",
		},
})

mobs:register_mob("mobs_badplayer:badplayer25", {
	type = "monster",
	hp_min = 100,
	hp_max = 120,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_25.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_diamond"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 12,
	walk_velocity = 2,
	run_velocity = 3,
	damage = 5,
	drops = {
		{name = "default:pick_diamond",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:sword_diamond",
		chance = 1,
		min = 0,
		max = 2,},
		{name = "default:apple",
			chance = 2,
			min = 1,
			max=5,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch",
		},
})

mobs:register_mob("mobs_badplayer:badplayer26", {
	type = "monster",
	hp_min = 73,
	hp_max = 80,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_26.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:axe_steel"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:axe_steel",
		chance = 1,
		min = 0,
		max = 2,},
		{name = "farming:seed_cotton",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 1,
			max=3,},

	},
	armor = 90,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
		},
})

mobs:register_mob("mobs_badplayer:badplayer27", {
	type = "monster",
	hp_min = 99,
	hp_max = 140,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_27.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_diamond"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 2,
	run_velocity = 4,
	damage = 6,
	drops = {
		{name = "default:sword_diamond",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 7,},
		{name = "default:stick",
			chance = 1,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_barbarian_death",
		attack = "default_punch3",
		},
})

mobs:register_mob("mobs_badplayer:badplayer28", {
	type = "monster",
	hp_min = 77,
	hp_max = 90,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_28.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 0.5,
	run_velocity = 1.5,
	damage = 3,
	drops = {
		{name = "default:obsidian",
		chance = 2,
		min = 0,
		max = 5,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:apple",
			chance = 2,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch",
		},
})

mobs:register_mob("mobs_badplayer:badplayer29", {
	type = "monster",
	hp_min = 69,
	hp_max = 89,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_29.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_stone"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:sword_stone",
		chance = 1,
		min = 0,
		max = 2,},
		{name = "default:water_flowing",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:apple",
			chance = 2,
			min = 1,
			max=9,},

	},
	armor = 100,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_eerie",
		death = "mobs_yeti_death",
		attack = "default_punch2",
		},
})

mobs:register_mob("mobs_badplayer:badplayer30", {
	type = "monster",
	hp_min = 137,
	hp_max = 150,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_30.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 5,
	walk_velocity = 1,
	run_velocity = 5,
	damage = 4,
	drops = {
		{name = "default:diamondblock",
		chance = 4,
		min = 1,
		max = 3,},
		{name = "default:sword_mese",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:apple",
			chance = 2,
			min = 2,
			max=7,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_howl",
		attack = "default_punch3",
		},
})

mobs:register_mob("mobs_badplayer:badplayer31", {
	type = "monster",
	hp_min = 77,
	hp_max = 130,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_31.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 5,
	walk_velocity = 1,
	run_velocity = 5,
	damage = 4,
	drops = {
		{name = "default:cactus",
		chance = 5,
		min = 0,
		max = 3,},
		{name = "default:sword_mese",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:dirt",
			chance = 2,
			min = 6,
			max=23,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_howl",
		attack = "default_punch3",
		},
})

mobs:register_mob("mobs_badplayer:badplayer35", {
	type = "monster",
	hp_min = 35,
	hp_max = 75,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_43.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_diamond"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.9,
	run_velocity = 3.8,
	damage = 4,
	drops = {
		{name = "default:jungletree",
		chance = 1,
		min = 0,
		max = 2,},
		{name = "default:sword_steel",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 0,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
		},
})

mobs:register_mob("mobs_badplayer:Mr_Black", {
	type = "monster",
	hp_min = 35,
	hp_max = 65,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_33.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_stone"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 2,
		sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch1",
		},
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "default:sword_steel",
		chance = 2,
		min = 0,
		max = 1,},

	},
	armor = 75,
	drawtype = "front",
	water_damage = 70,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	sounds = {
		attack = "default_punch3",
	},
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		--local_chat(clicker:getpos(),"Mr. Black: Grrrrrrrrrrrr!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
			local hp = self.object:get_hp()
			if hp + 4 > self.hp_max then return end
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			self.object:set_hp(hp+4)


		-- right clicking with gold lump drops random item from mobs.npc_drops
		elseif item:get_name() == "default:gold_lump" then
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			local pos = self.object:getpos()
			pos.y = pos.y + 0.5
			minetest.add_item(pos, {name = mobs.npc_drops[math.random(1,#mobs.npc_drops)]})
		else
			if self.owner == "" then
				self.owner = clicker:get_player_name()
			else
				local formspec = "size[8,4]"
				formspec = formspec .. "textlist[2.85,0;2.1,0.5;dialog;What can I do for you?]"
				formspec = formspec .. "button_exit[1,1;2,2;gfollow;follow]"
				formspec = formspec .. "button_exit[5,1;2,2;gstand;stand]"
				formspec = formspec .. "button_exit[0,2;4,4;gfandp;follow and protect]"
				formspec = formspec .. "button_exit[4,2;4,4;gsandp;stand and protect]"
				--formspec = formspec .. "button_exit[1,2;2,2;ggohome; go home]"
				--formspec = formspec .. "button_exit[5,2;2,2;gsethome; sethome]"
				minetest.show_formspec(clicker:get_player_name(), "order", formspec)
				minetest.register_on_player_receive_fields(function(clicker, formname, fields)
					if fields.gfollow then
						self.order = "follow"
						self.attacks_monsters = false
					end
					if fields.gstand then
						self.order = "stand"
						self.attacks_monsters = false
					end
					if fields.gfandp then
						self.order = "follow"
						self.attacks_monsters = true
					end
					if fields.gsandp then
						self.order = "stand"
						self.attacks_monsters = true
					end
					if fields.gsethome then
						self.floats = self.object:getpos()
					end
					if fields.ggohome then
						if self.floats then
							self.order = "stand"
							self.object:setpos(self.floats)
						end
					end
				end)

			end
		end
	end,

	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	--step = 1,
})

mobs:register_mob("mobs_badplayer:Jasmine", {
	type = "monster",
	hp_min = 277,
	hp_max = 290,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_42.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:axe_steel"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 18,
	walk_velocity = 5,
	run_velocity = 3.4,
	damage = 7,
	drops = {
		{name = "default:diamond",
		chance = 5,
		min = 0,
		max = 2,},
		{name = "es:sword_emerald",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "flowers:rose",
			chance = 6,
			min = 0,
			max=1,},

	},
	armor = 75,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 70,
	fear_height = 4,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		--local_chat(clicker:getpos(),"Jasmine: Tame me now, come to me later, we will chat after I have cooled off.",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
			local hp = self.object:get_hp()
			if hp + 4 > self.hp_max then return end
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			self.object:set_hp(hp+4)


		-- right clicking with gold lump drops random item from mobs.npc_drops
		elseif item:get_name() == "default:gold_lump" then
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			local pos = self.object:getpos()
			pos.y = pos.y + 0.5
			minetest.add_item(pos, {name = mobs.npc_drops[math.random(1,#mobs.npc2_drops)]})
		else
			if self.owner == "" then
				self.owner = clicker:get_player_name()
			else
				local formspec = "size[8,4]"
				formspec = formspec .. "textlist[2.85,0;2.1,0.5;dialog;What can I do for you?]"
				formspec = formspec .. "button_exit[1,1;2,2;gfollow;follow]"
				formspec = formspec .. "button_exit[5,1;2,2;gstand;stand]"
				formspec = formspec .. "button_exit[0,2;4,4;gfandp;follow and protect]"
				formspec = formspec .. "button_exit[4,2;4,4;gsandp;stand and protect]"
				--formspec = formspec .. "button_exit[1,2;2,2;ggohome; go home]"
				--formspec = formspec .. "button_exit[5,2;2,2;gsethome; sethome]"
				minetest.show_formspec(clicker:get_player_name(), "order", formspec)
				minetest.register_on_player_receive_fields(function(clicker, formname, fields)
					if fields.gfollow then
						self.order = "follow"
						self.attacks_monsters = false
					end
					if fields.gstand then
						self.order = "stand"
						self.attacks_monsters = false
					end
					if fields.gfandp then
						self.order = "follow"
						self.attacks_monsters = true
					end
					if fields.gsandp then
						self.order = "stand"
						self.attacks_monsters = true
					end
					if fields.gsethome then
						self.floats = self.object:getpos()
					end
					if fields.ggohome then
						if self.floats then
							self.order = "stand"
							self.object:setpos(self.floats)
						end
					end
				end)

			end
		end
	end,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_howl",
		attack = "default_punch3",
		},
})


mobs:register_mob("mobs_badplayer:Infinium_Monster", {
	type = "monster",
	hp_min = 377,
	hp_max = 390,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{"badplayer_32.png",
			"3d_armor_trans.png",
				--minetest.registered_items["default:sword_mese"].inventory_image,
				minetest.registered_items["fire:basic_flame"].inventory_image,}
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 1,
	run_velocity = 4,
	--floats=1,
	fly = true,
	stepheight = 3,
	fall_speed = 3,
	damage = 5,
	drops = {
		{name = "default:obsidian",
		chance = 5,
		min = 3,
		max = 10,},
		{name = "default:sword_diamond",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:lava_source",
		chance = 2,
		min = 1,
		max=2,},
		{name = "es:infiniumblock",
		chance = 4,
		min = 1,
		max=2,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fear_height = 50,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_howl",
		attack = "default_punch3",
		},
})


--REFERENCE
--function mobs:spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
--mobs:register_spawn("mobs:dirt_monster", {"default:dirt_with_grass", "ethereal:gray_dirt"}, 7, 0, 7000, 2, 31000)

--NOTE: ALWAYS PUT THE REGISTER_SPAWN BELOW THE REGISTER_ENTITY!!!!!
mobs:register_spawn("mobs_badplayer:badplayer2", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer3", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer4", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer6", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer7", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer8", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer9", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer10", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer11", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer12", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer16", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer18", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer22", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer23", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer24", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer25", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer26", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer27", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer28", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer29", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer30", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer31", {"default:dirt_with_grass","default:stone","meru:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:badplayer35", {"default:sandstone","default:stone", "default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, -20)
mobs:register_spawn("mobs_badplayer:Mr_Black", {"default:dirt_with_grass","default:desert_sand","default:sand","default:stonebrick","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 4, -1, 18000, 1, 3000)
mobs:register_spawn("mobs_badplayer:Jasmine", {"default:obsidian","es:infiniumblock","es:stone_with_infinium","default:cobble","default:dirt_with_dry_grass","es:strange_grass","es:aiden_grass"}, 7, -1, 18000, 1, -1000)
mobs:register_spawn("mobs_badplayer:Infinium_Monster", {"default:obsidian","default:lava_source","default:lava_flowing","es:stone_with_infinium"}, 12, -1, 18000, 3, 10)

--spawn eggs
mobs:register_egg("mobs_badplayer:badplayer2", "BP Angry Sam", "badplayer_2.png", 1)
mobs:register_egg("mobs_badplayer:badplayer3", "BP Alien", "badplayer_3.png", 1)
mobs:register_egg("mobs_badplayer:badplayer4", "BP Army Guy", "badplayer_4.png", 1)
mobs:register_egg("mobs_badplayer:badplayer6", "BP Ninja", "badplayer_6.png", 1)
mobs:register_egg("mobs_badplayer:badplayer7", "BP Oerkki", "badplayer_7.png", 1)
mobs:register_egg("mobs_badplayer:badplayer8", "BP Tux", "badplayer_8.png", 1)
mobs:register_egg("mobs_badplayer:badplayer9", "BP Karate Kid", "badplayer_9.png", 1)
mobs:register_egg("mobs_badplayer:badplayer10", "BP Ruthless Attacker", "badplayer_10.png", 1)
mobs:register_egg("mobs_badplayer:badplayer11", "BP Nerd", "badplayer_11.png", 1)
mobs:register_egg("mobs_badplayer:badplayer12", "BP Bob", "badplayer_12.png", 1)
mobs:register_egg("mobs_badplayer:badplayer16", "BP Zombie Sam", "badplayer_16.png", 1)
mobs:register_egg("mobs_badplayer:badplayer18", "BP Unknown Mob", "badplayer_18.png", 1)
mobs:register_egg("mobs_badplayer:badplayer22", "BP Plain Sam", "badplayer_22.png", 1)
mobs:register_egg("mobs_badplayer:badplayer23", "BP Celeron C-55", "badplayer_23.png", 1)
mobs:register_egg("mobs_badplayer:badplayer24", "BP Tux Sam", "badplayer_24.png", 1)
mobs:register_egg("mobs_badplayer:badplayer25", "BP Iron Man", "badplayer_25.png", 1)
mobs:register_egg("mobs_badplayer:badplayer26", "BP Phillip", "badplayer_26.png", 1)
mobs:register_egg("mobs_badplayer:badplayer27", "BP Zack", "badplayer_27.png", 1)
mobs:register_egg("mobs_badplayer:badplayer28", "BP Slenderman", "badplayer_28.png", 1)
mobs:register_egg("mobs_badplayer:badplayer29", "BP Snow Beast", "badplayer_29.png", 1)
mobs:register_egg("mobs_badplayer:badplayer30", "BP Jojoa", "badplayer_30.png", 1)
mobs:register_egg("mobs_badplayer:badplayer31", "BP Cactus man", "badplayer_31.png", 1)
mobs:register_egg("mobs_badplayer:badplayer35", "BP Cactus man ", "badplayer_21.png", 1)
mobs:register_egg("mobs_badplayer:Mr_Black", "BP Mr. Black", "badplayer_33.png", 1)
mobs:register_egg("mobs_badplayer:Jasmine", "BP Jasmine", "badplayer_42.png", 1)
mobs:register_egg("mobs_badplayer:Infinium_Monster", "BP Infinium Mons", "badplayer_32.png", 1)
