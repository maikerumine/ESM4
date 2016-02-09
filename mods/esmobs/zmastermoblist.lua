--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL
esmobs = {}
--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
-- ethereal crystal spike compatibility
if not minetest.get_modpath("ethereal") then
	minetest.register_alias("ethereal:crystal_spike", "default:sandstone")
end

--friendly npc drops when right click with gold lump.
mobs.npc_drops = { "default:pick_steel", "esmobs:meat", "default:sword_steel", "default:shovel_steel", "farming:bread", "default:wood" }--Added 20151121
mobs.npc2_drops = { "default:pick_mese", "esmobs:meat", "default:sword_diamond", "default:pick_diamond", "farming:bread", "default:wood" }--Added 20151121


-- from throwing mod by PilzAdam:
minetest.register_node("esmobs:arrow_box", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			-- Schaft
			{-6.5/17, -1.5/17, -1.5/17, 6.5/17, 1.5/17, 1.5/17},
			--Spitze
			{-4.5/17, 2.5/17, 2.5/17, -3.5/17, -2.5/17, -2.5/17},
			{-8.5/17, 0.5/17, 0.5/17, -6.5/17, -0.5/17, -0.5/17},
			--Federn
			{6.5/17, 1.5/17, 1.5/17, 7.5/17, 2.5/17, 2.5/17},
			{7.5/17, -2.5/17, 2.5/17, 6.5/17, -1.5/17, 1.5/17},
			{7.5/17, 2.5/17, -2.5/17, 6.5/17, 1.5/17, -1.5/17},
			{6.5/17, -1.5/17, -1.5/17, 7.5/17, -2.5/17, -2.5/17},

			{7.5/17, 2.5/17, 2.5/17, 8.5/17, 3.5/17, 3.5/17},
			{8.5/17, -3.5/17, 3.5/17, 7.5/17, -2.5/17, 2.5/17},
			{8.5/17, 3.5/17, -3.5/17, 7.5/17, 2.5/17, -2.5/17},
			{7.5/17, -2.5/17, -2.5/17, 8.5/17, -3.5/17, -3.5/17},
		}
	},
	tiles = {"throwing_arrow.png", "throwing_arrow.png", "throwing_arrow_back.png", "throwing_arrow_front.png", "throwing_arrow_2.png", "throwing_arrow.png"},
	groups = {not_in_creative_inventory=1},
})

-- fireball (weapon)
mobs:register_arrow("esmobs:fireball", {
	visual = "sprite",
	visual_size = {x = 1, y = 1},
	textures = {"mobs_fireball.png"},
	velocity = 6,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 8},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 8},
		}, nil)
	end,

	-- node hit, bursts into flame
	hit_node = function(self, pos, node)
		--mobs:explode(pos, 1, 1, 0)  --this deletes nodes
	end
})
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
		{"mobs_1.png"},
		{"mobs_2.png"},
		{"mobs_3.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_dungeonmaster",
		attack = "mobs_fireball",
	},
	walk_velocity = 1,
	run_velocity = 3,
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
		{"mobs_tree_monster.png"},
	},
	blood_texture = "default_wood.png",
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_treemonster",
	},
	walk_velocity = 1,
	run_velocity = 3,
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
		{"mobs_sand_monster.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_sandmonster",
	},
	walk_velocity = 1.5,
	run_velocity = 4,
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
	damage = 8,
	hp_min = 32,
	hp_max = 55,
	armor = 80,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {
		{"mobs_6.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_stonemonster",
	},
	walk_velocity = 0.5,
	run_velocity = 2,
	jump = true,
	floats = 0,
	view_range = 10,
	drops = {
		{name = "default:torch",
		chance = 2, min = 0, max = 2,},
		{name = "default:iron_lump",
		chance=5, min=0, max=1,},
		{name = "default:coal_lump",
		chance=3, min=0, max=1,},
	},
	water_damage = 10,
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
		{"mobs_oerkki.png"},
		{"mobs_oerkki2.png"},
	},
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_oerkki",
	},
	walk_velocity = 1,
	run_velocity = 3,
	view_range = 10,
	jump = true,
	drops = {
		{name = "default:obsidian",
		chance = 3, min = 1, max = 2},
	},
	water_damage = 2,
	lava_damage = 4,
	light_damage = 1,
	fear_height = 3,
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
		{"mobs_7.png"},
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
	hp_max = 40,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.0, 0.4},
	visual = "mesh",
	mesh = "mobs_dungeon_master.b3d",
	textures = {"mobs_10.png"},
	visual_size = {x=0.6, y=0.6},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "default:apple",
		chance = 4,
		min = 1,
		max = 3,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 6,
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
mobs:register_mob("esmobs:phoenix", {
	type = "monster",
	hp_max = 60,
	hp_min = 50,
	collisionbox = {-0.65, -0.4, -0.65, 0.65, 0.4, 0.65},
	visual = "mesh",
	mesh = "phoenix.b3d",  --paniki from minetest defense
	textures = {{"mobs_12.png"}},  --paniki from minetest defense
	visual_size = {x=7, y=7},
	view_range = 90,
	lifetimer = 500,
	floats=1,
	rotate = 4.5,
	walk_velocity = -2.5,
	run_velocity = -8.5,
  fall_speed = 0,
  stepheight = 3,
  sounds = {
		random = "phoenix",
		attack = "mobs_fireball",
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
		{name = "default:gold_lump",
		chance = 6,
		min = 10,
		max = 20,},
	},
	armor = 60,
	drawtype = "side",
	water_damage = 5,
	lava_damage = 0,
	light_damage = 10,
	--fear_height = 70,
	on_rightclick = nil,
	fly = true,
	attack_type = "dogshoot",
	--attack_type = "dogfight",
		--arrow = "throwing:arrow_entity",
		arrow = "esmobs:fireball",
		--arrow = "tnt:tnt_ent",
		reach = 1,
		shoot_interval = 2.25,

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
	textures = {{"mobs_13.png"}},  --paniki from minetest defense made into a plane
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
	damage = 2,
	hp_min = 17,
	hp_max = 35,
	armor = 90,
	collisionbox = {-0.5, -1.5, -0.5, 0.5, 0.5, 0.5},
	--visual = "node",
	visual = "mesh",
	mesh = "bone_monster.x",
	textures = {
	{"mobs_14.png"},
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
	fall_speed = -1,
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
		{"mobs_6.png"},
	},
	--visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_stonemonster",
	},
	walk_velocity = 1.5,
	run_velocity = 2.6,
	jump = true,
	floats = 1,
	view_range = 10,
	drops = {
		{name = "default:torch",
		chance = 2, min = 0, max = 2,},
		{name = "default:iron_lump",
		chance=5, min=0, max=1,},
		{name = "default:coal_lump",
		chance=3, min=0, max=1,},
	},
	water_damage = 10,
	lava_damage = 1,
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
------------------------------
--MINETEST ANIMALS
------------------------------
-- Rat by PilzAdam

mobs:register_mob("esmobs:rat", {
	type = "animal",
	passive = true,
	hp_min = 1,
	hp_max = 4,
	armor = 200,
	collisionbox = {-0.2, -1, -0.2, 0.2, -0.8, 0.2},
	visual = "mesh",
	mesh = "mobs_rat.b3d",
	textures = {
		{"mobs_rat.png"},
		{"mobs_rat2.png"},
	},
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_rat",
	},
	walk_velocity = 1,
	run_velocity = 2,
	runaway = true,
	jump = true,
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 2,
	on_rightclick = function(self, clicker)
		mobs:capture_mob(self, clicker, 25, 80, 0, true, nil)
	end,
--[[
	do_custom = function(self)
		local pos = self.object:getpos()
		print("rat pos", pos.x, pos.y, pos.z)
	end,
--]]
})

local all_colours = {
	"grey", "black", "red", "yellow", "green", "cyan", "blue", "magenta",
	"white", "orange", "violet", "brown", "pink", "dark_grey", "dark_green"
}

-- Sheep by PilzAdam

for _, col in pairs(all_colours) do

	mobs:register_mob("esmobs:sheep_"..col, {
		type = "animal",
		passive = true,
		hp_min = 8,
		hp_max = 10,
		armor = 200,
		--collisionbox = {-0.4, -1, -0.4, 0.4, 0.3, 0.4},
		collisionbox = {-0.5, -1, -0.5, 0.5, 0.3, 0.5},
		visual = "mesh",
		mesh = "mobs_sheep.b3d",
		textures = {
			{"esmobs_sheep_"..col..".png"},
		},
		gotten_texture = {"esmobs_sheep_shaved.png"},
		gotten_mesh = "mobs_sheep_shaved.b3d",
		makes_footstep_sound = true,
		sounds = {
			random = "mobs_sheep",
		},
		walk_velocity = 1,
		run_velocity = 2,
		runaway = true,
		jump = true,
		drops = {
			{name = "esmobs:meat_raw",
			chance = 1, min = 1, max = 2},
			{name = "wool:"..col,
			chance = 1, min = 1, max = 1},
		},
		water_damage = 1,
		lava_damage = 5,
		light_damage = 0,
		animation = {
			speed_normal = 15,
			speed_run = 15,
			stand_start = 0,
			stand_end = 80,
			walk_start = 81,
			walk_end = 100,
		},
		follow = {"farming:wheat", "default:grass_5"},
		view_range = 8,
		replace_rate = 10,
		replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "farming:wheat_8"},
		replace_with = "air",
		replace_offset = -1,
		fear_height = 3,
		on_rightclick = function(self, clicker)
			local shpcolor = string.split(self.name,"_")[2]
			if shpcolor =="dark" then
				shpcolor = shpcolor.."_"..string.split(self.name,"_")[3]
			end

			--are we feeding?
			if mobs:feed_tame(self, clicker, 8, true, true) then
				--if full grow fuzz
				if self.gotten == false then
					self.object:set_properties({
						textures = {"esmobs_sheep_"..shpcolor..".png"},
						mesh = "mobs_sheep.b3d",
					})
				end
				return
			end

			local item = clicker:get_wielded_item()
			local itemname = item:get_name()

			--are we giving a haircut>
			if itemname == "esmobs:shears" then
				if self.gotten == false and self.child == false then
					self.gotten = true -- shaved
					if minetest.get_modpath("wool") then
						local pos = self.object:getpos()
						pos.y = pos.y + 0.5
						local obj = minetest.add_item(pos, ItemStack("wool:"..shpcolor.." "..math.random(1,3)))
						if obj then
							obj:setvelocity({
								x = math.random(-1,1),
								y = 5,
								z = math.random(-1,1)
							})
						end
						item:add_wear(650) -- 100 uses
						clicker:set_wielded_item(item)
					end
					self.object:set_properties({
						textures = {"esmobs_sheep_shaved.png"},
						mesh = "mobs_sheep_shaved.b3d",
					})
				end
				return
			end

			local name = clicker:get_player_name()

			--are we coloring?
			if itemname:find("dye:") then
				if self.gotten == false
				and self.child == false
				and self.tamed == true
				and name == self.owner then
					local col = string.split(itemname,":")[2]
					for _,c in pairs(all_colours) do
						if c == col then
							local pos = self.object:getpos()
							self.object:remove()
							local mob = minetest.add_entity(pos, "esmobs:sheep_"..col)
							local ent = mob:get_luaentity()
							ent.owner = name
							ent.tamed = true
							-- take item
							if not minetest.setting_getbool("creative_mode") then
								item:take_item()
								clicker:set_wielded_item(item)
							end
							break
						end
					end
				end
				return
			end

			--are we capturing?
			mobs:capture_mob(self, clicker, 0, 5, 60, false, nil)
		end
	})

	mobs:register_egg("esmobs:sheep_"..col, "Sheep ("..col..")", "wool_"..col..".png", 1)

end

--mobs:register_spawn("mobs:sheep_white", {"default:dirt_with_grass", "ethereal:green_dirt"}, 20, 10, 15000, 2, 31000)

-- compatibility (item and entity)
minetest.register_alias("esmobs:sheep", "esmobs:sheep_white")

minetest.register_entity("esmobs:sheep", {
	hp_max = 1,
	physical = true,
	collide_with_objects = true,
	visual = "mesh",
	mesh = "mobs_sheep.b3d",
	visual_size = {x = 1, y = 1},
	textures = {"esmobs_sheep.png"},
	velocity = {x = 0, y = 0, z = 0},
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.3, 0.4},
	is_visible = true,
	speed = 0,
	timer = 0,

	on_rightclick = function(self, clicker)
		clicker:get_inventory():add_item("main", "esmobs:sheep_white")
		self.object:remove()
	end,

	on_step = function(self, dtime)

		self.timer = self.timer + dtime
		if self.timer >= 1 then
			self.timer = 0
			self.object:setacceleration({
				x = 0,
				y = -10,
				z = 0
			})
		end
	end,

})

-- Chicken by JK Murray

mobs:register_mob("esmobs:chicken", {
	type = "animal",
	passive = true,
	hp_min = 5,
	hp_max = 10,
	armor = 200,
	collisionbox = {-0.3, -0.75, -0.3, 0.3, 0.1, 0.3},
	visual = "mesh",
	mesh = "mobs_chicken.x",
	-- seems a lot of textures but this fixes the problem with the model
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
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_chicken",
	},
	walk_velocity = 1,
	run_velocity = 3,
	runaway = true,
	jump = true,
	drops = {
		{name = "esmobs:chicken_raw",
		chance = 1, min = 2, max = 2},
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	fall_damage = 0,
	fall_speed = -8,
	fear_height = 5,
	animation = {
		speed_normal = 15,
		stand_start = 0,
		stand_end = 1, -- 20
		walk_start = 20,
		walk_end = 40,
	},
	follow = {"farming:seed_wheat", "farming:seed_cotton"},
	view_range = 5,

	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end
		esmobs:capture_mob(self, clicker, 30, 50, 80, false, nil)
	end,

	do_custom = function(self)
		if not self.child
		and math.random(1, 500) == 1 then
			local pos = self.object:getpos()
			minetest.add_item(pos, "esmobs:egg")
			minetest.sound_play("default_place_node_hard", {
				pos = pos,
				gain = 1.0,
				max_hear_distance = 5,
			})
		end
	end,
})

-- Cow by Krupnovpavel

mobs:register_mob("esmobs:cow", {
	type = "animal",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 4,
	hp_min = 5,
	hp_max = 20,
	armor = 200,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "mobs_cow.x",
	textures = {
		{"mobs_cow.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_cow",
	},
	walk_velocity = 1,
	run_velocity = 2,
	jump = true,
	drops = {
		{name = "esmobs:meat_raw",
		chance = 1, min = 1, max = 3},
		{name = "esmobs:leather",
		chance = 1, min = 1, max = 2},
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 30,
		walk_start = 35,
		walk_end = 65,
		run_start = 105,
		run_end = 135,
		punch_start = 70,
		punch_end = 100,
	},
	follow = "farming:wheat",
	view_range = 7,
	replace_rate = 10,
	replace_what = {"default:grass_3", "default:grass_4", "default:grass_5", "farming:wheat_8"},
	replace_with = "air",
	fear_height = 2,
	on_rightclick = function(self, clicker)

		-- feed or tame
		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		local tool = clicker:get_wielded_item()

		-- milk cow with empty bucket
		if tool:get_name() == "bucket:bucket_empty" then

			--if self.gotten == true
			if self.child == true then
				return
			end

			if self.gotten == true then
				minetest.chat_send_player(clicker:get_player_name(),
						"Cow already milked!")
				return
			end

			local inv = clicker:get_inventory()

			inv:remove_item("main", "bucket:bucket_empty")

			if inv:room_for_item("main", {name = "esmobs:bucket_milk"}) then
				clicker:get_inventory():add_item("main", "esmobs:bucket_milk")
			else
				local pos = self.object:getpos()
				pos.y = pos.y + 0.5
				minetest.add_item(pos, {name = "esmobs:bucket_milk"})
			end

			self.gotten = true -- milked

			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 60, false, nil)
	end,
})

-- Warthog by KrupnoPavel

mobs:register_mob("esmobs:pumba", {
	type = "animal",
	passive = false,
	attack_type = "dogfight",
	group_attack = true,
	reach = 2,
	damage = 2,
	hp_min = 5,
	hp_max = 15,
	armor = 200,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "mobs_pumba.x",
	textures = {
		{"mobs_pumba.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_pig",
		attack = "mobs_pig_angry",
	},
	walk_velocity = 2,
	run_velocity = 3,
	jump = true,
	follow = {"default:apple", "farming:potato"},
	view_range = 10,
	drops = {
		{name = "esmobs:pork_raw",
		chance = 1, min = 1, max = 3},
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	fear_height = 2,
	animation = {
		speed_normal = 15,
		stand_start = 25,
		stand_end = 55,
		walk_start = 70,
		walk_end = 100,
		punch_start = 70,
		punch_end = 100,
	},
	on_rightclick = function(self, clicker)
		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end
		mobs:capture_mob(self, clicker, 0, 5, 50, false, nil)
	end,
})






-------------------------
--KPGMOBS HORSE
-------------------------
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


mobs:register_mob("esmobs:horse", {
	type = "animal",
	hp_min = 5,
	hp_max = 10,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	textures = {
		{"mobs_28.png"},
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

mobs:register_mob("esmobs:horse2", {
	type = "animal",
	hp_min = 5,
	hp_max = 10,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	textures = {
		{"mobs_29.png"},
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

mobs:register_mob("esmobs:horse3", {
	type = "animal",
	hp_min = 5,
	hp_max = 10,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	textures = {
		{"mobs_30.png"},
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

-------------------------
--BAD NPC'S
-------------------------
mobs:register_mob("esmobs:badplayer2", {
	type = "monster",
	hp_min = 35,
	hp_max = 75,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_2.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
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

mobs:register_mob("esmobs:badplayer3", {
	type = "monster",
	hp_min = 49,
	hp_max = 83,
	collisionbox = {-0.3, -0.6, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_3.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1.2, y=.7},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
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

mobs:register_mob("esmobs:badplayer4", {
	type = "monster",
	hp_min = 37,
	hp_max = 82,
	collisionbox = {-0.3, -1.3, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_4.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_steel"].inventory_image,
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

mobs:register_mob("esmobs:badplayer6", {
	type = "monster",
	hp_min = 130,
	hp_max = 140,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_6.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
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

mobs:register_mob("esmobs:badplayer7", {
	type = "monster",
	hp_min = 37,
	hp_max = 70,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_7.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_bronze"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.2,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "default:sword_bronze",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:bronze_ingot",
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

mobs:register_mob("esmobs:badplayer8", {
	type = "monster",
	hp_min = 157,
	hp_max = 195,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_8.png",
				"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
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

mobs:register_mob("esmobs:badplayer9", {
	type = "monster",
	hp_min = 177,
	hp_max = 190,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_9.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_bronze"].inventory_image,
			},
	visual_size = {x=.9, y=.8},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "default:sword_bronze",
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

mobs:register_mob("esmobs:badplayer10", {
	type = "monster",
	hp_min = 157,
	hp_max = 200,
	collisionbox = {-0.3, -1.5, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_10.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
			},
	visual_size = {x=1.3, y=1.5},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 4,
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

mobs:register_mob("esmobs:badplayer11", {
	type = "monster",
	hp_min = 49,
	hp_max = 85,
	collisionbox = {-0.3, -1.3, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_11.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
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

mobs:register_mob("esmobs:badplayer12", {
	type = "monster",
	hp_min = 57,
	hp_max = 85,
	collisionbox = {-0.3, -0.5, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_12.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
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


mobs:register_mob("esmobs:badplayer16", {
	type = "monster",
	hp_min = 47,
	hp_max = 85,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_16.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_wood"].inventory_image,
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

mobs:register_mob("esmobs:badplayer18", {
	type = "monster",
	hp_min = 48,
	hp_max = 77,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_18.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_stone"].inventory_image,
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

mobs:register_mob("esmobs:badplayer22", {
	type = "monster",
	hp_min = 77,
	hp_max = 90,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_22.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
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

mobs:register_mob("esmobs:badplayer23", {
	type = "monster",
	hp_min = 127,
	hp_max = 152,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_23.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 7,
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

mobs:register_mob("esmobs:badplayer24", {
	type = "monster",
	hp_min = 137,
	hp_max = 159,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_24.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:goldblock"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.5,
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
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_barbarian_death",
		attack = "default_punch3",
		},
})

mobs:register_mob("esmobs:badplayer25", {
	type = "monster",
	hp_min = 100,
	hp_max = 120,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_25.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_diamond"].inventory_image,
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

mobs:register_mob("esmobs:badplayer26", {
	type = "monster",
	hp_min = 73,
	hp_max = 80,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_26.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:axe_steel"].inventory_image,
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

mobs:register_mob("esmobs:badplayer27", {
	type = "monster",
	hp_min = 99,
	hp_max = 140,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_27.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_diamond"].inventory_image,
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

mobs:register_mob("esmobs:badplayer28", {
	type = "monster",
	hp_min = 77,
	hp_max = 90,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_28.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
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

mobs:register_mob("esmobs:badplayer29", {
	type = "monster",
	hp_min = 69,
	hp_max = 89,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_29.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_stone"].inventory_image,
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

mobs:register_mob("esmobs:badplayer30", {
	type = "monster",
	hp_min = 137,
	hp_max = 150,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_30.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
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

mobs:register_mob("esmobs:badplayer31", {
	type = "monster",
	hp_min = 77,
	hp_max = 130,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_31.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
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

mobs:register_mob("esmobs:badplayer35", {
	type = "monster",
	hp_min = 35,
	hp_max = 75,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_21.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
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

mobs:register_mob("esmobs:Mr_Black", {
	type = "monster",
	hp_min = 35,
	hp_max = 65,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_33.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_stone"].inventory_image,
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
	sounds = {
		attack = "default_punch3",
	},
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Mr. Black: Grrrrrrrrrrrr!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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


-------------------------
--BAD NPC'S
-------------------------
mobs:register_mob("esmobs:Jasmine", {
	type = "monster",
	hp_min = 277,
	hp_max = 290,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_42.png",
			"3d_armor_trans.png",
				minetest.registered_items["es:sword_purpellium"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 18,
	walk_velocity = 5,
	run_velocity = 3.4,
	damage = 7,
	drops = {
		{name = "default:diamond_block",
		chance = 5,
		min = 0,
		max = 2,},
		{name = "es:sword_purpellium",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "default:water_flowing",
			chance = 2,
			min = 1,
			max=2,},

	},
	armor = 75,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 70,
	fear_height = 2,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Jasmine: Tame me now, come to me later, we will chat after I have cooled off.",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

mobs:register_mob("esmobs:Infinium_Monster", {
	type = "monster",
	hp_min = 377,
	hp_max = 390,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_32.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 5,
	walk_velocity = 1,
	run_velocity = 5,
	damage = 4,
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

	},
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
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
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_howl",
		attack = "default_punch3",
		},
})


-------------------------
--GOOD NPC'S
-------------------------
mobs:register_mob("esmobs:Sam", {
	type = "npc",
	hp_min = 25,
	hp_max = 35,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_1.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "default:sword_steel",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Sam: Let's go kick some Mob butt!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death1",
		attack = "default_punch",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:John", {
	type = "npc",
	hp_min = 27,
	hp_max = 34,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_5.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 5,},
		{name = "default:sword_wood",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,},

	},
	armor = 85,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"John: Let's go grief some monsters!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	attack_type = "dogfight",
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
		attack = "default_punch2",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:Janette", {
	type = "npc",
	hp_min = 13,
	hp_max = 15,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_13.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:stick"].inventory_image,
			},
	visual_size = {x=1, y=.8},
	makes_footstep_sound = true,
	view_range = 19,
	walk_velocity = 1.6,
	run_velocity = 1,
	damage = 2.5,
	drops = {
		{name = "default:leaves",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_steel",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,},

	},
	armor = 40,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
	follow = "default:apple",
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Jannette: Stop flirting with me!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_oerkki_attack",
		death = "mobs_death1",
		attack = "default_punch",
		},

	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:Crybaby", {
	type = "npc",
	hp_min = 27,
	hp_max = 45,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_14.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:papyrus",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_steel",
		chance = 2,
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
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Crybaby: I am too whimpy to fight mobs, but I can do my best!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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


	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_death1",
		attack = "default_punch2",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})

mobs:register_mob("esmobs:SepiaSam", {
	type = "npc",
	hp_min = 47,
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_15.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 17,
	walk_velocity = 1.3,
	run_velocity = 3.9,
	damage = 3,
	drops = {
		{name = "default:sword_mese",
		chance = 2,
		min = 0,
		max = 1,},
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
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Sepia Sam: MESE sword + Monster = My pleasure!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	attack_type = "dogfight",
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
		attack = "default_punch3",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:OGSam", {
	type = "npc",
	hp_min = 37,
	hp_max = 45,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_17.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2.3,
	damage = 4,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 0,
		max = 5,},
		{name = "default:sword_wood",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 4,
			max=12,},

	},
	armor = 90,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"O.G. Sam: Mobs, let me at 'em, I'll splat 'em!!!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death1",
		attack = "default_punch2",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:Vanessa", {
	type = "npc",
	hp_min = 28,
	hp_max = 35,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_19.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:axe_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 1.6,
	run_velocity = 2.8,
	damage = 3,
	drops = {
		{name = "default:torch",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Vanessa: I'll code out the very instance of those mobs!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	--attack_type = "dogfight",
	attack_type = "dogshoot",
	shoot_interval = 0.7,
	arrow = "esmobs:axebullet",
	shoot_offset = 2,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "default_punch",
		death = "mobs_slash_attack",
		attack = "default_punch",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:FemaleSam", {
	type = "npc",
	hp_min = 92,
	hp_max = 125,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_20.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.7,
	run_velocity = 2.5,
	damage = 4,
	drops = {
		{name = "default:pick_steel",
		chance = 4,
		min = 0,
		max = 2,},
		{name = "default:sword_steel",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Female Sam: Minetest is the greatest voxel game ever created!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_stone",
		death = "mobs_slash_attack",
		attack = "default_punch2",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:Battleboy", {
	type = "npc",
	hp_min = 157,
	hp_max = 180,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_21.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 14,
	walk_velocity = 2.5,
	run_velocity = 7,
	damage = 4,
	drops = {
		{name = "default:pick_mese",
		chance = 2,
		min = 0,
		max = 1,},
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
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Battlefield 3 Soldier: All suited up, let's roll out and destroy those creatures!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	attack_type = "dogfight",
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
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:Wilbert", {
	type = "npc",
	hp_max = 115,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_35.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 5,
		sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death1",
		attack = "default_punch",
		},
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 10,
		max = 28,},
		{name = "default:sword_steel",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,
		},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Old man: I am getting too old for this...  Okay, I'll help ya!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:Thelma", {
	type = "npc",
	hp_max = 115,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_34.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 5,
		sounds = {
		war_cry = "mobs_oerkki_attack",
		death = "mobs_death1",
		attack = "default_punch",
		},
	drops = {
		{name = "default:jungletree",
		chance = 1,
		min = 5,
		max = 23,},
		{name = "default:sword_steel",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,
		},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Old woman: I may walk slow, but I can fight like a champ!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	},

	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:DrifterDan", {
	type = "npc",
	hp_min = 117,
	hp_max = 129,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_36.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 14,
	walk_velocity = 2.5,
	run_velocity = 7,
	damage = 4,
	drops = {
		{name = "default:pick_mese",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:steel_ingot",
		chance = 1,
		min = 3,
		max = 19,},
		{name = "default:apple",
			chance = 1,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Drifter Dan: Let's roll out and destroy those creatures!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	attack_type = "dogfight",
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
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:Mr_White", {
	type = "npc",
	hp_min = 35,
	hp_max = 65,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_38.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 2,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death1",
		attack = "default_punch",
		},
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 0,
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
	sounds = {
		attack = "default_punch1",
	},
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Mr. White: Let's go kick some Mob butt!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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


	attack_type = "dogfight",
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

mobs:register_mob("esmobs:Mr_Pink", {
	type = "npc",
	hp_min = 35,
	hp_max = 65,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_37.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_stone"].inventory_image,
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
	sounds = {
		attack = "default_punch3",
	},
--TENPLUS1 and CProgrammerRU AWESOME CODES.
	-- right clicking with cooked meat will give npc more health
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Mr. Pink: My name is Norman, how may I assist?",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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


-------------------------
--GOOD NPC'S
-------------------------
mobs:register_mob("esmobs:Candy", {
	type = "npc",
	hp_min = 125,
	hp_max = 135,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_41.png",
			"3d_armor_trans.png",
				--minetest.registered_items["default:diamond"].inventory_image,
				minetest.registered_items["es:sword_ruby"].inventory_image,
			},
	visual_size = {x=1, y=1.0},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 1.9,
	run_velocity = 3.9,
	damage = 9,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 5,},
		{name = "es:sword_ruby",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 1,
			max=4,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Candy Raver: My Ruby Sword will cut through anything, let's do it!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death1",
		attack = "default_punch",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

mobs:register_mob("esmobs:Infiniumman", {
	type = "npc",
	hp_min = 25,
	hp_max = 35,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_40.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,
	run_velocity = 5,
	damage = 3,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "default:sword_diamond",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:meselamp",
			chance = 2,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Infinium Man: I'll give those monsters a good whack on the head with this Infinium ingot!",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death1",
		attack = "default_punch",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
--TEXTURE BY: http://minetest.fensta.mobslaced.net/#author=bajanhgk

mobs:register_mob("esmobs:Maikerumine", {
	type = "npc",
	hp_min = 95,
	hp_max = 175,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer_39.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:book"].inventory_image,
				--minetest.registered_items["throwing:bow_steel"].inventory_image,
				--minetest.registered_items["esmobs:bow_wood"].inventory_image,
			},
	visual_size = {x=1, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,
	run_velocity = 5,
	damage = 9,
	--attack_type = "dogfight",
	attack_type = "shoot",
	shoot_interval = 0.5,
	arrow = "esmobs:bookbullet",
	shoot_offset = 2,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "default:book",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "farming:bread",
			chance = 2,
			min = 23,
			max=90,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"Maikerumine: Maybe a new game is in the works...  Hmmm...",3)
		if item:get_name() == "esmobs:meat" or item:get_name() == "farming:bread" then
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

	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death1",
		attack = "default_punch",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

if minetest.setting_get("log_mods") then
	minetest.log("action", "eXTREME sURVIVAL mobs loaded")
end
