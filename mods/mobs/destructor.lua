
--Maikerumine added drcube for his world needs

mobs:register_mob("mobs:Destructor", {
	type = "monster",
	pathfinding = 2,	
	hp_max = 50,
	blood_texture ="mobs_speaker.png",
	visual_size = {x=2, y=2},
	visual = "mesh",
    collisionbox = {-0.4, 0.0, -0.4, 0.4, 0.9, 0.4},
    visual = "mesh",
    mesh = "mobs_mc_squid.b3d",
    textures = {
        {"mobs_dark_squid.png"}
    },
	makes_footstep_sound = true,
	view_range = 60,	---65
	walk_velocity = 2.0,
	run_velocity = 4.0,
	floats = 1,
	fly = true,
	fly_in = "air",
	damage = 2,
	drops = {
		{name = "mobs:meatblock",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "mobs:leather",
			chance = 1,
			min = 0,
			max=1,
		},
	},
	armor = 80,
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	on_rightclick = nil,
	--attack_type = "dogfight",
	attack_type = "dogshoot",
	--attack_type = "shoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 3, -- shoot for 10 seconds
	dogshoot_count2_max = 5.5, -- dogfight for 3 seconds
	shoot_interval = 0.35,
	arrow = "mobs:rocket",
	shoot_offset = 1,
    animation = {
		stand_start = 1,
		stand_end = 60,
		walk_start = 1,
		walk_end = 60,
		run_start = 1,
		run_end = 60,
	},
	sounds = {
		random = "mobs_ratzilla",
		attack = "mobs_mc_ender_dragon_attack",
		war_cry = "mobs_mc_wither_spawn",
		shoot_attack = "mobs_fireball",
		damage = "mobs_mc_squid_hurt.1",
		jump = "green_slime_jump",
		death = "mobs_mc_vex_death",
	},
	attacks_monsters = false,
	attack_npcs = true,
	peaceful = false,
	group_attack = true,
	group_helper = {"mobs:rat"},
	step = 10,
	jump = true,
	jump_height = 15,
	jump_chance = 5,
	fear_height = 120,	
})


-- fireball (weapon)
mobs:register_arrow("mobs:rocket", {
	visual = "sprite",
	visual_size = {x = 0.75, y = 0.75},
	textures = {"mobs_flat_fireball.png"},
	velocity = 60,
	tail = 1,
	tail_texture = "mcl_particles_effect.png",
	tail_size = 2,
	glow = 9,
	expire = 0.1,
	drop = true,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 1},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 10},
		}, nil)
	end,

	-- node hit, bursts into flame
--	hit_node = function(self, pos, node)
		--mobs:explosion(pos, 1, 1, 0)
--		mobs:explosion(pos, 1, 10, 0)
--	end
})

mobs:spawn({
	name = "mobs:Destructor",
	nodes = {"es:strange_grass","es:aiden_grass"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 170000,
	active_object_count = 1,
	min_height = 5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

--mobs:register_egg("mobs:Destructor", "Destructor", "mobs_cursed_stone_top.png", 1)
--[[
if minetest.setting_get("log_mods") then
	minetest.log("action", "Destructor mob loaded")
end
]]