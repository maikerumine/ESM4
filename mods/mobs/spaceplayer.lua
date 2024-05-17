
--Maikerumine added spaceplayer for his world needs

mobs.npc_drops = { "mobs:meat", "mobs:sword_lightsteel_blue", "mobs:laser", "farming:bread", "default:wood" }--Added 20220819
mobs.npc2_drops = {"mobs:meat", "mobs:sword_lightsteel_blue", "mobs:laser", "farming:bread", "default:wood" }--Added 20220819

--spacemobs

mobs:register_mob("mobs:Space_Guy_FBF", {
	type = "monster",		
	hp_min = 25,	
	hp_max = 55,
    collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"futuremobs_badbot_fighter.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_lightsteel_red"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 25,	---65
	walk_velocity = 3,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "cooked_rat",
		chance = 1,
			min = 1,
			max = 2,},
		{name = "default:apple",
		chance = 0,
			min = 1,
			max = 1,},
		{name = "mobs:sword_lightsteel_red",
			chance = 10,
			min = 1,
			max=1,
		},
	},
	armor = 90,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	--lifetimer=300,
	jump = true,
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
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
	

})

--mobs:register_spawn("mobs:Space_Guy_FBF", "group:cracky", 6, 1, 9000, 1, 31000, 1500)
--Spawn Template, defaults to values shown if line not provided
mobs:spawn({
	name = "mobs:Space_Guy_FBF",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 1,
	min_height = 5000,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

mobs:spawn({
	name = "mobs:Space_Guy_FBF",
	nodes = {"default:dirt", "default:dry_dirt", "es:dry_dirt", "es:aiden_grass"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 1,
	min_height = -5,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})



mobs:register_mob("mobs:Space_Guy_FGF", {
	type = "npc",		
	hp_min = 25,	
	hp_max = 55,
    collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"futuremobs_goodbot_fighter.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:sword_lightsteel_blue"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 25,	---65
	walk_velocity = 3,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "cooked_rat",
		chance = 1,
			min = 1,
			max = 2,},
		{name = "default:apple",
		chance = 0,
			min = 1,
			max = 1,},
		{name = "mobs:sword_lightsteel_blue",
			chance = 10,
			min = 1,
			max=1,
		},
	},
	armor = 90,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	lifetimer=300,
	jump = true,
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
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
	attacks_monsters = true,
	attack_npcs = false,
	peaceful = true,
	group_attack = true,
	step = 1,
	fear_height = 10,
	
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Goodbot Fighter> Let's go kick some Mob butt!")
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

--mobs:register_spawn("mobs:Space_Guy_FGF", "group:cracky", 6, 1, 9000, 1, 31000, 1500)
mobs:spawn({
	name = "mobs:Space_Guy_FGF",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 1,
	min_height = 5000,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

mobs:spawn({
	name = "mobs:Space_Guy_FGF",
	nodes = {"default:dirt", "default:dry_dirt", "es:dry_dirt", "es:strange_grass"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 1,
	min_height = -5,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

mobs:register_mob("mobs:Space_Guy_FBG", {
	type = "monster",		
	hp_min = 25,	
	hp_max = 55,
    collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"futuremobs_badbot_gunner.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:red_laser_gun"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 25,	---65
	walk_velocity = 3,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "cooked_rat",
		chance = 1,
			min = 1,
			max = 2,},
		{name = "default:apple",
		chance = 0,
			min = 1,
			max = 1,},
		{name = "mobs:red_laser_gun",
			chance = 8,
			min = 1,
			max=1,
		},
	},
	armor = 90,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	--attack_type = "dogfight",
	attack_type = "shoot",
	arrow = "mobs:laser",
	shoot_interval = 1,
	shoot_offset = 1,
	jump = true,
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
		shoot_attack = "laser_sound",
	},
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
	attacks_monsters = false,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 10,
})

--mobs:register_spawn("mobs:Space_Guy_FBG", "group:cracky", 6, 1, 9000, 1, 31000, 1500)
mobs:spawn({
	name = "mobs:Space_Guy_FBG",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 1,
	min_height = 5000,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

mobs:spawn({
	name = "mobs:Space_Guy_FBG",
	nodes = {"default:dirt", "default:dry_dirt", "es:dry_dirt", "es:aiden_grass"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 1,
	min_height = -5,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

mobs:register_mob("mobs:Space_Guy_FGG", {
	type = "npc",		
	hp_min = 25,	
	hp_max = 55,
    collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"futuremobs_goodbot_gunner.png",
			"3d_armor_trans.png",
				minetest.registered_items["mobs:blue_laser_gun"].inventory_image,
			},
	visual_size = {x=1.0, y=1.0},
	makes_footstep_sound = true,
	view_range = 25,	---65
	walk_velocity = 3,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "cooked_rat",
		chance = 1,
			min = 1,
			max = 2,},
		{name = "default:apple",
		chance = 0,
			min = 1,
			max = 1,},
		{name = "mobs:blue_laser_gun",
			chance = 8,
			min = 1,
			max=1,
		},
	},
	armor = 90,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 50,
	light_damage = 0,
	on_rightclick = nil,
	--attack_type = "dogfight",
	attack_type = "shoot",
	arrow = "mobs:laser",
	shoot_interval = 1,
	shoot_offset = 1,	
	jump = true,
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_barbarian_death",
		attack = "default_punch2",
		shoot_attack = "laser_sound",
	},
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
	attacks_monsters = true,
	attack_npcs = false,
	peaceful = true,
	group_attack = true,
	step = 1,
	fear_height = 10,
	
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Goodbot Gunner> Let's go kick some Mob butt!")
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
			local hp = self.object:get_hp()
			if hp + 4 > self.hp_max then return end
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
				item:take_item()
			self.object:set_hp(hp+4)


		-- right clicking with gold lump drops random item from mobs.npc2_drops
		elseif item:get_name() == "default:gold_lump" then
			if not minetest.setting_getbool("creative_mode") then
				clicker:set_wielded_item(item)
			end
			local pos = self.object:getpos()
			pos.y = pos.y + 0.5
			minetest.add_item(pos, {name = mobs.npc2_drops[math.random(1,#mobs.npc2_drops)]})
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

--mobs:register_spawn("mobs:Space_Guy_FGG", "group:cracky", 6, 1, 9000, 1, 31000, 1500)
mobs:spawn({
	name = "mobs:Space_Guy_FGG",
	nodes = {"group:cracky", "group:stone"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 1,
	min_height = 5000,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})

mobs:spawn({
	name = "mobs:Space_Guy_FGG",
	nodes = {"default:dirt", "default:dry_dirt", "es:dry_dirt", "es:strange_grass"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 10,
	interval = 30,
	chance = 5000,
	active_object_count = 1,
	min_height = -5,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})


-- Arrows
--[[
--old
mobs:register_arrow("mobs:laser", {
	visual = "sprite",
	visual_size = {x=0.5, y=0.5},
	textures = {"futuremobs_laser.png"},
	velocity = 10,
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=8},
		}, vec)
		local pos = self.object:getpos()
	
	end,
        hit_node = function(self, pos, node)
        end        	
})
]]
mobs:register_arrow("mobs:laser", {
	visual = "sprite",
	visual_size = {x = 0.5, y = 0.5},
	textures = {"futuremobs_laser.png"},
	velocity = 10,
	tail = 1,
	tail_texture = "futuremobs_laser.png",
	tail_size = 2,
	glow = 9,
	--expire = 0.1,
	expire = 0.1,
	drop = true,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 1},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			--damage_groups = {fleshy = 10},
			damage_groups = {fleshy = 4},
		}, nil)
	end,

	-- node hit, bursts into flame
	--hit_node = function(self, pos, node)
	--	mobs:explosion(pos, 1, 1, 0)
	--end
})

--[[
--Weapons!

-- Light Steel Stuffs:
minetest.register_tool("mobs:sword_lightsteel_blue", {
	description = "Blue LightSteel Sword",
	inventory_image = "sword_lightsteel_blue.png",
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.75, [2]=2.75, [3]=2.85}, uses=10, maxlevel=1},
			snappy={times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2.50},
	},
})

minetest.register_tool("mobs:sword_lightsteel_red", {
	description = "Red LightSteel Sword",
	inventory_image = "sword_lightsteel_red.png",
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.35, [2]=2.10, [3]=2.85}, uses=10, maxlevel=1},
			snappy={times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2.50},
	},
})


minetest.register_tool("mobs:lasergun_blue", {
	description = "This Is Just A weapon For Mobs , You shouldnt be able to get this  ",
	inventory_image = "blue_laser_gun.png",
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.75, [2]=2.75, [3]=2.85}, uses=10, maxlevel=1},
			snappy={times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2.50},
	},
})

minetest.register_tool("mobs:lasergun_red", {
	description = "This Is Just A weapon For Mobs , You shouldnt be able to get this  ",
	inventory_image = "red_laser_gun.png",
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.75, [2]=2.75, [3]=2.85}, uses=10, maxlevel=1},
			snappy={times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2.50},
	},
})

--And the crafts...
minetest.register_craft({
	output = 'mobs:sword_lightsteel_blue',
	recipe = {
		{'futureores:blue_crystal', 'futureores:lightsteel_ingot', ''},
		{'', 'futureores:lightsteel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'mobs:sword_lightsteel_red',
	recipe = {
		{'futureores:red_crystal', 'futureores:lightsteel_ingot', ''},
		{'', 'futureores:lightsteel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

]]
--[[
if minetest.setting_get("log_mods") then
	minetest.log("action", "Space mobs loaded")
end
]]