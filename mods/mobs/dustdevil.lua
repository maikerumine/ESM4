mobs:register_mob("mobs:dustdevil", {
	type = "monster",
	passive = false,
	attack_type = "shoot",
	--attack_type = "dogfight",
	dogshoot_switch = 1,
	dogshoot_count_max = 10, -- shoot for 10 seconds
	dogshoot_count2_max = 3, -- dogfight for 3 seconds
	reach = 1,
	shoot_interval = 2,
	arrow = "mobs:spear",
	pathfinding = true,
	reach = 2,
	damage = 4,
	hp_min = 8,
	hp_max = 16,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "upright_sprite",
	visual_size = {x=2, y=2},
	textures = {
		"mobs_flat_dustdevil_front.png",
		"mobs_flat_dustdevil_back.png",
	},
	makes_footstep_sound = false,
	sounds = {
		--random = "mobs_dustdevil",
		random = "creatures_possess",
		shoot_attack = "shooter_throw",
	},
	shoot_offset = 2,
	walk_velocity = 1,
	run_velocity = 3,
	view_range = 10,
	jump = true,
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
	water_damage = 1,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 4,
	floats = 0,
	--lifetimer=300,
})

-- spear (weapon)
mobs:register_arrow("mobs:spear", {
	visual = "sprite",
	--drawtype = "side",
	visual_size = {x = 1.8, y = 1.8},
	--textures = {"nodetest_spearwood.png"},
	textures = {"ranged_javelin.png^[transformR90"},
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
			damage_groups = {fleshy = 5},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			--damage_groups = {fleshy = 10},
			damage_groups = {fleshy = 10},
		}, nil)
	end,

	-- node hit, bursts into flame
	--hit_node = function(self, pos, node)
	--	mobs:explosion(pos, 1, 1, 0)
	--end
	
	--[[
	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 3},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 3},
		}, nil)
	end,
	]]
})

--mobs:register_spawn("mobs:dustdevil", "group:cracky", 6, 1, 89000, 1, 500, 0)
--mobs:register_spawn_bp_near("mobs:dustdevil", "default:stone", 14, -1, 2)


--20220628 supress
--[[
mobs:spawn({
	name = "mobs:dustdevil",
	nodes = {"default:desert_stone", "es:dry_dirt"},
	chance = 7,
})
]]

--mobs:register_egg("mobs_flat:dustdevil", "Dust Devil", "default_desert_sand.png", 1)
