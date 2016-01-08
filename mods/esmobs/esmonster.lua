--esmobs v0.0.7
--maikerumine
--made for Extreme Survival game

minetest.register_alias("lagsmobs:cursed_stone", "esmobs:cursed_stone")

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

--LETS GET THIS TO WORK!
-- Dungeon Master by PilzAdam
bp:register_mob("esmobs:dungeon_master", {
	type = "monster",
	passive = false,
	damage = 4,
	--attack_type = "dogshoot",
	attack_type = "shoot",
	reach = 3,
	shoot_interval = 2.5,
	arrow = "esmobs:fireball",
	shoot_offset = 1,
	hp_min = 12,
	hp_max = 35,
	armor = 60,
	collisionbox = {-0.7, -1, -0.7, 0.7, 1.6, 0.7},
	visual = "mesh",
	mesh = "mobs_dungeon_master.b3d",
	textures = {
		{"mobs_dungeon_master.png"},
		{"mobs_dungeon_master2.png"},
		{"mobs_dungeon_master3.png"},
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
bp:register_spawn("esmobs:dungeon_master", {"default:stone"}, 2, 0, 7000, 2, -70)

-- fireball (weapon)
bp:register_arrow("esmobs:fireball", {
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
		--bp:explosion(pos, 1, 1, 0)  --this deletes nodes
	end
})


-- Tree Monster (or Tree Gollum) by PilzAdam
bp:register_mob("esmobs:tree_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	damage = 1,
	hp_min = 27,
	hp_max = 53,
	armor = 100,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_tree_monster.x",
	textures = {
		{"mobs_tree_monster.png"},
	},
	visual_size = {x=4.5,y=4.5},
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
	water_damage = 10,
	lava_damage = 50,
	light_damage = 2,
	fall_damage = 0,
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 0,		stand_end = 24,
		walk_start = 25,		walk_end = 47,
		run_start = 48,			run_end = 62,
		punch_start = 48,		punch_end = 62,
	},
})
bp:register_spawn("esmobs:tree_monster", {"default:leaves", "default:jungleleaves","default:dirt", "default:jungletree"}, 5, 0, 14000, 1, 31000)

-- ethereal sapling compatibility
if not minetest.get_modpath("ethereal") then
	minetest.register_alias("ethereal:tree_sapling", "default:sapling")
	minetest.register_alias("ethereal:jungle_tree_sapling", "default:junglesapling")
end

-- Sand Monster by PilzAdam
bp:register_mob("esmobs:sand_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	damage = 2,
	hp_min = 17,
	hp_max = 35,
	armor = 90,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_sand_monster.x",
	textures = {
		{"mobs_sand_monster.png"},
	},
	visual_size = {x=8,y=8},
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
		chance = 1, min = 3, max = 5,},

	},
	water_damage = 3,
	lava_damage = 4,
	light_damage = 0,
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 0,		stand_end = 39,
		walk_start = 41,		walk_end = 72,
		run_start = 74,			run_end = 105,
		punch_start = 74,		punch_end = 105,
	},
})
bp:register_spawn("esmobs:sand_monster", {"default:sand", "meru:stone","group:sand"},4, -1, 14000, 1, 31000)

-- Stone Monster by PilzAdam
bp:register_mob("esmobs:stone_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	damage = 8,
	hp_min = 32,
	hp_max = 55,
	armor = 80,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {
		{"mobs_stone_monster.png"},
	},
	visual_size = {x=3, y=2.6},
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
	light_damage = 1,
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 0,		stand_end = 14,
		walk_start = 15,		walk_end = 38,
		run_start = 40,			run_end = 63,
		punch_start = 40,		punch_end = 63,
	},
})
bp:register_spawn("esmobs:stone_monster", {"default:stone"}, 5, 0, 6000, 10, 500)

-- Spider by AspireMint (fishyWET (CC-BY-SA 3.0 license for texture)
bp:register_mob("esmobs:spider", {
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
		{"mobs_spider.png"},
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
	animation = {
		speed_normal = 15,		speed_run = 15,
		stand_start = 1,		stand_end = 1,
		walk_start = 20,		walk_end = 40,
		run_start = 20,			run_end = 40,
		punch_start = 50,		punch_end = 90,
	},
})
bp:register_spawn("esmobs:spider", {"default:stone" ,"default:cobble","group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 6, 0, 14000, 1, 71)

-- ethereal crystal spike compatibility
if not minetest.get_modpath("ethereal") then
	minetest.register_alias("ethereal:crystal_spike", "default:sandstone")
end


-- Oerkki by PilzAdam
bp:register_mob("esmobs:oerkkii", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	damage = 4,
	hp_min = 8,
	hp_max = 34,
	armor = 100,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_oerkki.x",
	textures = {
		{"mobs_oerkki.png"},
		{"mobs_oerkki2.png"},
	},
	visual_size = {x=5, y=5},
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
		chance = 3, min = 1, max = 2,},
	},
	water_damage = 2,
	lava_damage = 4,
	light_damage = 1,
	animation = {
		stand_start = 0,		stand_end = 23,
		walk_start = 24,		walk_end = 36,
		run_start = 37,			run_end = 49,
		punch_start = 37,		punch_end = 49,
		speed_normal = 15,		speed_run = 15,
	},
	replace_rate = 40,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
})
bp:register_spawn("esmobs:oerkkii", "esmobs:cursed_stone", 4, -1, 2, 40, 500, -500)

--Applmons by maikerumine
bp:register_mob("esmobs:applmons", {
	type = "monster",
	hp_min = 20,
	hp_max = 40,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.0, 0.4},
	visual = "mesh",
	mesh = "mobs_dungeon_master.x",
	textures = {"applmons.png"},
	visual_size = {x=3.6, y=2.6},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 2,
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
bp:register_spawn("esmobs:applmons", {"default:stone","nether:rack"}, 6, -1, 14000, 1, -30)

--Herobrine's Bloody Ghost by Lovehart and maikerumine  http://minetest.fensta.bplaced.net/#author=lovehart
bp:register_mob("esmobs:herobrines_bloody_ghost", {
	type = "monster",
	hp_min = 320,
	hp_max = 340,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "badplayer.x",
	textures = {"herobrines_blody_gost_by_lovehart.png"},
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
bp:register_spawn("esmobs:herobrines_bloody_ghost", {"default:stone","default:desert_sand","nether:brick"}, 6, -1, 12000, 1, 10)

--Phoenix from NSSM and bat from minetest defense merged into this
--bp:register_spawn("esmobs:phoenix", {"air","air"}, 6, -1, 170000, 1, 100)
bp:spawn_specific("esmobs:phoenix", {"air"}, {"air"}, 10, -1, 120, 19000, 1, 10, 40)
bp:register_mob("esmobs:phoenix", {
	type = "monster",
	hp_max = 60,
	hp_min = 50,
	collisionbox = {-0.65, -0.4, -0.65, 0.65, 0.4, 0.65},
	visual = "mesh",
	mesh = "phoenix.b3d",  --paniki from minetest defense
	textures = {{"phoenix.png"}},  --paniki from minetest defense
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
	on_rightclick = nil,
	fly = true,
	attack_type = "shoot",
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


bp:spawn_specific("esmobs:bomber", {"air"}, {"air"}, 10, -1, 120, 29000, 1, 15, 40)
bp:register_mob("esmobs:bomber", {
	type = "monster",
	hp_max = 60,
	hp_min = 50,
	collisionbox = {-0.65, -0.4, -0.65, 0.65, 0.4, 0.65},
	visual = "mesh",
	mesh = "phoenix.b3d",  --paniki from minetest defense
	textures = {{"bomber.png"}},  --paniki from minetest defense made into a plane
	visual_size = {x=17, y=7},
	view_range = 90,
	lifetimer = 500,
	floats=1,
	rotate = 4.5,
	walk_velocity = -2.5,
	run_velocity = -3.5,
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
		{name = "tnt:bomb",
		chance = 6,
		min = 10,
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
		--arrow = "throwing:arrow_entity",
		--arrow = "esmobs:fireball",
		arrow = "tnt:tnt2_ent",
		--reach = 1,
		shoot_interval = 4.5,

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

