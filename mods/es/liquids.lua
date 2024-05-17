--Extreme Survival created by maikerumine
-- Minetest 0.4.9 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2020) maikerumine; CC-BY-SA 3.0



es = {}
--ES LIQUIDS

--ES CUSTOM LIQUIDS:

--ES Fake Water liquid
minetest.register_node("es:fake_water_source", {
	description = "Fake Water Source  -=Great for building above without the mess!=-",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "default_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "default_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	
	--use_texture_alpha = "clip", -- only needed for stairs API
	
	
	alpha = 160,
	paramtype = "light",
	walkable = false,
	--pointable = true,
	--diggable = true,
	buildable_to = false,
	liquid_renewable = false,
	liquid_range = 0,
	--drowning = 0,
	--climbable = true,
	is_ground_content = false,
	--drop = "es:fake_water_source",
	--drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "es:fake_water_source",
	liquid_alternative_source = "es:fake_water_flowing",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {not_in_creative_inventory = 1, crumbly=3, water = 3, liquid = 3, cools_lava = 1, fakewater = 1},
	--groups = {crumbly=3, water = 3, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})


minetest.register_node("es:fake_water_flowing", {
	description = "Fake Water Source  -=Great for building above without the mess!=-",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "default_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "default_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	
	--use_texture_alpha = "clip", -- only needed for stairs API
	
	
	paramtype = "light",
	walkable = false,
	--pointable = true,
	--diggable = true,
	buildable_to = false,
	liquid_renewable = false,
	liquid_range = 0,
	--drowning = 0,
	--climbable = true,
	is_ground_content = false,
	--drop = "es:fake_water_source",
	--drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "es:fake_water_source",
	liquid_alternative_source = "es:fake_water_flowing",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {crumbly=3, water = 3, liquid = 3, cools_lava = 1, fakewater = 1},
	--groups = {crumbly=3, water = 3, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})



--ES Toxic liquid
minetest.register_node("es:toxic_water_source", {
	description = "Toxic_Water Source",
	inventory_image = minetest.inventorycube("es_toxic_water.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "es_toxic_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "es_toxic_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 240,
	
	--use_texture_alpha = "clip", -- only needed for stairs API
	
	
	paramtype = "light",
	light_source = 12,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquid_renewable = false,
	liquid_range = 1,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "es:toxic_water_flowing",
	liquid_alternative_source = "es:toxic_water_source",
	liquid_viscosity =3,
	damage_per_second = 3*2,
	post_effect_color = {a = 255, r = 10, g = 160, b = 10},
	--groups = {water = 3, liquid = 3, puts_out_fire = 1, radioactive = (state == "source" and 2 or 2),},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, radioactive = 2},
})

--NOTES:
--		radioactive = (state == "source" and 32 or 16),
--THIS IS DEFAULT SETTING FROM TECHNIC
minetest.register_node("es:toxic_water_flowing", {
	description = "Toxic_Flowing Water  -=Use in crafts",
	inventory_image = minetest.inventorycube("es_toxic_water.png"),
	drawtype = "flowingliquid",
	tiles = {"es_toxic_water.png"},
	special_tiles = {
		{
			name = "es_toxic_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "es_toxic_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 240,
	
	--use_texture_alpha = "clip", -- only needed for stairs API
	
	
	paramtype = "light",
	light_source = 12,
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquid_renewable = false,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "es:toxic_water_flowing",
	liquid_alternative_source = "es:toxic_water_source",
	liquid_viscosity = 2,
	--damage_per_second = 2*2,
	post_effect_color = {a = 255, r = 10, g = 160, b = 10},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		--not_in_creative_inventory = 1, radioactive = (state == "source" and 2 or 2),},
		radioactive =2},
})

--ES mud
--FOR REF
-- Quicksand (old style, sinking inside shows black instead of yellow effect,
-- works ok with noclip enabled though)
minetest.register_node("es:muddy_block", {
	description = "Mud for space farming. [Like quicksand]",
	tiles = {"es_mud.png"},
	--drop = "es:mud",
	liquid_viscosity = 19,
	liquidtype = "source",
	liquid_alternative_flowing = "es:muddy_block",
	liquid_alternative_source = "es:muddy_block",
	liquid_renewable = false,
	liquid_range = 0,
	drowning = 3,
	walkable = false,
	climbable = false,
	post_effect_color = { a = 255, r = 43, g = 23, b = 9 },
	groups = {crumbly=3, falling_node=1, sand=1, liquid=3,water = 3,  disable_jump=1},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("es:mud_flowing", {
	description = "Flowing  mud",
	--drawtype = "liquid",--change to liquid for a solid look
	drawtype = "flowingliquid",
	tiles = {"es_mud.png"},
	special_tiles = {
		{
			name = "es_mud.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "es_mud.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},

	alpha = 250,
	
	--use_texture_alpha = "clip", -- only needed for stairs API
	
	
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	liquid_renewable = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "es:mud_flowing",
	liquid_alternative_source = "es:muddy_block",
	liquid_viscosity = 7,
	post_effect_color = {a = 255, r = 43, g = 23, b = 9},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, },
})

--ES Fake Lava
minetest.register_node("es:lava_source", {
	description = "ES Lava Source  NOTE:  Use for decoration.  Safe!!",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = 12,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	--drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "es:lava_flowing",
	liquid_alternative_source = "es:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	--damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, hot = 3, igniter = 1, fakelava = 1},
})

minetest.register_node("es:lava_flowing", {
	description = "ES Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {"default_lava.png"},
	special_tiles = {
		{
			name = "default_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "default_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = 12,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	--drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "es:lava_flowing",
	liquid_alternative_source = "es:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = -4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, hot = 3, igniter = 1,
		not_in_creative_inventory = 1, fakelava = 1},
})

--ES Rainbow liquid gd block
minetest.register_node("es:rainbow_water_source", {
	description = "Rainbow_Water Source  -= Dedicated to gold_digger =-",
	inventory_image = minetest.inventorycube("es_rainbow_water.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "es_rainbow_water_source_animated.png",
			--name = "es_rainbow_water_flowing_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "es_rainbow_water_source_animated.png",
			--name = "es_rainbow_water_flowing_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 240,
	
	--use_texture_alpha = "clip", -- only needed for stairs API
	
	
	paramtype = "light",
	light_source = 12,
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = true,
	liquid_renewable = false,
	liquid_range = 10,
	is_ground_content = false,
	drop = "es:rainbow_water_source",
	liquidtype = "source",
	liquid_alternative_flowing = "es:rainbow_water_flowing",
	liquid_alternative_source = "es:rainbow_water_source",
	liquid_viscosity =3,
	post_effect_color = {a = 85, r = 120, g = 120, b = 120},
	groups = {snappy = 3,water = 3, liquid = 3, puts_out_fire = 1, fall_damage_add_percent=-100, damage_add_percent=-10},
})

--NOTES:
minetest.register_node("es:rainbow_water_flowing", {
	description = "Rainbow_Flowing Water  -=Use in crafts",
	inventory_image = minetest.inventorycube("es_rainbow_water.png"),
	drawtype = "flowingliquid",
	tiles = {"es_rainbow_water.png"},
	special_tiles = {
		{
			name = "es_rainbow_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "es_rainbow_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 240,
	
	--use_texture_alpha = "clip", -- only needed for stairs API
	
	
	paramtype = "light",
	light_source = 12,
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	liquid_renewable = false,
	is_ground_content = false,
	drop = "",
	liquidtype = "flowing",
	liquid_alternative_flowing = "es:rainbow_water_flowing",
	liquid_alternative_source = "es:rainbow_water_source",
	liquid_viscosity = 2,
	post_effect_color = {a = 85, r = 120, g = 120, b = 120},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, fall_damage_add_percent=-100, damage_add_percent=-5},
})


-- bucket of rainbow
--[[
minetest.register_craftitem(":es:bucket_rainbow", {
	description = "Bucket of Rainbow",
	inventory_image = "es_bucket_rainbow.png",
	stack_max = 1,
	--on_use = minetest.item_eat(8, "bucket:bucket_empty"),
	--groups = {food_milk = 1, flammable = 3, drink = 1},
})
]]
bucket.register_liquid(
	"es:rainbow_water_source",
	"es:rainbow_water_flowing",
	"es:bucket_rainbow",
	"es_bucket_rainbow.png",
	"Rainbow Bucket",
	{tool = 1}
)


minetest.register_craft({
	type = "shapeless",
	output = "es:rainbow_water_source",
	replacements = {{"es:bucket_rainbow", "bucket:bucket_empty"}},
	recipe = {"es:bucket_rainbow"},
})


minetest.log("action", "ES: [liquids] loaded.")

