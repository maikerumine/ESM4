--esmobs v0.0.3
--maikerumine
--made for Extreme Survival game


--dofile(minetest.get_modpath("esmobs").."/api.lua")

--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)

bp:register_spawn("esmobs:badplayer32", {"default:obsidian","es:infiniumblock","es:stone_with_infinium"}, 7, -1, 9000, 1, -450)
bp:register_mob("esmobs:badplayer32", {
	type = "monster",
	hp_min = 177,
	hp_max = 190,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer32.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_diamond"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 8,
	walk_velocity = 5,
	run_velocity = 3.4,
	damage = 9,
	drops = {
		{name = "es:infinium_goo",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "default:sword_diamond",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:water_flowing",
			chance = 2,
			min = 1,
			max=2,},

	},
	armor = 75,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
--Maikerumine added hackish follow code
	on_rightclick = function (self, clicker)
		bp:face_pos(self,clicker:getpos())
		bp:team_player(self,clicker:getpos())
		if self.state ~= "path" and self.state ~= "following" then
		local_chat(clicker:getpos(),"INFINIUM MONS: Tame me now, come to me later, we will chat after I have cooled off.",3)
			if not self.tamed then
				self.tamed = true
				self.follow = true
			end
		end
	end,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_howl",
		attack = "default_punch3",
		},
})


bp:register_spawn("esmobs:badplayer33", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 20, 10, 9000, 1, 31000)
bp:register_mob("esmobs:badplayer33", {
	type = "npc",
	hp_min = 125,
	hp_max = 135,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_17.png",
			"3d_armor_trans.png",
				minetest.registered_items["es:sword_ruby"].inventory_image,
			},
	visual_size = {x=1, y=1.0},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 1.9,
	run_velocity = 3.9,
	damage = 5,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 5,},
		{name = "es:sword_ruby",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 1,
			max=4,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
--Maikerumine added hackish follow code
	on_rightclick = function (self, clicker)
		bp:face_pos(self,clicker:getpos())
		bp:team_player(self,clicker:getpos())
		if self.state ~= "path" and self.state ~= "following" then
		local_chat(clicker:getpos(),"Candy Raver: My Ruby Sword will cut through anything, let's do it!",3)
			if not self.tamed then
				self.tamed = true
				self.follow = true
			end
		end
	end,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
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
})

bp:register_spawn("esmobs:badplayer34", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 20, 10, 9000, 1, 31000)
bp:register_mob("esmobs:badplayer34", {
	type = "npc",
	hp_min = 25,
	hp_max = 35,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"character_2.png",
			"3d_armor_trans.png",
				minetest.registered_items["es:infinium_ingot"].inventory_image,
			},
	visual_size = {x=1, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,
	run_velocity = 5,
	damage = 3,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "default:sword_diamond",
		chance = 3,
		min = 0,
		max = 1,},
		{name = "default:meselamp",
			chance = 2,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
--Maikerumine added hackish follow code
	on_rightclick = function (self, clicker)
		bp:face_pos(self,clicker:getpos())
		bp:team_player(self,clicker:getpos())
		if self.state ~= "path" and self.state ~= "following" then
		local_chat(clicker:getpos(),"Infinium Man: I'll give those monsters a good whack on the head with this Infinium ingot!",3)
			if not self.tamed then
				self.tamed = true
				self.follow = true
			end
		end
	end,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
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
})

