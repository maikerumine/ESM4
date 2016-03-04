--esmobs v0.1.8
--maikerumine
--made for Extreme Survival game
--License for code is WTFPL

--REFERENCE
--nssm:spawn_specific("nssm:phoenix", {"air"}, {"air"}, 10, 20, 120, 1200000, 1, 10, 40)
--function mobs:spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)

--mobs:register_spawn_near("mobs:griefer_ghost", "default:stone", 4, -1, 2)
--mobs:register_spawn("mobs:stone_monster", "default:stone", 3, -1, 9000, 48, 500, 0)

mobs:register_spawn("esmobs:dungeon_master", "default:stone", 2, -1, 7000, 2, -70,-6000)
mobs:register_spawn("esmobs:tree_monster", "default:jungleleaves", 5, 0, 14000, 1, 31000,-6000)
mobs:register_spawn("esmobs:sand_monster", "group:sand",4, -1, 14000, 1, 31000,-6000)
mobs:register_spawn("esmobs:stone_monster", "default:stone", 5, -1, 9000, 10, 500,-6000)
mobs:register_spawn("esmobs:oerkki", "default:stone", 4, -1, 2000, 3, -50,-6000)
mobs:register_spawn("esmobs:dirt", "default:dirt_with_grass", 5, -1, 11000, 2, 500,-600)
mobs:register_spawn("esmobs:spider", "group:choppy", 6, -1, 24000, 1, 71,-6000)
mobs:register_spawn("esmobs:applmons", "default:stone", 6, -1, 4000, 5, -30,-10000)
mobs:register_spawn("esmobs:herobrines_bloody_ghost", "default:stone", 4, -1, 22000, 1, -6110,-10000)
mobs:register_spawn("esmobs:bone_monster","default:stone",6, -1, 17000, 3, 130,-6000)
mobs:register_spawn("esmobs:icemon", "default:ice", 5, -1, 14000, 1, 3100,-60)
mobs:register_spawn("esmobs:snowmon", "default:snow", 5, -1, 14000, 12, 31000,-10)
--mobs:register_spawn("esmobs:watermon", {"default:water_source","default:water_flowing"}, 5, -1, 14000, 5, -120,-6000)
mobs:register_spawn("esmobs:dirt2", "default:stone", 5, -1, 14000, 2, -100,-6000)
mobs:register_spawn("esmobs:stone_monster2", "default:stone", 5, -1, 14000, 3, -500,-6000)
mobs:register_spawn("esmobs:chickoboo", "default:dirt_with_dry_grass", 15, 10, 12000, 1, 31000,0)
--mobs:spawn_specific("esmobs:phoenix", {"air"},{"air"}, 2, -1, 30, 18000, 1, 5, 40)
--mobs:register_spawn("esmobs:paniki", "air", 3, -1, 30, 8000, 1, 5, 40)
--mobs:spawn_specific("esmobs:bomber", {"air"},{"air"}, 0, 6, 30, 25000, 1, 90, 20)









-------------------------
--MINETEST MOBS
-------------------------
-- Dungeon Master by PilzAdam
mobs:register_mob("esmobs:dungeon_master", {
	type = "monster",
	passive = false,
	damage = 4,
	attack_type = "dogshoot",
	reach = 3,
	shoot_interval = 2.5,
	arrow = "esmobs:fireball",
	shoot_offset = 1,
	hp_min = 120,
	hp_max = 350,
	armor = 60,
	collisionbox = {-0.7, -1, -0.7, 0.7, 1.6, 0.7},
	visual = "mesh",
	mesh = "mobs_dungeon_master.b3d",
	textures = {
		"mobs_1.png"
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_fireball",
		attack = "mobs_fireball",
		shoot_attack = "mobs_fireball",
	},
	walk_velocity = 2,
	run_velocity = 4,
	jump = true,
	view_range = 15,
	drops = {
		{name = "default:mese_crystal_fragment",
		chance = 1, min = 1, max = 3},
		{name = "default:diamond",
		chance = 4, min = 1, max = 1},
		{name = "default:mese_crystal",
		chance = 2, min = 1, max = 2},
		{name = "default:diamondblock",
		chance = 30, min = 1, max = 1},
	},
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	fear_height = 3,
	animation = {
		stand_start = 0,
		stand_end = 19,
		walk_start = 20,
		walk_end = 35,
		punch_start = 36,
		punch_end = 48,
		speed_normal = 15,
		speed_run = 15,
	},
})


-- Tree Monster (or Tree Gollum) by PilzAdam
mobs:register_mob("esmobs:tree_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 2,
	hp_min = 7,
	hp_max = 33,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "mobs_tree_monster.b3d",
	textures = {
		"mobs_4.png"
	},
	blood_texture = "default_wood.png",
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_treemonster",
	},
	walk_velocity = 3,
	run_velocity = 4,
	jump = true,
	view_range = 15,
	drops = {
		{name = "ethereal:tree_sapling",
		chance = 3, min = 1, max = 2},
		{name = "ethereal:jungle_tree_sapling",
		chance = 3, min = 1, max = 2},
		{name = "default:apple",
		chance = 2, min = 1, max=3},
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 2,
	fall_damage = 0,
	group_attack = true,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 24,
		walk_start = 25,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		punch_start = 48,
		punch_end = 62,
	},
})



-- ethereal sapling compatibility
if not minetest.get_modpath("ethereal") then
	minetest.register_alias("ethereal:tree_sapling", "default:sapling")
	minetest.register_alias("ethereal:jungle_tree_sapling", "default:junglesapling")
end

-- Sand Monster by PilzAdam
mobs:register_mob("esmobs:sand_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 3,
	hp_min = 34,
	hp_max = 60,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "mobs_sand_monster.b3d",
	textures = {
		"mobs_5.png"
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_sandmonster",
	},
	walk_velocity = 3.5,
	run_velocity = 4.5,
	view_range = 15,
	jump = true,
	floats = 0,
	drops = {
		{name = "default:desert_sand",
		chance = 1, min = 3, max = 5},
	},
	water_damage = 3,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 3,
	group_attack = true,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 39,
		walk_start = 41,
		walk_end = 72,
		run_start = 74,
		run_end = 105,
		punch_start = 74,
		punch_end = 105,
	},
})


-- Stone Monster by PilzAdam
mobs:register_mob("esmobs:stone_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 6,
	hp_min = 32,
	hp_max = 55,
	armor = 80,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {
		"mobs_6.png"
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_stonemonster",
	},
	walk_velocity = 0.5,
	run_velocity = 2.5,
	jump = true,
	floats = 0,
	view_range = 15,
	group_attack = true,
	drops = {
		{name = "default:torch",
		chance = 2, min = 0, max = 2,},
		{name = "default:iron_lump",
		chance=5, min=0, max=1,},
		{name = "default:coal_lump",
		chance=3, min=0, max=1,},
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 2,
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 0,		stand_end = 14,
		walk_start = 15,		walk_end = 38,
		run_start = 40,			run_end = 63,
		punch_start = 40,		punch_end = 63,
	},
})





-- Oerkki by PilzAdam

mobs:register_mob("esmobs:oerkki", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 4,
	hp_min = 8,
	hp_max = 34,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_oerkki.b3d",
	textures = {
		"mobs_8.png"

	},
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_oerkki",
	},
	walk_velocity = 2,
	run_velocity = 4,
	view_range = 10,
	jump = true,
	drops = {
		{name = "default:obsidian",
		chance = 7, min = 1, max = 2},
	},
	water_damage = 2,
	lava_damage = 4,
	light_damage = 1,
	fear_height = 7,
	animation = {
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 36,
		run_start = 37,
		run_end = 49,
		punch_start = 37,
		punch_end = 49,
		speed_normal = 15,
		speed_run = 15,
	},
	replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	group_attack = true,
})



mobs:register_mob("esmobs:dirt", {
	type = "monster",
	hp_min = 30,
	hp_max = 50,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {"mobs_20.png"},
	--visual_size = {x=3.5, y=2.8},
	makes_footstep_sound = true,
	view_range = 24,
	follow = "flowers:viola",--swap out type randomly for server players"flowers:tulip","flowers:rose","flowers:geranium","flowers:dandelion_yellow","flowers:dandelion_white",
	walk_velocity = 2.5,
	run_velocity = 3.8,
	damage = 3.7,
	reach = 2,
	drops = {
		{name = "default:dirt",
		chance = 1,
		min = 1,
		max = 2,},

		{name = "flowers:viola",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 6,
	on_rightclick = nil,
	attack_type = "dogfight",
	group_attack = true,
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
		war_cry = "mobs_stone",
		death = "mobs_death2",
		attack = "mobs_stone_attack",
		},
})

---------------------------------------
--EXTREME SURVUVAL MOBS
---------------------------------------
-- Spider by AspireMint (fishyWET (CC-BY-SA 3.0 license for texture)
mobs:register_mob("esmobs:spider", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	damage = 3,
	hp_min = 40,
	hp_max = 80,
	armor = 100,
	collisionbox = {-0.9, -0.01, -0.7, 0.7, 0.6, 0.7},
	visual = "mesh",
	mesh = "mobs_spider.x",
	textures = {
		"mobs_7.png"
	},
	visual_size = {x=3,y=3},
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_spider",
		attack = "mobs_spider",
	},
	walk_velocity = 1.7,
	run_velocity = 3.3,
	jump = true,
	view_range = 15,
	floats = 0,
	group_attack = true,
    drops = {
		{name = "farming:string",
		chance = 1, min = 1, max = 5,},
		{name = "esmobs:meat_raw",
		chance = 1, min = 0, max = 1,},
	},
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 14,
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 1,		stand_end = 1,
		walk_start = 20,		walk_end = 40,
		run_start = 20,			run_end = 40,
		punch_start = 50,		punch_end = 90,
	},
})


--Applmons by maikerumine
mobs:register_mob("esmobs:applmons", {
	type = "monster",
	hp_min = 20,
	hp_max = 28,
	collisionbox = {-0.4, -0.3, -0.4, 0.4, 0.6, 0.4},
	visual = "mesh",
	mesh = "mobs_dungeon_master.b3d",
	textures = {"mobs_10.png"},
	visual_size = {x=0.6, y=0.3},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,
	run_velocity = 3.6,
	damage = 3,
	drops = {
		{name = "default:apple",
		chance = 4,
		min = 1,
		max = 3,},
	},
		sounds = {
		random = "mobs_rat",
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 3,
	light_damage = 0,
	jump = true,
	jump_height = 8,
	fall_damage = 0,
	fall_speed = -5,
	stepheight = 2.1,
	fear_height = 6,
	on_rightclick = nil,
	attack_type = "dogfight",
	group_attack = true,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 19,
		walk_start = 20,
		walk_end = 35,
		run_start = 30,
		run_end = 40,
		punch_start = 36,
		punch_end = 48,
	}
})


--Herobrine's Bloody Ghost by Lovehart and maikerumine  http://minetest.fensta.mobslaced.net/#author=lovehart
mobs:register_mob("esmobs:herobrines_bloody_ghost", {
	type = "monster",
	hp_min = 320,
	hp_max = 340,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "badplayer.x",
	textures = {"mobs_11.png"},
	visual_size = {x=1, y=1.0},
	makes_footstep_sound = true,
	view_range = 19,
	walk_velocity = 1.8,
	run_velocity = 3.6,
	damage = 10,
	drops = {
		{name = "default:mese",
		chance = 7,
		min = 1,
		max = 4,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 210,
	lava_damage = 50,
	light_damage = 150,
	fear_height = 30,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 19,
		walk_start = 20,
		walk_end = 35,
		run_start = 30,
		run_end = 40,
		punch_start = 36,
		punch_end = 48,
	}
})

--Phoenix from NSSM and bat from minetest defense merged into this
--mobs:register_spawn("esmobs:phoenix", {"air","air"}, 6, -1, 170000, 1, 100)
mobs:register_mob("esmobs:paniki", {
	type = "monster",
	hp_max = 60,
	hp_min = 50,
	collisionbox = {-0.65, -0.4, -0.65, 0.65, 0.4, 0.65},
	visual = "mesh",
	mesh = "phoenix.b3d",  --paniki from minetest defense
	textures = {"mobs_12.png"},  --paniki from minetest defense
	visual_size = {x=1, y=1},
	view_range = 90,
	lifetimer = 500,
	floats=1,
	rotate = 270,
	walk_velocity = 2.5,
	run_velocity = 3.5,
  fall_speed = 1,
  stepheight = 3,
  sounds = {
		random = "phoenix",
		attack = "mobs_fireball",
		distance = 15,
	},
	damage = 2,
	--jump = true,
	drops = {
		{name = "default:sand",
		chance = 1,
		min = 7,
		max = 8,},
		{name = "esmobs:feather",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "esmobs:chicken",
		chance = 1,
		min = 5,
		max = 6,},
		{name = "default:gold_lump",
		chance = 6,
		min = 10,
		max = 20,},
	},
	armor = 60,
	--drawtype = "side",
	water_damage = 5,
	lava_damage = 0,
	light_damage = 10,
	--fear_height = 70,
	on_rightclick = nil,
	fly = true,
	--attack_type = "shoot",
	attack_type = "dogfight",
		--arrow = "throwing:arrow_entity",
		arrow = "esmobs:fireball",
		--arrow = "tnt:tnt_ent",
		reach = 1,
		shoot_interval = 1.25,

	animation = {
		speed_normal = 22,
		speed_run = 25,
		stand_start = 220,
		stand_end = 280,
		walk_start = 30,
		walk_end = 59,
		run_start = 60,
		run_end = 89,
		punch_start = 60,
		punch_end = 89,
		--dattack_start = 60,
		--dattack_end = 89,
	}
})

--Phoenix from NSSM and bat from minetest defense merged into this
--mobs:register_spawn("esmobs:phoenix", {"air","air"}, 6, -1, 170000, 1, 100)
mobs:register_mob("esmobs:phoenix", {
	type = "monster",
	hp_max = 60,
	hp_min = 50,
	collisionbox = {-0.65, -0.4, -0.65, 0.65, 0.4, 0.65},
	visual = "mesh",
	mesh = "phoenix.b3d",  --paniki from minetest defense
	textures = {"mobs_12.png"},  --paniki from minetest defense
	visual_size = {x=4, y=4},
	view_range = 90,
	lifetimer = 500,
	floats=1,
	rotate = 270,
	walk_velocity = 2.5,
	run_velocity = 6.5,
  fall_speed = 1,
  stepheight = 3,
  sounds = {
		random = "phoenix",
		attack = "mobs_fireball",
		distance = 15,
	},
	damage = 2,
	--jump = true,
	drops = {
		{name = "default:sand",
		chance = 1,
		min = 7,
		max = 8,},
		{name = "esmobs:feather",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "esmobs:chicken",
		chance = 1,
		min = 5,
		max = 6,},
		{name = "default:gold_lump",
		chance = 6,
		min = 10,
		max = 20,},
	},
	armor = 60,
	--drawtype = "side",
	water_damage = 5,
	lava_damage = 0,
	light_damage = 10,
	--fear_height = 70,
	on_rightclick = nil,
	fly = true,
	attack_type = "shoot",
	--attack_type = "dogfight",
		--arrow = "throwing:arrow_entity",
		arrow = "esmobs:fireball",
		--arrow = "tnt:tnt_ent",
		reach = 1,
		shoot_interval = 1.25,

	animation = {
		speed_normal = 22,
		speed_run = 25,
		stand_start = 220,
		stand_end = 280,
		walk_start = 30,
		walk_end = 59,
		run_start = 60,
		run_end = 89,
		punch_start = 60,
		punch_end = 89,
		--dattack_start = 60,
		--dattack_end = 89,
	}
})

mobs:register_mob("esmobs:bomber", {
	type = "monster",
	hp_max = 60,
	hp_min = 50,
	collisionbox = {-0.65, -0.4, -0.65, 0.65, 0.4, 0.65},
	visual = "mesh",
	mesh = "phoenix.b3d",  --paniki from minetest defense
	textures = {"mobs_13.png"},  --paniki from minetest defense made into a plane
	visual_size = {x=17, y=7},
	view_range = 90,
	lifetimer = 500,
	floats=1,
	rotate = 4.5,
	walk_velocity = -1.5,
	run_velocity = -2.5,
  fall_speed = 0,
  stepheight = 12,
  sounds = {
		random = "explo",
		attack = "Fuse",
		distance = 45,
	},
	damage = 2,
	jump = true,
	drops = {
		{name = "default:sand",
		chance = 1,
		min = 7,
		max = 8,},
		{name = "esmobs:feather",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "esmobs:chicken",
		chance = 1,
		min = 5,
		max = 6,},
		{name = "esmobs:bomb",
		chance = 6,
		min = 0,
		max = 20,},
	},
	armor = 60,
	drawtype = "side",
	water_damage = 5,
	lava_damage = 0,
	light_damage = 10,
	on_rightclick = nil,
	fly = true,
	attack_type = "shoot",
	--attack_type = "dogfight",
		--arrow = "default:lava_flowing",
		--arrow = "esmobs:bonebullet",
		--arrow = "esmobs:tnt2_ent",
		arrow = "esmobs:bone_monster",
		reach = 1,
		shoot_interval = 5,

	animation = {
		speed_normal = 22,
		speed_run = 25,
		stand_start = 220,
		stand_end = 223,
		walk_start = 30,
		walk_end = 30,
		run_start = 60,
		run_end = 60,
		punch_start = 87,
		punch_end = 89,
		--dattack_start = 60,
		--dattack_end = 89,
	}
})

-- Bone Monster by maikerumine
mobs:register_mob("esmobs:bone_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogshoot",
	arrow = "esmobs:bonebullet",
	--reach = 1,
	shoot_interval = 1.5,
	shoot_offset = 2,
	damage = 2,
	hp_min = 17,
	hp_max = 35,
	armor = 90,
	collisionbox = {-0.5, -1.5, -0.5, 0.5, 0.5, 0.5},
	--visual = "node",
	visual = "mesh",
	mesh = "bone_monster.x",
	textures = {
	"mobs_14.png"
	},
	visual_size = {x=0.9,y=0.9},
	makes_footstep_sound = true,
	sounds = {
		random = "default_gravel_footstep",
	},
	walk_velocity = 1.5,
	run_velocity = 4,
	view_range = 15,
	jump = true,
	jump_height = 8,
	fall_damage = 0,
	fall_speed = -0.5,
	stepheight = 3,
	fear_height = 30,
	floats = 1,
	drops = {
		{name = "bones:bones",
		chance = 1, min = 3, max = 5,},
		{name = "default:steelblock",
		chance = 3, min = 0, max = 2,},
		{name = "esmobs:feather",
		chance = 1, min = 3, max = 9,},

	},
	water_damage = 4,
	lava_damage = 4,
	light_damage = 4,
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

})

mobs:register_mob("esmobs:icemon", {
	type = "monster",
	hp_min = 80,
	hp_max = 110,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {"mobs_15.png"},
	--visual_size = {x=3.5, y=2.8},
	makes_footstep_sound = true,
	view_range = 14,
	walk_velocity = 2.0,
	run_velocity = 2.9,
	damage = 4,
	sounds = {
		random = "mobs_stonemonster",
	},
	drops = {
		{name = "default:ice",
		chance = 1,
		min = 3,
		max = 6,},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 30,
	on_rightclick = nil,
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
		punch_start = 37,
		punch_end = 49,
	}

})

mobs:register_mob("esmobs:snowmon", {
	type = "monster",
	hp_min = 69,
	hp_max = 112,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {"mobs_16.png"},
	--visual_size = {x=5.5, y=2.8},
	makes_footstep_sound = true,
	view_range = 14,
	walk_velocity = 1.0,
	run_velocity = 2.0,
	damage = 5,
	sounds = {
		random = "mobs_stonemonster",
	},
	drops = {
		{name = "default:snow",
		chance = 1,
		min = 3,
		max = 6,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 20,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 3,
	on_rightclick = nil,
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
		punch_start = 37,
		punch_end = 49,
	}

})

mobs:register_mob("esmobs:watermon", {
	type = "monster",
	hp_min = 35,
	hp_max = 75,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"mobs_17.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 0.9,
	run_velocity = 1.8,
	damage = 1,
	drops = {
		{name = "default:water_flowing",
		chance = 1,
		min = 0,
		max = 2,},
		{name = "bucket:bucket_empty",
		chance = 8,
		min = 0,
		max = 1,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 3,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		random = "mobs_stonemonster",
	},
})


mobs:register_mob("esmobs:dirt2", {
	type = "monster",
	hp_min = 30,
	hp_max = 50,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {"mobs_21.png"},
	--visual_size = {x=3.5, y=2.8},
	makes_footstep_sound = true,
	view_range = 24,
	follow = "flowers:rose",--swap out type randomly for server players"flowers:tulip","flowers:rose","flowers:geranium","flowers:dandelion_yellow","flowers:dandelion_white",
	walk_velocity = 1.5,
	run_velocity = 2.8,
	damage = 3.7,
	drops = {
		{name = "default:dirt",
		chance = 1,
		min = 1,
		max = 2,},

		{name = "flowers:rose",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 20,
	lava_damage = 40,
	light_damage = 1,
	fear_height = 6,
	on_rightclick = nil,
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
		war_cry = "mobs_stone",
		death = "mobs_death2",
		attack = "mobs_stone_attack",
		},
})

-- Stone Monster by PilzAdam
mobs:register_mob("esmobs:stone_monster2", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	damage = 6,
	hp_min = 82,
	hp_max = 105,
	armor = 80,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {
		"mobs_6.png^[colorize:#FF0000:100"
	},
	--visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_stone_attack",
	},
	walk_velocity = 1.5,
	run_velocity = 2.6,
	jump = true,
	floats = 1,
	view_range = 10,
	drops = {
		{name = "default:stone",
		chance = 2, min = 0, max = 2,},
		{name = "default:iron_lump",
		chance=5, min=0, max=5,},
		{name = "default:coal_lump",
		chance=3, min=0, max=5,},
	},
	water_damage = 5,
	lava_damage = 0,
	light_damage = 1,
	fear_height = 3,
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 0,		stand_end = 14,
		walk_start = 15,		walk_end = 38,
		run_start = 40,			run_end = 63,
		punch_start = 40,		punch_end = 63,
	},
})

-----------------------------
--ES CHOKOBU
-----------------------------
-- Chicken by JK Murray
mobs:register_mob("esmobs:chickoboo", {
	type = "animal",
	passive = false,
	attack_type = "dogfight",
	damage = 3,
	hp_min = 50,
	hp_max = 80,
	armor = 90,
	--collisionbox = {-0.4, -3.1, -0.4, 0.4, -1.7, 0.4},
		collisionbox = {-0.3, -0.75, -0.3, 0.3, 0.1, 0.3},
	visual = "mesh",
	mesh = "mobs_chicken.x",
	textures = {
		{"mobs_chicken.png", "mobs_chicken.png", "mobs_chicken.png", "mobs_chicken.png",
		"mobs_chicken.png", "mobs_chicken.png", "mobs_chicken.png", "mobs_chicken.png", "mobs_chicken.png"},
		{"mobs_chicken_black.png", "mobs_chicken_black.png", "mobs_chicken_black.png", "mobs_chicken_black.png",
		"mobs_chicken_black.png", "mobs_chicken_black.png", "mobs_chicken_black.png", "mobs_chicken_black.png", "mobs_chicken_black.png"},
	},
	child_texture = {
		{"mobs_chick.png", "mobs_chick.png", "mobs_chick.png", "mobs_chick.png",
		"mobs_chick.png", "mobs_chick.png", "mobs_chick.png", "mobs_chick.png", "mobs_chick.png"},
	},
	--visual_size = {x=4.5,y=4.5},
	visual_size = {x=1,y=1},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_chicken",
	},
	walk_velocity = 2.8,
	run_velocity = 7,
	jump = true,
	view_range = 45,
	drops = {
		{name = "esmobs:chicken_raw",
		chance = 1, min = 6, max = 12},
		{name = "esmobs:egg",
		chance = 1, min = 1, max = 3},
	},
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fall_damage = 0,
	fear_height = 3,
	fall_speed = -4,
	animation = {
		speed_normal = 15,
		stand_start = 0,
		stand_end = 1, -- 20
		walk_start = 20,
		walk_end = 40,
	},
	follow = "farming:seed_wheat",
	view_range = 5,
	replace_rate = 20000,
	replace_what = {"air"},
	replace_with = "esmobs:egg",
	on_rightclick = function(self, clicker)
		local tool = clicker:get_wielded_item()
		if tool:get_name() == "farming:seed_wheat" then
			if not minetest.setting_getbool("creative_mode") then
				tool:take_item(1)
				clicker:set_wielded_item(tool)
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
				self.tamed = true
				minetest.sound_play("mobs_chicken", {object = self.object,gain = 1.0,max_hear_distance = 15,loop = false,})
			end
			return
		end

		--[[if clicker:is_player()
		and clicker:get_inventory()
		and self.child == false
		and clicker:get_inventory():room_for_item("main", "esmobs:chickoboo") then
			clicker:get_inventory():add_item("main", "esmobs:chickoboo")
			self.object:remove()
		end]]
	end,
})

