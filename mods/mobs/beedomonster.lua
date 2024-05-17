
--Maikerumine added beedo monster for his world needs

--Beedo Mobs

mobs:register_mob("mobs:beedo_monster", {
	type = "monster",
	nametag = "Beedo",	
	hp_min = 140,	
	hp_max = 155,
	collisionbox = {-0.3, -4.0, -0.3, 0.3, 1.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"beedo_mons.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:beedo_hammer"].inventory_image,
			},
	visual_size = {x=4.0, y=4.0},
	makes_footstep_sound = true,
	view_range = 25,	---65
	walk_velocity = 2,
	run_velocity = 4.2,
	damage = 4,
	drops = {
		{name = "es:pick_beedo_hammer",
		chance = 5,
			min = 1,
			max = 1,},
		{name = "default:apple",
		chance = 0,
			min = 1,
			max = 1,},
		{name = "default:stick",
			chance = 0,
			min = 1,
			max=1,
		},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	jump = true,
	sounds = {
		--random = "beedo2",
		--war_cry = "beedo2",
		death = "beedo2",
		hurt = "beedo2",
		damage = "beedo2",
		--attack = "beedo2",
	},
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
	fear_height = 10,
	on_die = function(self, pos)
		beedoghost = minetest.add_entity(self.object:getpos(), "mobs:beedo_mini_monster")
		beedoghost = minetest.add_entity(self.object:getpos(), "mobs:beedo_mini_monster")
		beedoghost = minetest.add_entity(self.object:getpos(), "mobs:beedo_mini_monster")
		beedoghost = minetest.add_entity(self.object:getpos(), "mobs:beedo_mini_monster")
		beedoghost = minetest.add_entity(self.object:getpos(), "mobs:beedo_mini_monster")
		beedoghost = minetest.add_entity(self.object:getpos(), "mobs:beedo_mini_monster")
		beedoghost = minetest.add_entity(self.object:getpos(), "mobs:beedo_mini_monster")
		ent = beedoghost:get_luaentity()
	
		minetest.add_particlespawner({
			amount = 1920,
			time = 3.25,
			minpos = pos,
			maxpos = pos,
			minvel = {x = -2, y = -0.25, z = -2},
			maxvel = {x = 2, y = 2, z = 2},
			minacc = {x = 0, y = 1, z = 0},
			maxacc = {x = 2, y = 10, z = 2},
			minexptime = 0.1,
			maxexptime = 3,
			minsize = 1.5,
			maxsize = 3.0,
			texture = "mobs_chicken_egg.png",
		})		
	end,	
	
})

mobs:register_mob("mobs:beedo_mini_monster", {
	type = "monster",
	nametag = "Mini Beedo",	
	hp_min = 12,	
	hp_max = 19,
	collisionbox = {-0.15, -0.25, -0.15, 0.15, 0.15, 0.15},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"beedo_mons.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:beedo_hammer"].inventory_image,
			},
	visual_size = {x=0.25, y=0.25},
	makes_footstep_sound = true,
	view_range = 25,	---65
	walk_velocity = 2,
	run_velocity = 3,
	damage = 1,
	drops = {
		{name = "default:apple",
		chance = 2,
			min = 1,
			max = 1,},
		{name = "default:stick",
			chance = 1,
			min = 1,
			max=1,
		},
	},
	armor = 90,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	jump = true,
	sounds = {
		random = "mobs_spider",
		--war_cry = "yumi1",
		death = "yumi2",
		attack = "mobs_slash_attack",
	},
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
	step = 3,
	fear_height = 3,
		
})

mobs:spawn({
	name = "mobs:beedo_monster",
	--nodes = {"default:clay", "cblocks:stone_orange", "cblocks:stone_yellow", "es:beedo_block"},
	nodes = {"default:sand", "cblocks:stone_orange", "cblocks:stone_brown"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 5,
	interval = 30,
	chance = 15000,
	active_object_count = 1,
	min_height = -50,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})


--[[
if minetest.setting_get("log_mods") then
	minetest.log("action", "Family mobs loaded")
end
]]