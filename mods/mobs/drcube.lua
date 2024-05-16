
--Maikerumine added drcube for his world needs

mobs:register_mob("mobs:Dr_Cube", {
	nametag = "Dr. Cube",
	type = "monster",		
	hp_min = 25,	
	hp_max = 55,
    collisionbox = {-0.3, -2.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_32.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:pick_diamond"].inventory_image,
			},
	visual_size = {x=2.0, y=2.0},
	makes_footstep_sound = true,
	view_range = 55,	---65
	walk_velocity = 1.5,
	run_velocity = 4,
	damage = 6,
	drops = {
		{name = "cooked_rat",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "default:sword_diamond",
		chance = 0,
		min = 1,
		max = 1,},
		{name = "default:mese",
			chance = 0,
			min = 1,
			max=1,
		},
		{name = "flowers:dandelion_white",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "flowers:dandelion_yellow",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "flowers:geranium",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "flowers:rose",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "flowers:tulip",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "flowers:viola",
		chance = 5,
		min = 0,
		max = 1,},
	},
	armor = 90,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
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
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		random = "mobs_sheep",
		attack = "bloco",
		war_cry = "grr",
		--shoot_attack = "rocks",
		damage = "default_punch3",
		jump = "mobs_slash_attack",
		death = "phoenix",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = 4,
	fear_height = 30,
	floats = 1,
	--fly = true,
	--fly_in = "default:water_source",
	--keep_flying = false,
})



mobs:spawn({
	name = "mobs:Dr_Cube",
--	nodes = {"group:flora", "default:dirt_with_grass"},
	nodes = {"default:dirt_with_grass"},
--	neighbors = {"air"},
	neighbors = {"group:flora"},
	min_light = 0,
	max_light = 6,
	interval = 30,
	chance = 12000,
	active_object_count = 1,
	min_height = -6000,
	max_height = 23000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})



--[[
if minetest.setting_get("log_mods") then
	minetest.log("action", "Dr Cube mob loaded")
end
]]