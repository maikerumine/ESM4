--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0

es = {}

minetest.register_node("es:lag_block", {
	description = "Show this around town \nto show you love the original Just Test.  \nREMEMBER THE TEST.  \nLag, This is a dedication block to \nyour ideas, your server, and you.  \nMy skuchayem i lyubyat vas.  \nWE MISS AND LOVE YOU!",
	--tiles = {"default_water.png^player.png^gui_furnace_arrow_fg.png^treeprop.png^heart.png"},
	tiles = {"es_lag_block.png"},
	is_ground_content = false,
	walkable = false,
	light_source = default.LIGHT_MAX,
	groups = {immortal=1,cracky=1,not_in_creative_inventory = 0},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:rnd_block", {
	description = "RND - The King of Code",
	paramtype2 = "facedir",
		tiles = { 
			{ name="es_rnd_block_flowing_animated.png",
			  animation={
				type="vertical_frames",
				aspect_w=64,
				aspect_h=64,
				length=3.0
			}
		}
	},
	is_ground_content = false,
	walkable = false,
	light_source = default.LIGHT_MAX-2,
	groups = {immortal=1,cracky=1,not_in_creative_inventory = 0},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:lag_ice", {
	description = "Lag's Ice  -=Use for Space Farming",
	tiles = {"es_lag_ice.png"},
	is_ground_content = false,
	paramtype = "light",
	groups = {cracky = 1, puts_out_fire = 1, water = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("es:heart_block", {
	description = "Why's Heart Block -=Punch it!=-",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"es_why_heart_block_off.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1,dig_immediate=2},
	sounds =default.node_sound_stone_defaults(),
	on_punch = function(pos, node, puncher)
	minetest.sound_play("hohoho", {pos = pos, gain = 1})
		minetest.set_node(pos, {name = "es:heart_block_on"})
	end,
})

minetest.register_node("es:heart_block_on", {
	description = "Why's Heart Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"es_why_heart_block_on.png"},
	is_ground_content = false,
	light_source = default.LIGHT_MAX-1,
	groups = {cracky = 2,dig_immediate=2, not_in_creative_inventory=1},
	sounds =default.node_sound_stone_defaults(),
	on_punch = function(pos, node, puncher)
		minetest.set_node(pos, {name = "es:heart_block"})
		minetest.sound_play("hohoho", {pos = pos, gain = 1})
	end,
	drop = "es:heart_block"
})


minetest.register_node("es:sorcerykid_block", {
	description = "Show this around town \nto show you love Just Test 2!!",
	paramtype2 = "facedir",
	tiles = {"es_sk_block.png"},
	is_ground_content = false,
	walkable = true,
	light_source = default.LIGHT_MAX,
	groups = {immortal=1,cracky=1,not_in_creative_inventory = 0},
	sounds = default.node_sound_stone_defaults(),
	on_punch = function(pos, node, puncher)
		minetest.sound_play("mcl_jukebox_track_8", {pos = pos, gain = 1})
	end,
})

minetest.register_node("es:gold_digger_block", {
	description = "the man... the myth...  the legend -= use to craft rainbow water =-",
	paramtype2 = "facedir",
	tiles = {"es_gold_digger_block.png"},
	is_ground_content = false,
	walkable = true,
	light_source = default.LIGHT_MAX,
	groups = {immortal=1,cracky=1,not_in_creative_inventory = 0},
	sounds = default.node_sound_stone_defaults(),
	on_punch = function(pos, node, puncher)
		minetest.sound_play("thunder", {pos = pos, gain = 1})
	end,
})



--CRAFTING
--======================================
minetest.register_craft({
	output = 'es:lag_block',
	recipe = {
		{"es:strange_grass", "es:purpelliumblock", "es:infiniumblock"},
		{"default:diamondblock", "es:lag_ice", "es:emeraldblock"},
		{"es:pick_aikerum", "es:rubyblock", "default:obsidian"},
	},
})

minetest.register_craft({
	output = 'es:lag_ice',
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {
		{'default:snowblock', 'default:snowblock', 'default:snowblock'},
		{'default:snowblock', 'bucket:bucket_water', 'default:snowblock'},
		{'default:snowblock', 'default:snowblock', 'default:snowblock'},
	}
})

minetest.register_craft({
	output = 'es:rnd_block',
	replacements = {{"bucket:bucket_lava", "bucket:bucket_empty 3"}},
	recipe = {
		{"es:pick_emerald", "bucket:bucket_lava", "es:pick_emerald"},
		{"bucket:bucket_lava", "es:lava_source", "bucket:bucket_lava"},
		{"default:stone", "default:stonebrick", "default:stone"},
	},
})

minetest.register_craft({
	output = 'es:heart_block',
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "default:apple", "default:stone"},
		{"default:stone", "default:stone", "default:stone"},
	},
})

minetest.register_craft({
	output = 'es:sorcerykid_block',
	recipe = {
		{"es:aiden_grass", "es:purpelliumblock", "es:infiniumblock"},
		{"default:diamondblock", "es:lag_ice", "es:emeraldblock"},
		{"es:pick_unobtainium", "es:purpelliumblock", "default:obsidian"},
	},
})	

minetest.register_craft({
	output = 'es:gold_digger_block',
	recipe = {
		{"default:brick", "es:unobtainiumblock", "default:brick"},
		{"default:diamondblock", "bones:bones", "default:diamondblock"},
		{"default:diamond", "default:gold_ingot", "default:diamond"},
	},
})


---==============
--Aspiremint code
--===============
local dyes = dye.dyes

-- register es AspireMint nodes

for i = 1, #dyes do
	local name, desc = unpack(dyes[i])

	minetest.register_node("es:Stair" .. name, {
		description = desc .. " AspireMint Stair",
		drawtype = "nodebox",	
		tiles = {"wool_" .. name .. ".png"},
		inventory_image = "wool_" .. name .. ".png^amgit.png",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
			},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1, not_in_craft_guide = 1},
		sounds = default.node_sound_defaults(),
		drop = "es:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "es:Slab" .. name,})
		end,
	})

	minetest.register_node("es:Slab" .. name, {
		description = desc .. " AspireMint Slab",
		drawtype = "nodebox",	
		tiles = {"wool_" .. name .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1, not_in_craft_guide = 1},
		sounds = default.node_sound_defaults(),
		drop = "es:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "es:Stair_Corner_Inner_" .. name,})
		end,
	})

	minetest.register_node("es:Stair_Corner_Inner_" .. name, {
		description = desc .. " AspireMint Stair Corner Inner",
		drawtype = "nodebox",	
		tiles = {"wool_" .. name .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
				{-0.5, 0.0, -0.5, 0.0, 0.5, 0.0},
			},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1, not_in_craft_guide = 1},
		sounds = default.node_sound_defaults(),
		drop = "es:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "es:Stair_Corner_Outer_" .. name,})
		end,
	})

	minetest.register_node("es:Stair_Corner_Outer_" .. name, {
		description = desc .. " AspireMint Stair Corner Outer",
		drawtype = "nodebox",	
		tiles = {"wool_" .. name .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.0, 0.5, 0.5},
			},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1, not_in_craft_guide = 1},
		sounds = default.node_sound_defaults(),
		drop = "es:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "es:Slope" .. name,})
		end,
	})

	minetest.register_node("es:Slope" .. name, {
		description = desc .. " AspireMint Slope",
		drawtype = "mesh",
		mesh = "stairs_slope.obj",	
		tiles = {"wool_" .. name .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1, not_in_craft_guide = 1},
		sounds = default.node_sound_defaults(),
		drop = "es:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "es:Slab_Thin_" .. name,})
		end,
	})

	minetest.register_node("es:Slab_Thin_" .. name, {
		description = desc .. " AspireMint Thin Slab",
		drawtype = "nodebox",	
		tiles = {"wool_" .. name .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, (1/16)-0.5, 0.5},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1, not_in_craft_guide = 1},
		sounds = default.node_sound_defaults(),
		drop = "es:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "es:Stair" .. name,})
		end,
	})


--Crafting
minetest.register_craft({
	output = "es:Stair" .. name,
		type = "shapeless",
			recipe = {"group:dye,color_" .. name, "default:diamond", "group:wool",}
})


--alias to merge with es
minetest.register_alias("aspiremint_blocks:Stair" .. name ,"es:Stair" .. name )
minetest.register_alias("aspiremint_blocks:Slab" .. name ,"es:Slab" .. name )
minetest.register_alias("aspiremint_blocks:Slope" .. name ,"es:Slope" .. name )
minetest.register_alias("aspiremint_blocks:Slab_Thin_" .. name ,"es:Slab_Thin_" .. name )
minetest.register_alias("aspiremint_blocks:Stair_Corner_Inner_" .. name ,"es:Stair_Corner_Inner_" .. name )
minetest.register_alias("aspiremint_blocks:Stair_Corner_Outer_" .. name ,"es:Stair_Corner_Outer_" .. name )
end
