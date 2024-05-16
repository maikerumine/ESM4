
--Andrey created mob for his world needs
--Maikerumine added badplayer for his world needs

mobs:register_mob("mobs:griefer_ghost", {
	type = "monster",
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_oerkki.x",
	textures = {"mobs_oerkki.png"},
	visual_size = {x=5, y=5},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "default:grass_1",
		chance = 20,
		min = 1,
		max = 2,},
	},
	armor = 100,
	drawtype = "front",
	light_resistant = true,
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
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
	follow="",
	jump=true,
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 60,
	floats = 0,
	
})

mobs:spawn({
	name = "mobs:griefer_ghost",
	nodes = {"group:cracky", "default:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 4,
	interval = 30,
	chance = 5000,
	active_object_count = 2,
	min_height = -22000,
	max_height = -80,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

minetest.register_node("mobs:cursed_stone", {
	description = "Cursed stone",
	tiles = {
		"mobs_cursed_stone_top.png",
		"mobs_cursed_stone_bottom.png",
		"mobs_cursed_stone.png",
		"mobs_cursed_stone.png",
		"mobs_cursed_stone.png",
		"mobs_cursed_stone.png"
	},
	is_ground_content = false,
	groups = {cracky=1, level=2},
	drop = 'default:goldblock',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'mobs:cursed_stone',
	recipe = {
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
		{'default:obsidian', 'default:goldblock', 'default:obsidian'},
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
	}
})

mobs:register_spawn("mobs:griefer_ghost", "mobs:cursed_stone", 4, -1, 2, 10, 500, -500)
--[[
mobs:spawn({
	name = "mobs:griefer_ghost",
	nodes = {"mobs:cursed_stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 4,
	interval = 10,
	chance = 100,
	active_object_count = 5,
	min_height = -31000,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
]]
--[[
if minetest.setting_get("log_mods") then
	minetest.log("action", "griefer ghost mobs loaded")
end
]]
