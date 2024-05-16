
--Maikerumine added drcube for his world needs
--[[
mobs:register_mob("mobs:Nyancat_War_Machine", {
	nametag = "Nyancat War Machine",
	type = "npc",
	pathfinding = 1,	
	hp_max = 4000,
	--collisionbox = {-0.2, -0.9, -0.2, 0.2, 0.2, 0.2},
	collisionbox = {-0.2, -0.2, -0.2, 0.2, 0.2, 0.2},
	--visual_size = {x=1.65, y=1.65},
	visual_size = {x=0.25, y=0.25},
	textures = {
	{"nyancat_war_machine_side.png", "nyancat_war_machine_side.png", "nyancat_war_machine_side.png",
		"nyancat_war_machine_side.png", "nyancat_war_machine_back.png", "nyancat_war_machine_front.png"},
	},
	visual = "cube",
	--blood_texture ="nyancat_front.png",
	blood_texture ="nyancat_war_machine_rainbow.png",
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
	walk_velocity = 5.0,
	--run_velocity = 30,
	run_velocity = 12.0,
	floats = 1,
	--fly = true,
	--fly_in = "air",
	replace_what = "default:water_source",
	replace_with = "bones:bones",
	replace_rate = 1,
	replace_offset = 1,
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
	lava_damage = 200,
	light_damage = 0,
	--on_rightclick = nil,
	on_rightclick = function(self, clicker)
		self.object:remove()
		--mobs:capture_mob(self, clicker, 50, 90, 0, true, "mobs_animal:rat")
	end,



	
	--attack_type = "dogfight",
	attack_type = "dogshoot",
	--attack_type = "shoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 3, -- shoot for 10 seconds
	dogshoot_count2_max = 5.5, -- dogfight for 3 seconds
	shoot_interval = 0.1,
	arrow = "mobs:rainbow_heavy",
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
		--random = "mobs_sheep",
		shoot_attack = "rifle_shoot",
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
	name = "mobs:Nyancat_War_Machine",
	nodes = {"mobs:nyancat_war_machine_loader"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 15,
	interval = 500,
	chance = 1,
	active_object_count = 1,
	min_height = -2000,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})



-- fireball (weapon)
mobs:register_arrow("mobs:rainbow_heavy", {
	visual = "sprite",
	visual_size = {x = 0.75, y = 0.75},
	textures = {"nyancat_war_machine_rainbow.png"},
	velocity = 60,
	tail = 1,
	tail_texture = "nyancat_war_machine_rainbow.png",
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
			damage_groups = {fleshy = 10},
		}, nil)
	end,

	-- node hit, bursts into flame
	hit_node = function(self, pos, node)
		--mobs:explosion(pos, 1, 1, 0)
	end
})
]]
minetest.register_node("mobs:nyancat_war_machine_loader", {
	description = "Nyancat War Machine Loader  -=WILL \nDESTROY  \nEVERYTHING  \nUse with caution=- \nRight click mob to deactivate.",
	--tiles = {"default_water.png^player.png^gui_furnace_arrow_fg.png^treeprop.png^heart.png"},
		tiles = {
	"nyancat_war_machine_side.png",
	"nyancat_war_machine_side.png",
	"nyancat_war_machine_side.png",
	"nyancat_war_machine_side.png",
	"nyancat_war_machine_back.png",
	"nyancat_war_machine_front.png"
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	--walkable = false,
	light_source = default.LIGHT_MAX-7,
	groups = {immortal=1,cracky=1,not_in_creative_inventory = 0},
	sounds = default.node_sound_stone_defaults(),
})

	minetest.register_craft({
		output = "mobs:nyancat_war_machine_loader",
		recipe = {
			{"nyancat:nyancat_rainbow","nyancat:nyancat_rainbow","nyancat:nyancat_rainbow"},
			{"nyancat:nyancat_rainbow","nyancat:nyancat","nyancat:nyancat_rainbow"},
			{"nyancat:nyancat_rainbow","nyancat:nyancat_rainbow","nyancat:nyancat_rainbow"},
		}
	})
	
	
if minetest.setting_get("log_mods") then
	minetest.log("action", "Nyan War Machine mob loaded")
end
