--MCmobs v0.2
--maikerumine
--made for MC like Survival game
--License for code WTFPL and otherwise stated in readmes


--dofile(minetest.get_modpath("mobs").."/api.lua")

mobs:register_mob("mobs_mc:pig", {
	type = "animal",
	hp_max = 25,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	
	visual = "mesh",
	mesh = "mobs_pig.x",
	textures = {
	{"mobs_pig.png"}
	},
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 200,
	drops = {
		{name = "mobs:pork_raw",
		chance = 1,
		min = 1,
		max = 3,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	fear_height = 3,
	sounds = {
		random = "Pig2",
		death = "Pigdeath",
		damage = "Pig2",
	},
	animation = {
		speed_normal = 24,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 49,
		hurt_start = 118,
		hurt_end = 154,
		death_start = 154,
		death_end = 179,
		eat_start = 49,
		eat_end = 78,
		look_start = 78,
		look_end = 108,
	},
	follow = {"default:apple", "farming:potato", "farming:carrot"},
	view_range = 5,
	on_rightclick = function(self, clicker)
		if not clicker or not clicker:is_player() then
			return
		end
		local item = clicker:get_wielded_item()
		if item:get_name() == "mobs:saddle" and self.saddle ~= "yes" then
			self.object:set_properties({
				textures = {"mobs_pig_with_saddle.png"},
			})
			self.saddle = "yes"
			self.tamed = true
			self.drops = {
				{name = "mobs:pork_raw",
				chance = 1,
				min = 1,
				max = 3,},
				{name = "mobs:saddle",
				chance = 1,
				min = 1,
				max = 1,},
			}
			if not minetest.setting_getbool("creative_mode") then
				local inv = clicker:get_inventory()
				local stack = inv:get_stack("main", clicker:get_wield_index())
				stack:take_item()
				inv:set_stack("main", clicker:get_wield_index(), stack)
			end
			return
		end
	-- from boats mod
	local name = clicker:get_player_name()
	if self.driver and clicker == self.driver then
		self.driver = nil
		clicker:set_detach()
		default.player_attached[name] = false
		default.player_set_animation(clicker, "stand" , 30)
	elseif not self.driver and self.saddle == "yes" then
		self.driver = clicker
		clicker:set_attach(self.object, "", {x = 0, y = 19, z = 0}, {x = 0, y = 0, z = 0})
		default.player_attached[name] = true
		minetest.after(0.2, function()
			default.player_set_animation(clicker, "sit" , 30)
		end)
		--self.object:setyaw(clicker:get_look_yaw() - math.pi / 2)
	end
	end,
})
mobs:register_spawn("mobs_mc:pig", {"default:dirt_with_grass"}, 20, 12, 5000, 1, 31000)
	

-- pork
minetest.register_craftitem(":mobs:pork_raw", {
	description = "Raw Porkchop",
	inventory_image = "pork_raw.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem(":mobs:pork_cooked", {
	description = "Cooked Porkchop",
	inventory_image = "pork_cooked.png",
	on_use = minetest.item_eat(8),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:pork_cooked",
	recipe = "mobs:pork_raw",
	cooktime = 5,
})


minetest.register_craftitem(":mobs:saddle", {
	description = "Saddle",
	inventory_image = "saddle.png",
})

minetest.register_tool(":mobs:carrotstick", {
	description = "Carrot on a Stick",
	inventory_image = "carrot_on_a_stick.png",
	stack_max = 1,
})

minetest.register_craft({
	output = "mobs:carrotstick",
	recipe = {
		{"",            "",            "farming:string"    },
		{"",            "group:stick", "farming:string" },
		{"group:stick", "",            "farming:bread" },
	}
})

minetest.register_craft({
	output = "mobs:carrotstick",
	recipe = {
		{"",            "",            "farming:string"    },
		{"",            "group:stick", "farming:string" },
		{"group:stick", "",            "farming:carrot" },
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "mobs:carrotstick",
	recipe = {"fishing:pole_wood", "farming:carrot"},
})


minetest.register_craft({
	output = "mobs:saddle",
	recipe = {
		{"mobs:leather", "mobs:leather", "mobs:leather"},
		{"farming:string", "", "farming:string"},
	{"default:steel_ingot", "", "default:steel_ingot"}
	},
})


-- compatibility
mobs:alias_mob("mobs:pig", "mobs_mc:pig")

-- spawn eggs
mobs:register_egg("mobs_mc:pig", "Pig", "spawn_egg_pig.png")


if minetest.setting_get("log_mods") then
	minetest.log("action", "MC Pig loaded")
end