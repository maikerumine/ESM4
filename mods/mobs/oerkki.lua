-- Oerkki by PilzAdam

mobs:register_mob("mobs:oerkki", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 3,
	hp_min = 8,
	hp_max = 32,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "upright_sprite",
	visual_size = {x=2, y=2},
	textures = {
		"mobs_flat_oerkki_front.png",
		"mobs_flat_oerkki_back.png",
	},
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_oerkki",
	},
	walk_velocity = 0.5,
	run_velocity = 2,
	view_range = 5,
	jump = true,
	drops = {
		{name = "default:junglegrass",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:coal_lump",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:grass_1",
			chance = 2,
			min = 1,
			max=3,
		},
		},
	water_damage = 2,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 60,
	replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	floats = 0,
	--lifetimer=300,
})

--mobs:register_spawn("mobs:oerkki", "group:cracky", 6, 1, 89000, 1, 500, 0)
--mobs:register_spawn_near("mobs:oerkki", "default:stone", 4, -1, 2)
--mobs:register_spawn_bp_near("mobs:oerkki", "default:stone", 4, -1, 2)


--20220628 supress
--[[

mobs:register_spawn("mobs:oerkki", "mobs:cursed_stone", 4, -1, 2, 10, 31000, -5)

mobs:spawn({
	name = "mobs:oerkki",
	nodes = {"default:cobble"},
	neighbors = {"default:mossycobble"},
	chance = 7,
	active_object_count = 1,
	min_height = -22000,
	max_height = -80,
})
]]
--mobs:register_egg("mobs_flat:oerkki", "Oerkki", "default_coal_block.png", 1)
