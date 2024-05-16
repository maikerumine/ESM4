mobs:register_mob("mobs:omsk", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 1,
	damage = 3,
	hp_min = 16,
	hp_max = 32,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "upright_sprite",
	visual_size = {x=2, y=2},
	textures = {
		"mobs_flat_omsk_front.png",
		"mobs_flat_omsk_back.png",
	},
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_omsk",
	},
	walk_velocity = 1,
	run_velocity = 3,
	view_range = 10,
	jump = true,
	drops = {
		{name = "flowers:mushroom_red",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:default_apple",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:cactus",
			chance = 2,
			min = 1,
			max=3,
		},
		},
	water_damage = 1,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 4,
	floats = 0,
	--lifetimer=300,
})

--mobs:register_spawn("mobs:omsk", "group:cracky", 6, 1, 89000, 1, 500, 0)
--mobs:register_spawn_bp_near("mobs:omsk", "default:stone", 4, -1, 2)
--mobs:register_spawn("mobs:omsk", "default:stone", 3, -1, 89000, 4, 500, 0)

--20220628 supress
--[[
mobs:spawn({
	name = "mobs:omsk",
	nodes = {"default:cobble", "default:mossycobble"},
	neighbors = {"default:stone_with_iron"},
	chance = 7,
	active_object_count = 1
})
]]

--mobs:register_egg("mobs_flat:omsk", "Omsk", "wool_red.png", 1)
