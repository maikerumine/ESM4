
--Maikerumine added drcube for his world needs

mobs:register_mob("mobs:Nyancat", {
	type = "npc",
	pathfinding = 1,	
	hp_max = 2000,
	collisionbox = {-0.2, -0.4, -0.2, 0.2, 0.2, 0.2},
	visual_size = {x=0.65, y=0.65},
	textures = {
	{"nyancat_side.png", "nyancat_side.png", "nyancat_side.png",
		"nyancat_side.png", "nyancat_back.png", "nyancat_front.png"},
	},
	visual = "cube",
	--blood_texture ="nyancat_front.png",
	blood_texture ="nyancat_rainbow.png",
	rotate = 180,
    --collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	--visual = "mesh",
	--mesh = "3d_armor_character.x",
	--textures = {"character_32.png",
	--		"3d_armor_trans.png",
	--			minetest.registered_items["default:pick_diamond"].inventory_image,
	--		},
	--visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 60,	---65
	--walk_velocity = 8.5,
	walk_velocity = 0.0,
	--run_velocity = 30,
	run_velocity = 0.0,
	floats = 1,
--	fly = true,
--	fly_in = "air",
	damage = 8,
	drops = {
		{name = "nyancat:nyancat_rainbow",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "nyancat:nyancat",
			chance = 7,
			min = 0,
			max=1,
		},
	},
	armor = 20,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	on_rightclick = nil,
	--attack_type = "dogfight",
	--attack_type = "dogshoot",
	attack_type = "shoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 11, -- shoot for 10 seconds
	dogshoot_count2_max = 3, -- dogfight for 3 seconds
	--shoot_interval = 0.1,
	--shoot_interval = 0.35,
	shoot_interval = 0.25,
	arrow = "mobs:rainbow",
	shoot_offset = 1,
	lifetimer=10,
	animation = {
		speed_normal = 12,
		speed_run = 60,
		stand_start = 0,		--0
		stand_end = 79,		--79
		walk_start = 168,		--168
		walk_end = 187,			--187
		run_start = 168,		--168
		run_end = 187,			--187
		punch_start = 189,		--189
		punch_end = 190,		--198
	},
	sounds = {
		--random = "mobs_omsk",
		--random = "MinigunSpinLoop",
		attack = "MinigunLoop",
		--war_cry = "MinigunStartup",
		--shoot_attack = "laser_sound",
		shoot_attack = "MinigunStartup",
		--damage = "MinigunStartup",
		--jump = "MinigunWindDown",
		death = "MinigunWindDown",
	},
	attacks_monsters = true,
	attack_npcs = false,
	peaceful = true,
	group_attack = true,
	group_helper = {"mobs:Griefer_Garry"},
	step = 10,
	jump = true,
	jump_height = 15,
	jump_chance = 5,
	fear_height = 120,	
})

--mobs:register_spawn("mobs:Dr_Cube", "group:crumbly", 6, 1, 12000, 1, 500, 0)
--mobs:register_spawn_near("mobs:Dr_Cube", "default:dirt", 4, -1, 2)
--mobs:register_spawn("mobs:Dr_Cube", "mobs:testing_spawner", 4, -1, 1, 100, 500, -500)
mobs:spawn({
	name = "mobs:Nyancat",
	nodes = {"nyancat:nyancat"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 15,
	--interval = 1000,
	interval = 10,
	chance = 1,
	active_object_count = 1,
	min_height = -20,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})



-- fireball (weapon)
mobs:register_arrow("mobs:rainbow", {
	visual = "sprite",
	visual_size = {x = 0.75, y = 0.75},
	textures = {"nyancat_rainbow.png"},
	velocity = 60,
	tail = 1,
	tail_texture = "nyancat_rainbow.png",
	tail_size = 2,
	glow = 9,
	--expire = 0.1,
	expire = 0.1,
	drop = true,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 0},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			--damage_groups = {fleshy = 10},
			damage_groups = {fleshy = 100},
		}, nil)
	end,

	-- node hit, bursts into flame
	--hit_node = function(self, pos, node)
	--	mobs:explosion(pos, 1, 1, 0)
	--end
})



--if minetest.setting_get("log_mods") then
	minetest.log("action", "Nyan mob loaded")
--end
