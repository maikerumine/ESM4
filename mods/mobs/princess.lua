
--Maikerumine added spaceplayer for his world needs

--Princess for Yumi
mobs.npc_drops = { "default:pick_steel", "mobs:meat", "default:sword_steel", "default:shovel_steel", "farming:bread", "default:wood" }--Added 20151121

mobs:register_mob("mobs:princess", {
	type = "npc",
	nametag = "Princess Yumi",	
	hp_min = 30,	
	hp_max = 55,
    --collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},

--[[
	visual = "mesh",
	mesh = "3d_armor_character.x",
	--mesh = "mobs_stone_monster.x",
	textures = {"princess.png",
			"3d_armor_trans.png",
				minetest.registered_items["es:sword_aikerum"].inventory_image,
			},
	--visual_size = {x=1.0, y=1.0},
	visual_size = {x=2.0, y=2.0},
	]]
	visual = "upright_sprite",
	visual_size = {x=1, y=2.2},
	textures = {
		"princess_front.png",
		"princess_back.png",
	},
	
	makes_footstep_sound = true,
	view_range = 25,	---65
	walk_velocity = 1.3,
	run_velocity = 3,
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
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	--on_rightclick = nil,
	attack_type = "dogfight",
	--lifetimer=300,
	jump = true,
	sounds = {
--		random = "Villager1",
--		war_cry = "Villagerdeny",
--		death = "Villagerdead",
--		attack = "Villagertrade",
	},
	animation = {
		speed_normal = 30,
		speed_run = 30,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
		
		die_start = 160,
		die_end = 170,
		die_speed = 15,
		die_loop = false,
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
	fear_height = 10,
	
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Princess Yumi> Yumi will rule this server!")
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
--[[	
	on_die = function(self, pos)

		self.object:remove()
		
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
			texture = "princess_front.png",
		})		
	end,]]	
})

--[[
mobs:spawn({
	name = "mobs:princess",
	--nodes = {"default:ice", "es:strange_grass", "cblocks:stone_violet"},
	nodes = {"default:dirt_with_grass"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 14,
	interval = 30,
	--chance = 15000,
	chance = 15000,
	active_object_count = 1,
	min_height = -50,
	max_height = 31000,
	day_toggle = nil,
	on_spawn = nil,
	on_map_load = nil,
})
]]

--Alethea
mobs:register_mob("mobs:princess_alethea", {
--
	type = "npc",
	--spawn_class = "hostile",
	hp_min = 20,
	hp_max = 20,
	xp_min = 6,
	xp_max = 6,
	breath_max = -1,
	armor = {undead = 100, fleshy = 100},

--	type = "npc",
	nametag = "Princess Alethea",	
--	hp_min = 30,	
--	hp_max = 55,
    --collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},

--[[
	visual = "mesh",
	mesh = "3d_armor_character.x",
	--mesh = "mobs_stone_monster.x",
	textures = {"princessa_front.png",
			"3d_armor_trans.png",
				--minetest.registered_items["es:sword_aikerum"].inventory_image,
			},
	--visual_size = {x=1.0, y=1.0},
	visual_size = {x=2.0, y=2.0},
	]]

	visual = "upright_sprite",
	visual_size = {x=1, y=2.2},
	textures = {
		"princessa_front.png",
		"princessa_back.png",
	},
	
	makes_footstep_sound = true,
	view_range = 25,	---65
	walk_velocity = 1.3,
	run_velocity = 3,
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
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	--on_rightclick = nil,
	attack_type = "dogfight",
	--lifetimer=300,
	jump = true,
	sounds = {
--		random = "Villager1",
--		war_cry = "Villagerdeny",
--		death = "Villagerdead",
--		attack = "Villagertrade",
	},
	animation = {
		speed_normal = 30,
		speed_run = 30,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
		
		die_start = 160,
		die_end = 170,
		die_speed = 15,
		die_loop = false,
	},
	attacks_monsters = true,
	peaceful = false,
	group_attack = true,
	step = 1,
	fear_height = 10,
	
		on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat(clicker:getpos(),"<Princess Alethea> I like gummys and you are skinny!")
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
	--[[
	on_die = function(self, pos)

		self.object:remove()
		
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
			texture = "princessa_front.png",
		})		
	end,
]]	
})

--[[
mobs:spawn({
	name = "mobs:princess_alethea",
	--nodes = {"default:ice", "es:strange_grass", "cblocks:stone_violet"},
	nodes = {"default:dirt_with_grass"},
	neighbors = {"air"},
	min_light = 0,
	max_light = 14,
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
