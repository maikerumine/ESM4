
--Maikerumine added sirenhead for his world needs

mobs:register_mob("mobs:sirenhead", {
	type = "monster",
	passive = false,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 3, -- shoot for 10 seconds
	dogshoot_count2_max = 4, -- dogfight for 3 seconds
	shoot_interval = 2,
	arrow = "mobs:speaker",
	pathfinding = true,
	reach = 4,
	damage = 2,
	hp_min = 80,
	hp_max = 160,
	armor = 70,
	collisionbox = {-0.4, -10, -0.4, 0.4, 10.9, 0.4},
	visual = "upright_sprite",
	visual_size = {x=6, y=20},
	textures = {
		"mobs_flat_sirenhead_front.png",
		"mobs_flat_sirenhead_back.png",
	},
	makes_footstep_sound = true,
	sounds = {
		random = "sirenhead_main",
		attack = "sirenhead_shoot",
		war_cry = "sirenhead_shoot",
		damage = "sirenhead_damage",
		jump = "sirenhead_shoot",
		death = "sirenhead_death",
	},
	shoot_offset = 2,
	walk_velocity = 4,
	run_velocity = 10,
	view_range = 30,
	step = 10,
	jump = true,
	jump_height = 15,
	jump_chance = 5,
	drops = {
		{name = "default:junglesapling",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:sapling",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "mobs:speaker",
		chance = 20,
		min = 1,
		max=3,
		},
		},
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fear_height = 20,
	floats = 0,
})


-- speaker (weapon)
mobs:register_arrow("mobs:speaker", {
	visual = "sprite",
	--drawtype = "side",
	visual_size = {x = 1.8, y = 1.8},
	--textures = {"mobs_speaker.png^[transformR90"},
	textures = {"mobs_speaker.png"},
	velocity = 18,
	expire = 0.1,
	drop = true,
--	on_step = function(self)
		-- fall down
--		local acceleration = self.object:get_acceleration()
--		if not vector.equals(acceleration, {x = 0, y = -0.51, z = 0}) then
--			self.object:set_acceleration({x = 0, y = -0.51, z = 0})
--		end
--	end,
	
	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 2},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 2},
		}, nil)
	end,
})


--20220628 supress

mobs:spawn({
	name = "mobs:sirenhead",
	nodes = {"es:dry_dirt", "default:dry_dirt"},
	chance = 27,
})

--mobs:register_egg("mobs_flat:sirenhead", "sirenhead", "default_desert_sand.png", 1)
