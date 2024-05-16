--dofile(minetest.get_modpath("badplayer").."/api.lua")
--merged into lag's modified mobs mod
--20200122 maikerumine

--friendly npc drops when right click with gold lump.
mobs.npc_drops = { "default:pick_steel", "mobs:meat", "default:sword_steel", "default:shovel_steel", "farming:bread", "default:wood" }--Added 20151121
mobs.npc2_drops = { "default:pick_mese", "mobs:meat", "default:sword_diamond", "default:pick_diamond", "farming:bread", "default:wood" }--Added 20151121

minetest.register_alias("default:default_apple", "default:apple")
--[[
name = "Sam",
author = "Jordach",
description = "The default skin.",
comment = "Sam Ain't Minecraft",
]]
mobs:register_mob("mobs:Sam", {
	nametag = "Sam",
	type = "npc",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
    collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_1.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 3,
	run_velocity = 3,
	damage = 4,
	drops = {
		{name = "mobs:cooked_rat",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "default:acacia_bush_sapling",
		chance = 4,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 1,
		max=1,
		},
		{name = "default:coral_cyan",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
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
	jump = true,
	fear_height = 10,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Sam> Let's go kick some Mob butt!")
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
			local hp = self.object:get_hp()
			if hp + 4 > self.hp_max then return end
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
				item:take_item()
			self.object:set_hp(hp+4)


		-- right clicking with gold lump drops random item from mobs.npc_drops
		elseif item:get_name() == "default:gold_lump" then
			if not minetest.setting_getbool("creative_mode") then
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
})

mobs:spawn({
	name = "mobs:Sam",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Zeg9",
author = "Zeg9",
description = "My own skin.",
]]
mobs:register_mob("mobs:Zeg9", {
	nametag = "Zeg9",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_2.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 3,
	damage = 4,
	drops = {
		{name = "default:jungletree",
		chance = 1,
		min = 1,
		max = 4,},
		{name = "default:pine_bush_sapling",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "rat",
		chance = 2,
		min = 1,
		max=3,
		},
		{name = "default:coral_pink",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Zeg9",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Alien",
author = "jmf",
]]
mobs:register_mob("mobs:Alien", {
	nametag = "Alien",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_3.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 2,
	damage = 4,
	drops = {
		{name = "default:blueberry_bush_sapling",
		chance = 7,
		min = 3,
		max = 5,},
		{name = "default:sword_stone",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 1,
		min = 1,
		max=5,
		},
		{name = "default:coral_green",
		chance = 10,
		min = 0,
		max = 1,},		
		{name = "flowers:chrysanthemum_green",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
})

mobs:spawn({
	name = "mobs:Alien",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Soldier",
author = "jmf",
]]
mobs:register_mob("mobs:Soldier", {
	nametag = "Soldier",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_4.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:pick_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 3,
	damage = 4,
	drops = {
		{name = "default:aspen_sapling",
		chance = 5,
		min =1,
		max = 1,},
		{name = "default:pick_stone",
		chance = 3,
		min = 1,
		max = 1,},
		{name = "firefly",
		chance = 4,
		min = 1,
		max=10,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
})

mobs:spawn({
	name = "mobs:Soldier",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "John",
author = "jmf",
]]
mobs:register_mob("mobs:John", {
	nametag = "John",
	type = "npc",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_5.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 2,
	damage = 2,
	drops = {
		{name = "default:apple",
		chance = 3,
		min = 1,
		max = 5,},
		{name = "default:acacia_sapling",
		chance = 5,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 1,
		max=4,
		},
		{name = "default:sand_with_kelp",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death2",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<John> Let's go grief some monsters!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
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
})

mobs:spawn({
	name = "mobs:John",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Ninja",
author = "jmf",
]]
mobs:register_mob("mobs:Ninja", {
	nametag = "Ninja",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_6.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_mese"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 3,
	walk_velocity = 3,-- 3,
	run_velocity = 3,-- 4,
	damage = 4,
	drops = {
		{name = "default:mese_crystal",
		chance = 4,
		min = 1,
		max = 1,},
		{name = "default:pine_sapling",
		chance = 5,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 3,
		max=3,
		},
		{name = "flowers:tulip_black",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 50,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	--lifetimer=300,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Ninja",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Oerkki",
author = "jmf",
]]
mobs:register_mob("mobs:Oerkki", {
	nametag = "Oerkki",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_7.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_bronze"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1.2,
	run_velocity = 3,-- 3,
	damage = 4,
	drops = {
		{name = "default:sword_wood",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:paper",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:emergent_jungle_sapling",
		chance = 6,
		min = 1,
		max=2,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Oerkki",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Tux",
author = "jmf",
]]
mobs:register_mob("mobs:Tux", {
	nametag = "Tux",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_8.png",
				"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 1.5,
	damage = 4,
	drops = {
		{name = "default:snow",
		chance = 5,
		min = 3,
		max = 6,},
		{name = "default:sword_stone",
		chance = 3,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 4,
		min = 1,
		max=7,
		},
		{name = "flowers:waterlily",
		chance = 8,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Tux",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Black belt",
author = "jmf",
]]
mobs:register_mob("mobs:Blackbelt", {
	nametag = "Blackbelt",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_9.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_bronze"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 3,
	damage = 4,
	drops = {
		{name = "default:sword_wood",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:marram_grass_1",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "default:apple",
		chance = 1,
		min = 1,
		max=2,
		},
		{name = "flowers:mushroom_brown",
		chance = 8,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Blackbelt",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Assassin",
author = "jmf",
]]
mobs:register_mob("mobs:Assassin", {
	nametag = "Assassin",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_10.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_mese"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3,-- 2,
	run_velocity = 3,-- 5,
	damage = 4,
	drops = {
		{name = "flowers:dandelion_white",
		chance = 10,
		min = 0,
		max = 1,},
		
		{name = "flowers:dandelion_yellow",
		chance = 10,
		min = 0,
		max = 1,},
		
		{name = "flowers:geranium",
		chance = 10,
		min = 0,
		max = 1,},
		
		{name = "flowers:rose",
		chance = 10,
		min = 0,
		max = 1,},
		
		{name = "flowers:tulip",
		chance = 10,
		min = 0,
		max = 1,},
		
		{name = "flowers:viola",
		chance = 10,
		min = 0,
		max = 1,},

		{name = "default:coral_cyan",
		chance = 3,
		min = 1,
		max = 1,},
		{name = "default:sword_mese",
		chance = 4,
		min = 1,
		max=1,
		},
	},
	armor = 70,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Assassin",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Harry",
author = "jmf",
]]
mobs:register_mob("mobs:Harry", {
	nametag = "Harry",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_11.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 5,
	damage = 4,
	drops = {
		{name = "default:sapling",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "default:sword_steel",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 13,
		max=30,
		},
		{name = "flowers:viola",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Harry",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Bob",
author = "Chinchow",
]]
mobs:register_mob("mobs:Bob", {
	nametag = "Bob",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_12.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 0.3,
	run_velocity = 3,-- 1.5,
	damage = 2,
	drops = {
		{name = "default:grass_1",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_wood",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 13,
		max=30,
		},
		{name = "flowers:tulip",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Bob",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Jannette",
author = "Chinchow",
]]
mobs:register_mob("mobs:Jannette", {
	nametag = "Jannette",
	type = "npc",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_13.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:stick"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1.6,
	run_velocity = 3,-- 2.5,
	damage = 1,
	drops = {
		{name = "default:leaves",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:sword_stone",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 1,
		max=3,
		},
		{name = "flowers:rose",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_oerkki_attack",
		death = "mobs_death1",
		attack = "default_punch",
	},
	attacks_monsters = false,
	peaceful = true,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	follow = "default:apple",
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Jannette> Stop flirting with me!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
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
})

mobs:spawn({
	name = "mobs:Jannette",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Sheriff",
author = "Chinchow",
]]
mobs:register_mob("mobs:Sheriff", {
	nametag = "Sheriff / Crybaby",
	type = "npc",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_14.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 2,
	damage = 2,
	drops = {
		{name = "default:papyrus",
		chance = 3,
		min = 1,
		max = 3,},
		{name = "default:sword_stone",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 1,
		max=3,
		},
		{name = "flowers:geranium",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_death1",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Crybaby> I am too whimpy to fight mobs, but I can do my best!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
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
})

mobs:spawn({
	name = "mobs:Sheriff",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Sepia Sam",
author = "Hybrid Dog",
]]
mobs:register_mob("mobs:Sepia_Sam", {
	nametag = "Sepia_Sam",
	type = "npc",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_15.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_mese"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 7,
	walk_velocity = 3,-- 1.3,
	run_velocity = 3,-- 3.9,
	damage = 4,
	drops = {
		{name = "default:sword_mese",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "default:cactus",
		chance = 8,
		min = 0,
		max = 1,},
		{name = "default:apple",
		chance = 2,
		min = 1,
		max=3,
		},
		{name = "flowers:dandelion_yellow",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death2",
		attack = "default_punch3",
	},
	attacks_monsters = true,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Sepia Sam> MESE sword + Monster = My pleasure!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
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
})

mobs:spawn({
	name = "mobs:Sepia_Sam",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Hybrid Sam",
author = "Hybrid Dog",
]]
mobs:register_mob("mobs:Hybrid_Sam", {
	nametag = "Hybrid_Sam",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_16.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_wood"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 1.4,
	damage = 2,
	drops = {
		{name = "default:pick_wood",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:sword_wood",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 1,
		max=5,
		},
		{name = "flowers:dandelion_white",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
})

mobs:spawn({
	name = "mobs:Hybrid_Sam",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Original Sam",
author = "Jordach",
]]
mobs:register_mob("mobs:Original_Sam", {
	nametag = "Original_Sam",
	type = "npc",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_17.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 2.3,
	damage = 2,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 3,},
		{name = "default:sword_wood",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 0,
		max=2,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death1",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<O.G. Sam> Mobs, let me at 'em, I'll splat 'em!!!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
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
})

mobs:spawn({
	name = "mobs:Original_Sam",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Unnamed",
author = "Hybrid Dog",
]]
mobs:register_mob("mobs:Unnamed", {
	nametag = "Unnamed",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_18.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_stone"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 2,
	damage = 4,
	drops = {
		{name = "default:pick_stone",
		chance = 4,
		min = 0,
		max = 1,},
		{name = "default:sword_stone",
		chance = 4,
		min = 0,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 2,
		max=4,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
})

mobs:spawn({
	name = "mobs:Unnamed",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "VanessaE",
author = "Jordach",
comment = "Actually based from an old picture",
]]
mobs:register_mob("mobs:VanessaE", {
	nametag = "VanessaE",
	type = "npc",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_19.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 3,-- 0.6,
	run_velocity = 3,-- 1.8,
	damage = 4,
	drops = {
		{name = "default:torch",
		chance = 1,
		min = 1,
		max = 5,},
		{name = "default:sword_steel",
		chance = 10,
		min = 0,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 2,
		max=3,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "default_punch",
		death = "mobs_slash_attack",
		attack = "default_punch",
	},
	attacks_monsters = false,
	peaceful = true,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Vanessa> I'll code out the very instance of those mobs!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
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
})

mobs:spawn({
	name = "mobs:VanessaE",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Female Sam",
author = "Jordach",
]]
mobs:register_mob("mobs:Female_Sam", {
	nametag = "Female_Sam",
	type = "npc",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_20.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:pick_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1.7,
	run_velocity = 3,-- 2.5,
	damage = 4,
	drops = {
		{name = "default:pick_stone",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:sword_stone",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 13,
		max=30,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_stone",
		death = "mobs_slash_attack",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = true,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Female Sam> Minetest is the greatest voxel game ever created!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
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
})

mobs:spawn({
	name = "mobs:Female_Sam",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Battlefield 3 Soldier",
author = "Jordach",
]]
mobs:register_mob("mobs:Battlefield_3_Soldier", {
	nametag = "Battlefield_3_Soldier",
	type = "npc",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_21.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:pick_mese"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 4,
	walk_velocity = 3,-- 2.5,
	run_velocity = 3,-- 7,
	damage = 4,
	drops = {
		{name = "default:pick_stone",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:sword_stone",
		chance = 3,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 1,
		max=3,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch3",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Battlefield 3 Soldier> All suited up, let's roll out and destroy those creatures!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
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
})

mobs:spawn({
	name = "mobs:Battlefield_3_Soldier",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Smooth Sam",
author = "Jordach",
]]
mobs:register_mob("mobs:Smooth_Sam", {
	nametag = "Smooth_Sam",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_22.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 3,
	run_velocity = 3,-- 3,
	damage = 4,
	drops = {
		{name = "default:chest",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "default:sword_stone",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:clay_brick",
		chance = 2,
		min = 3,
		max=5,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
})

mobs:spawn({
	name = "mobs:Smooth_Sam",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Celeron55",
author = "Jordach",
comment = "Based on a picture from the wiki.",
]]
mobs:register_mob("mobs:Celeron55", {
	nametag = "Celeron55",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_23.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 7,
	walk_velocity = 3,-- 1.3,
	run_velocity = 3,-- 3.5,
	damage = 4,
	drops = {
		{name = "default:junglesapling",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:sword_stone",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 1,
		max=3,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Celeron55",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Tuxedo Sam",
author = "Jordach",
]]
mobs:register_mob("mobs:Tuxedo_Sam", {
	nametag = "Tuxedo_Sam",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_24.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1.5,
	run_velocity = 3,-- 3,
	damage = 4,
	drops = {
		{name = "default:junglegrass",
		chance = 6,
		min = 0,
		max = 1,},
		{name = "default:sword_stone",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 1,
			max=3,
		},
	},
	armor = 60,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
})

mobs:spawn({
	name = "mobs:Tuxedo_Sam",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Iron Man MK. 7",
author = "Jordach",
]]
mobs:register_mob("mobs:Iron_Man_MK_7", {
	nametag = "Iron_Man_MK_7",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_25.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:pick_diamond"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 12,
	walk_velocity = 3,-- 2,
	run_velocity = 3,-- 3,
	damage = 4,
	drops = {
		{name = "default:pick_stone",
		chance = 4,
		min = 0,
		max = 1,},
		{name = "default:sword_wood",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 1,
		max=3,
		},
	},
	armor = 65,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Iron_Man_MK_7",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Jordach",
author = "Jordach",
]]
mobs:register_mob("mobs:Jordach", {
	nametag = "Jordach",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_26.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:axe_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 2,
	damage = 4,
	drops = {
		{name = "default:axe_stone",
		chance = 3,
		min = 1,
		max = 1,},
		{name = "default:sword_stone",
		chance = 5,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 1,
		max=3,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,	
})

mobs:spawn({
	name = "mobs:Jordach",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Max",
author = "Stuart Jones",
]]
mobs:register_mob("mobs:Max", {
	nametag = "Max",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_27.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_diamond"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 3,-- 2,
	run_velocity = 3,-- 4,
	damage = 4,
	drops = {
		{name = "default:sword_stone",
		chance = 4,
		min = 1,
		max = 1,},
		{name = "default:sword_wood",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 1,
		min = 1,
		max=3,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
})

mobs:spawn({
	name = "mobs:Max",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Slenderman",
author = "prof_turbo",
]]
mobs:register_mob("mobs:Slenderman", {
	nametag = "Slenderman",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_28.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_steel"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 3,-- 0.5,
	run_velocity = 3,-- 1.5,
	damage = 4,
	drops = {
		{name = "default:obsidian_shard",
		chance = 5,
		min = 3,
		max = 5,},
		{name = "default:sword_stone",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
		chance = 2,
		min = 1,
		max=3,
		},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:Slenderman",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "Strange Killer",
author = "prof_turbo",
]]
mobs:register_mob("mobs:Strange_Killer", {
	nametag = "Strange_Killer",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_29.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_stone"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 2,
	damage = 4,
	drops = {
		{name = "butterflies:butterfly_white",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "butterflies:butterfly_red",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "butterflies:butterfly_violet",
		chance = 7,
		min = 0,
		max=1,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
})

mobs:spawn({
	name = "mobs:Strange_Killer",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "jojoa1997",
author = "jojoa1997",
]]
mobs:register_mob("mobs:jojoa1997", {
	nametag = "jojoa1997",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_30.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_mese"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 5,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 6,
	damage = 4,
	drops = {
		--{name = "default:scorched_stuff",
		{name = "flowers:mushroom_red",
		chance = 10,
		min = 1,
		max = 3,},
		{name = "default:sword_stone",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:default_apple",
		chance = 2,
		min = 2,
		max=6,
		},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
	
})

mobs:spawn({
	name = "mobs:jojoa1997",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
name = "DrakeOfDuty",
author = "jmfApprentice Prince",
]]
mobs:register_mob("mobs:DrakeOfDuty", {
	nametag = "DrakeOfDuty",
	type = "monster",
	docile_by_day = true,
	pathfinding = 1,
	hp_min = 25,	
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_31.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:stick"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 5,
	walk_velocity = 3,-- 1,
	run_velocity = 3,-- 6,
	damage = 4,
	drops = {
		--{name = "default:scorched_stuff",
		{name = "flowers:mushroom_red",
		chance = 10,
		min = 1,
		max = 3,},
		{name = "default:glass",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:cobble",
		chance = 2,
		min = 2,
		max=6,
		},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 5,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		die_start = 160,
		die_end = 162,  --170
		die_speed = 15,
		die_loop = false,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
	},
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	jump = true,
	fear_height = 10,
})

mobs:spawn({
	name = "mobs:DrakeOfDuty",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 6,
	interval = 330,
	chance = 29000,
	active_object_count = 1,
	min_height = -5,
	max_height = 1000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
--[[
if minetest.setting_get("log_mods") then
	minetest.log("action", "Maikerumine's BadPlayer mobs locked and loaded")
end
]]