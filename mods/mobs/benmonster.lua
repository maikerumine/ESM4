
--Maikerumine added ben monster for his world needs

--ben monster

mobs:register_mob("mobs:ben_monster", {
	type = "monster",
	nametag = "Big Ben",	
	hp_min = 140,	
	hp_max = 155,
	collisionbox = {-0.3, -2.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"bens_mons.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_purpellium"].inventory_image,
			},
	visual_size = {x=2.0, y=2.0},
	makes_footstep_sound = true,
	view_range = 25,	---65
	walk_velocity = 2,
	run_velocity = 4.2,
	damage = 4,
	drops = {
		{name = "farming:bread",
		chance = 9,
			min = 1,
			max = 4,},
		{name = "default:apple",
		chance = 2,
			min = 1,
			max = 1,},
		{name = "default:stick",
			chance = 2,
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
		random = "bens2",
		war_cry = "bens2",
		death = "heads_ow",
		hurt = "heads_ow",
		damage = "heads_ow",
		attack = "mobs_swing",
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
		mayghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		mayghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		mayghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		mayghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		mayghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		mayghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		mayghost = minetest.add_entity(self.object:getpos(), "mobs:rat")
		ent = mayghost:get_luaentity()
		
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
--[[
mobs:spawn({
	name = "mobs:ben_monster",
	nodes = {"default:cobblestone","default:cobble"},
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
]]

--[[
if minetest.setting_get("log_mods") then
	minetest.log("action", "Family mobs loaded")
end
]]