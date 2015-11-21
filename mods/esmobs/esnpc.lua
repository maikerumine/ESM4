--esmobs v0.0.4
--maikerumine
--made for Extreme Survival game


--dofile(minetest.get_modpath("esmobs").."/api.lua")

--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)

bp:register_spawn("esmobs:badplayer1", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 20, 10, 9000, 1, 31000)
bp:register_mob("esmobs:badplayer1", {
	type = "npc",
	hp_min = 25,
	hp_max = 35,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer1.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1.0},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 2,},
		{name = "default:sword_steel",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,},

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
		local_chat(clicker:getpos(),"Sam: Let's go kick some Mob butt!",3)
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

bp:register_spawn("esmobs:badplayer5", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 20, 10, 9000, 1, 31000)
bp:register_mob("esmobs:badplayer5", {
	type = "npc",
	hp_min = 27,
	hp_max = 34,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer5.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 1,
		max = 5,},
		{name = "default:sword_wood",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,},

	},
	armor = 85,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
--Maikerumine added hackish follow code
	on_rightclick = function (self, clicker)
		bp:face_pos(self,clicker:getpos())
		bp:team_player(self,clicker:getpos())
		if self.state ~= "path" and self.state ~= "following" then
		local_chat(clicker:getpos(),"John: Let's go grief some monsters!",3)
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
		death = "mobs_death2",
		attack = "default_punch2",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

bp:register_spawn("esmobs:badplayer13", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 20, 10, 9000, 1, 31000)
bp:register_mob("esmobs:badplayer13", {
	type = "npc",
	hp_min = 13,
	hp_max = 15,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer13.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:stick"].inventory_image,
			},
	visual_size = {x=1, y=.8},
	makes_footstep_sound = true,
	view_range = 19,
	walk_velocity = 1.6,
	run_velocity = 1,
	damage = 2.5,
	drops = {
		{name = "default:leaves",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_steel",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,},

	},
	armor = 40,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	follow = "default:apple",
--Maikerumine added hackish follow code
	on_rightclick = function (self, clicker)
		bp:face_pos(self,clicker:getpos())
		bp:team_player(self,clicker:getpos())
		if self.state ~= "path" and self.state ~= "following" then
		local_chat(clicker:getpos(),"Jannette: Stop flirting with me!",3)
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
		war_cry = "mobs_oerkki_attack",
		death = "mobs_death1",
		attack = "default_punch",
		},

	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

--bp:register_egg("esmobs:badplayer13", "Girl In Red", "character_13_preview.png", 1)



bp:register_spawn("esmobs:badplayer14", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 20, 10, 9000, 1, 31000)
bp:register_mob("esmobs:badplayer14", {
	type = "npc",
	hp_min = 27,
	hp_max = 45,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer14.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:papyrus",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_steel",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 1,
			max=3,},

	},
	armor = 90,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
--Maikerumine added hackish follow code
	on_rightclick = function (self, clicker)
		bp:face_pos(self,clicker:getpos())
		bp:team_player(self,clicker:getpos())
		if self.state ~= "path" and self.state ~= "following" then
		local_chat(clicker:getpos(),"Crybaby: I am too whimpy to fight mobs, but I can do my best!",3)
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
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_death1",
		attack = "default_punch2",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})
bp:register_spawn("esmobs:badplayer15", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 20, 10, 9000, 1, 31000)
bp:register_mob("esmobs:badplayer15", {
	type = "npc",
	hp_min = 47,
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer15.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 7,
	walk_velocity = 1.3,
	run_velocity = 3.9,
	damage = 3,
	drops = {
		{name = "default:sword_mese",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:apple",
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
		local_chat(clicker:getpos(),"Sepia Sam: MESE sword + Monster = My pleasure!",3)
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
		death = "mobs_death2",
		attack = "default_punch3",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

bp:register_spawn("esmobs:badplayer17", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 20, 10, 9000, 1, 31000)
bp:register_mob("esmobs:badplayer17", {
	type = "npc",
	hp_min = 37,
	hp_max = 45,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer17.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2.3,
	damage = 4,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 0,
		max = 5,},
		{name = "default:sword_wood",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 4,
			max=12,},

	},
	armor = 90,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
--Maikerumine added hackish follow code
	on_rightclick = function (self, clicker)
		bp:face_pos(self,clicker:getpos())
		bp:team_player(self,clicker:getpos())
		if self.state ~= "path" and self.state ~= "following" then
		local_chat(clicker:getpos(),"O.G. Sam: Mobs, let me at 'em, I'll splat 'em!!!",3)
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
		attack = "default_punch2",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})

bp:register_spawn("esmobs:badplayer19", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 20, 10, 9000, 1, 31000)
bp:register_mob("esmobs:badplayer19", {
	type = "npc",
	hp_min = 28,
	hp_max = 35,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer19.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 1.6,
	run_velocity = 2.8,
	damage = 3,
	drops = {
		{name = "default:torch",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,},

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
		local_chat(clicker:getpos(),"Vanessa: I'll code out the very instance of those mobs!",3)
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
		war_cry = "mobs_fireball",
		death = "mobs_slash_attack",
		attack = "default_punch",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})
bp:register_spawn("esmobs:badplayer20", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 20, 10, 9000, 1, -10)
bp:register_mob("esmobs:badplayer20", {
	type = "npc",
	hp_min = 92,
	hp_max = 125,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer20.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.7,
	run_velocity = 2.5,
	damage = 4,
	drops = {
		{name = "default:pick_steel",
		chance = 4,
		min = 0,
		max = 2,},
		{name = "default:sword_steel",
		chance = 7,
		min = 0,
		max = 1,},
		{name = "default:stick",
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
		local_chat(clicker:getpos(),"Female Sam: Minetest is the greatest voxel game ever created!",3)
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
		war_cry = "mobs_stone",
		death = "mobs_slash_attack",
		attack = "default_punch2",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})


bp:register_spawn("esmobs:badplayer21", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 15, -1,9000, 1, -50)
bp:register_mob("esmobs:badplayer21", {
	type = "npc",
	hp_min = 157,
	hp_max = 180,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer21.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 14,
	walk_velocity = 2.5,
	run_velocity = 7,
	damage = 4,
	drops = {
		{name = "default:pick_mese",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:apple",
			chance = 1,
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
		local_chat(clicker:getpos(),"Battlefield 3 Soldier: All suited up, let's roll out and destroy those creatures!",3)
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
		war_cry = "mobs_barbarian_yell1",
		death = "mobs_barbarian_death",
		attack = "default_punch3",
		},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})





