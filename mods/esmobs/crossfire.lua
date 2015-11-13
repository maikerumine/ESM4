--dofile(minetest.get_modpath("crossfiremob").."/api.lua")

bp:register_mob("esmobs:goodnpc", {
	type = "npc",
	hp_min = 35,
	hp_max = 65,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"white.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 55,
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
		{name = "bones:bones",
			chance = 1,
			min = 1,
			max=1,
		},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 70,
	lava_damage = 50,
	light_damage = 0,
	sounds = {
		attack = "default_punch1",
	},
	on_rightclick = nil,
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
	step = 1,
})

bp:register_mob("esmobs:badnpc", {
	type = "monster",
	hp_min = 35,
	hp_max = 65,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"black.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_stone"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 55,
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
		{name = "bones:bones",
			chance = 1,
			min = 1,
			max=1,
		},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 70,
	lava_damage = 50,
	light_damage = 0,
	attack_type = "dogfight",
	sounds = {
		attack = "default_punch3",
	},
	on_rightclick = nil,

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
	step = 1,
})



bp:register_spawn("esmobs:badnpc", {"default:dirt_with_grass","default:desert_sand","default:sand","default:stonebrick","default:cobble"}, 14, -1, 2000, 3, 31000)
bp:register_spawn("esmobs:goodnpc", {"default:dirt_with_grass", "ethereal:green_dirt","default:grass","default:stonebrick","default:cobble"}, 14, -1, 2000, 3, 31000)


if minetest.setting_get("log_mods") then
	minetest.log("action", "crossfiremob loaded")
end
