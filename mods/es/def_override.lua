--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

es = {}

--[[
--tweaks and overrides
--Override mese
minetest.override_item('default:stone_with_mese', {
     drop = {
          max_items = 1,
          items = {
               { items = {'es:mesecook_crystal'},}
          },
     },
})
]]

--rnd code
--cactus tweaks
local function hurt_cactus() -- cactus tweak
	local name = "default:cactus"
	local table = minetest.registered_nodes[name];
	local table2 = {};
	for i,v in pairs(table) do table2[i] = v end
	table2.groups.disable_jump = 1
	table2.damage_per_second = 5
	minetest.register_node(":"..name, table2)
end
hurt_cactus();


minetest.register_node(":default:large_cactus_seedling", {
	description = "Large Cactus Seedling -=No timer",
	drawtype = "plantlike",
	tiles = {"default_large_cactus_seedling.png"},
	inventory_image = "default_large_cactus_seedling.png",
	wield_image = "default_large_cactus_seedling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {
			-5 / 16, -0.5, -5 / 16,
			5 / 16, 0.5, 5 / 16
		}
	},
	groups = {choppy = 3, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_wood_defaults(),

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:large_cactus_seedling",
			{x = -2, y = -1, z = -2},
			{x = 2, y = 5, z = 2},
			4)

		return itemstack
	end,

	on_construct = function(pos)
		-- Normal cactus farming adds 1 cactus node by ABM,
		-- interval 12s, chance 83.
		-- Consider starting with 5 cactus nodes. We make sure that growing a
		-- large cactus is not a faster way to produce new cactus nodes.
		-- Confirmed by experiment, when farming 5 cacti, on average 1 new
		-- cactus node is added on average every
		-- 83 / 5 = 16.6 intervals = 16.6 * 12 = 199.2s.
		-- Large cactus contains on average 14 cactus nodes.
		-- 14 * 199.2 = 2788.8s.
		-- Set random range to average to 2789s.
		minetest.get_node_timer(pos):start(math.random(1859, 3719))
	end,

	on_timer = function(pos)
		local node_under = minetest.get_node_or_nil(
			{x = pos.x, y = pos.y - 1, z = pos.z})
		if not node_under then
			-- Node under not yet loaded, try later
			minetest.get_node_timer(pos):start(300)
			return
		end

		if minetest.get_item_group(node_under.name, "sand") == 0 then
			-- Seedling dies
			--minetest.remove_node(pos)
			return
		end

		local light_level = minetest.get_node_light(pos)
		if not light_level or light_level < 13 then
			-- Too dark for growth, try later in case it's night
			minetest.get_node_timer(pos):start(300)
			return
		end

		minetest.log("action", "A large cactus seedling grows into a large" ..
			"cactus at ".. minetest.pos_to_string(pos))
		default.grow_large_cactus(pos)
	end,
})

--SCREWDRIVER OVERRIDES
--[[
minetest.clear_craft({
		output = "screwdriver:screwdriver",
		recipe = {
			{"default:steel_ingot"},
			{"group:stick"}
		}
	})
	]]
--minetest.register_alias("screwdriver:screwdriver", "slap_rotate:glove")	
minetest.register_alias("slap_rotate:glove", "screwdriver:screwdriver")	
	
--TNT OVERRIDES

minetest.clear_craft({
		output = "tnt:tnt_stick 2",
		recipe = {
			{"tnt:gunpowder", "", "tnt:gunpowder"},
			{"tnt:gunpowder", "default:paper", "tnt:gunpowder"},
			{"tnt:gunpowder", "", "tnt:gunpowder"},
		}
	})
	
minetest.clear_craft({
		output = "tnt:tnt",
		recipe = {
			{"tnt:tnt_stick", "tnt:tnt_stick", "tnt:tnt_stick"},
			{"tnt:tnt_stick", "tnt:tnt_stick", "tnt:tnt_stick"},
			{"tnt:tnt_stick", "tnt:tnt_stick", "tnt:tnt_stick"}
		}
	})

--[[
minetest.clear_craft({
		output = "tnt:gunpowder 5",
		type = "shapeless",
			recipe = {"default:coal_lump", "default:gravel"}	
	})
]]



minetest.register_craft({
	output = "tnt:tnt",
	recipe = {
		{"", "group:wood", ""},
		{"group:wood", "tnt:gunpowder", "group:wood"},
		{"", "group:wood", ""}
	}
})

minetest.register_craft({
	output = "tnt:gunpowder",
	type = "shapeless",
	recipe = {"default:coal_lump", "default:gravel"}
})
--[[
	minetest.register_craft({
		output = "tnt:tnt_stick 2",
		recipe = {
			{"tnt:gunpowder", "", "tnt:gunpowder"},
			{"tnt:gunpowder", "default:paper", "tnt:gunpowder"},
			{"tnt:gunpowder", "", "tnt:gunpowder"},
		}
	})

	minetest.register_craft({
		output = "tnt:tnt",
		recipe = {
			{"tnt:tnt_stick", "tnt:tnt_stick", "tnt:tnt_stick"},
			{"tnt:tnt_stick", "tnt:tnt_stick", "tnt:tnt_stick"},
			{"tnt:tnt_stick", "tnt:tnt_stick", "tnt:tnt_stick"}
		}
	})
]]	

--BRONZE CRAFT OVERRIDES
--Default override crafting
--groups = {not_in_craft_guide=1},
--======================================
--Bronze
--[[
minetest.register_craft({
	output = "default:bronze_ingot 9",
	recipe = {
		{"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
		{"default:copper_ingot", "default:tin_ingot", "default:copper_ingot"},
		{"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
	}
})
]]
--[[
minetest.clear_craft({
	type = "shapeless",
	output = "default:bronze_ingot"
})
]]

--[[
if basic_machines then
	if moreores then
	minetest.register_craft({
		--type = "shapeless",
		output = 'default:bronze_ingot 8',
		recipe = {
		{'default:copper_ingot', 'basic_machines:charcoal', 'default:copper_ingot'},
		{'default:copper_ingot', 'moreores:tin_ingot', 'default:copper_ingot'},
		{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
		}
	})
	end

	minetest.register_craft({
		--type = "shapeless",
		output = 'default:bronze_ingot 8',
		recipe = {
		{'default:copper_ingot', 'basic_machines:charcoal', 'default:copper_ingot'},
		{'default:copper_ingot', 'default:tin_ingot', 'default:copper_ingot'},
		{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
		}
	})	
end
]]

minetest.register_craft({
	output = 'default:mese_crystal',
	recipe = {
		{'default:mese_crystal_fragment', 'default:mese_crystal_fragment', 'default:mese_crystal_fragment'},
		{'default:mese_crystal_fragment', 'default:mese_crystal_fragment', 'default:mese_crystal_fragment'},
		{'default:mese_crystal_fragment', 'default:mese_crystal_fragment', 'default:mese_crystal_fragment'},
	}
})


--ES HELPFUL CRAFTS
minetest.register_craft({
	output = 'default:ice',
	recipe = {
		{"default:snowblock", "default:snowblock", "default:snowblock"},
		{"default:snowblock", "default:snowblock", "default:snowblock"},
		{"default:snowblock", "default:snowblock", "default:snowblock"},
	},
})

minetest.register_craft({
	output = 'default:dirt',
	recipe = {
		{"default:papyrus", "default:papyrus", "default:papyrus"},
		{"default:papyrus", "default:papyrus", "default:papyrus"},
		{"default:papyrus", "default:papyrus", "default:papyrus"},
	},
})

minetest.register_craft({
	description = "Dirt with Grass",
	--type = "shapeless",
	output = 'default:dirt_with_grass',
	recipe = {
	{'default:grass_1' , },
	{'default:dirt', },
}
})

minetest.register_craft({
	description = "Dirt with Dry Grass",
	--type = "shapeless",
	output = 'default:dirt_with_dry_grass',
	recipe = {
	{'default:dry_grass_1' , },
	{'default:dirt', },
}
})

minetest.register_craft({
	description = "Dirt with Snow",
	--type = "shapeless",
	output = 'default:dirt_with_snow',
	recipe = {
	{'default:snow' , },
	{'default:dirt', },
}
})

minetest.register_craft({
	description = "Dirt with Rainforest Litter",
	--type = "shapeless",
	output = 'default:dirt_with_rainforest_litter',
	recipe = {
	{'default:junglegrass' , },
	{'default:dirt', },
}
})

minetest.register_craft({
	description = "Dirt with Coniferous Litter",
	--type = "shapeless",
	output = 'default:dirt_with_coniferous_litter',
	recipe = {
	{'default:fern_1' , },
	{'default:dirt', },
}
})

minetest.register_craft({
	description = "Permafrost",
	--type = "shapeless",
	output = 'default:permafrost 2',
	recipe = {
	{'default:coal_lump' , },
	{'default:gravel', },
}
})

minetest.register_craft({
	description = "Permafrost with Stones",
	--type = "shapeless",
	output = 'default:permafrost_with_stones 2',
	recipe = {
	{'default:gravel' , },
	{'default:permafrost', },
}
})

minetest.register_craft({
	description = "Permafrost with Moss",
	--type = "shapeless",
	output = 'default:permafrost_with_moss 2',
	recipe = {
	{'default:mossycobble' , },
	{'default:permafrost', },
}
})

minetest.register_craft({
	description = "Desert Stone",
	--type = "shapeless",
	output = 'default:desert_stone 1',
	recipe = {
	{'dye:red' , },
	{'default:stone', },
}
})

minetest.register_craft({
	output = 'default:desert_cobble 3',
	recipe = {
	{'default:clay_brick',},
    {'default:cobble', },
    {'default:cobble', },
}
})

minetest.register_craft({
	description = "Desert Sand",
	--type = "shapeless",
	output = 'default:desert_sand 1',
	recipe = {
	{'dye:red' , },
	{'default:sand', },
}
})

minetest.register_craft({
	description = "Silver Sand",
	--type = "shapeless",
	output = 'default:silver_sand 1',
	recipe = {
	{'default:tin_lump' , },
	{'default:silver_sand', },
}
})


--=====================
--============================
--default 5.0.0
--default 5.1.0
--default 5.2.0
--default 5.3.0
--============================

--[[
minetest.register_node("default:dirt_with_dry_grass", {
	description = "Dirt with Dry Grass",
	tiles = {"default_dry_grass.png",
		"default_dirt.png",
		{name = "default_dirt.png^default_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})
]]


--[[
minetest.register_node(":default:dry_dirt", {
	description = "Savanna Dirt",
	tiles = {"default_dry_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node(":default:blueberry_bush_leaves_with_berries", {
	description = "Blueberry Bush Leaves with Berries",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_blueberry_bush_leaves.png^default_blueberry_overlay.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1, dig_immediate = 3},
	drop = "default:blueberries",
	sounds = default.node_sound_leaves_defaults(),
	node_dig_prediction = "default:blueberry_bush_leaves",

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "default:blueberry_bush_leaves"})
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,
})

minetest.register_node(":default:blueberry_bush_leaves", {
	description = "Blueberry Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_blueberry_bush_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"default:blueberry_bush_sapling"}, rarity = 5},
			{items = {"default:blueberry_bush_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) < 11 then
			minetest.get_node_timer(pos):start(200)
		else
			minetest.set_node(pos, {name = "default:blueberry_bush_leaves_with_berries"})
		end
	end,

	after_place_node = after_place_leaves,
})

minetest.register_node(":default:blueberry_bush_sapling", {
	description = "Blueberry Bush Sapling",
	drawtype = "plantlike",
	tiles = {"default_blueberry_bush_sapling.png"},
	inventory_image = "default_blueberry_bush_sapling.png",
	wield_image = "default_blueberry_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:blueberry_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})



minetest.register_node(":default:pine_bush_stem", {
	description = "Pine Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"default_pine_bush_stem.png"},
	inventory_image = "default_pine_bush_stem.png",
	wield_image = "default_pine_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node(":default:pine_bush_needles", {
	description = "Pine Bush Needles",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_pine_needles.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"default:pine_bush_sapling"}, rarity = 5},
			{items = {"default:pine_bush_needles"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node(":default:pine_bush_sapling", {
	description = "Pine Bush Sapling",
	drawtype = "plantlike",
	tiles = {"default_pine_bush_sapling.png"},
	inventory_image = "default_pine_bush_sapling.png",
	wield_image = "default_pine_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:pine_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})
]]

--[[
minetest.register_node(":default:coral_green", {
	description = "Green Coral  -=Neverending Coral",
	drawtype = "plantlike_rooted",
	waving = 1,
	paramtype = "light",
	tiles = {"default_coral_skeleton.png"},
	special_tiles = {{name = "default_coral_green.png", tileable_vertical = true}},
	inventory_image = "default_coral_green.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "default:coral_skeleton",
	node_placement_prediction = "",
	sounds = default.node_sound_stone_defaults({
		dig = {name = "default_dig_snappy", gain = 0.2},
		dug = {name = "default_grass_footstep", gain = 0.25},
	}),

	on_place = coral_on_place,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "default:coral_skeleton"})
	end,
})

minetest.register_node(":default:coral_pink", {
	description = "Pink Coral  -=Neverending Coral",
	drawtype = "plantlike_rooted",
	waving = 1,
	paramtype = "light",
	tiles = {"default_coral_skeleton.png"},
	special_tiles = {{name = "default_coral_pink.png", tileable_vertical = true}},
	inventory_image = "default_coral_pink.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "default:coral_skeleton",
	node_placement_prediction = "",
	sounds = default.node_sound_stone_defaults({
		dig = {name = "default_dig_snappy", gain = 0.2},
		dug = {name = "default_grass_footstep", gain = 0.25},
	}),

	on_place = coral_on_place,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "default:coral_skeleton"})
	end,
})

minetest.register_node(":default:coral_cyan", {
	description = "Cyan Coral  -=Neverending Coral",
	drawtype = "plantlike_rooted",
	waving = 1,
	paramtype = "light",
	tiles = {"default_coral_skeleton.png"},
	special_tiles = {{name = "default_coral_cyan.png", tileable_vertical = true}},
	inventory_image = "default_coral_cyan.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "default:coral_skeleton",
	node_placement_prediction = "",
	sounds = default.node_sound_stone_defaults({
		dig = {name = "default_dig_snappy", gain = 0.2},
		dug = {name = "default_grass_footstep", gain = 0.25},
	}),

	on_place = coral_on_place,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "default:coral_skeleton"})
	end,
})

]]

--Water show in craft guide override_item
minetest.register_node(":default:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"default_water.png"},
	special_tiles = {
		{
			name = "default_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3,
		cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

--antigrief

minetest.override_item("default:sand", {
	groups = {crumbly = 3, falling_node = 1, sand = 1},
})

minetest.override_item("default:desert_sand", {
	groups = {crumbly = 3, falling_node = 1, sand = 1},
})

minetest.override_item("default:silver_sand", {
	groups = {crumbly = 3, falling_node = 1, sand = 1},
})


minetest.override_item("default:gravel", {
	groups = {crumbly = 2, falling_node = 1},
})

minetest.override_item("default:snow", {
	buildable_to = false,
})


--carts antigrief
minetest.override_item("carts:rail", {
	buildable_to = false,
	node_box = {
		type = "fixed",
		fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	walkable = true,
})

minetest.override_item("carts:powerrail", {
	buildable_to = false,
	node_box = {
		type = "fixed",
		fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	walkable = true,
})

minetest.override_item("carts:brakerail", {
	buildable_to = false,
	node_box = {
		type = "fixed",
		fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	walkable = true,
})


minetest.override_item("default:sign_wall_steel", {
	buildable_to = false,
}
)
minetest.override_item("default:sign_wall_wood", {
	buildable_to = false,
}
)

--[[
minetest.override_item(":default:ladder_wood", {
	walkable = true,
})

minetest.override_item(":default:ladder_steel", {
	walkable = true,
})
]]

--flowers

minetest.override_item("flowers:rose", {
	buildable_to = false,
})

minetest.override_item("flowers:tulip", {
	buildable_to = false,
})

minetest.override_item("flowers:dandelion_yellow", {
	buildable_to = false,
})

minetest.override_item("flowers:chrysanthemum_green", {
	buildable_to = false,
})

minetest.override_item("flowers:geranium", {
	buildable_to = false,
})

minetest.override_item("flowers:viola", {
	buildable_to = false,
})

minetest.override_item("flowers:dandelion_white", {
	buildable_to = false,
})

minetest.override_item("flowers:tulip_black", {
	buildable_to = false,
})

minetest.override_item("flowers:mushroom_red", {
	buildable_to = false,
})

minetest.override_item("flowers:mushroom_brown", {
	buildable_to = false,
})


--farming
minetest.override_item("farming:wheat_1", {
	buildable_to = false,
})

minetest.override_item("farming:wheat_2", {
	buildable_to = false,
})

minetest.override_item("farming:wheat_3", {
	buildable_to = false,
})

minetest.override_item("farming:wheat_4", {
	buildable_to = false,
})

minetest.override_item("farming:wheat_5", {
	buildable_to = false,
})

minetest.override_item("farming:wheat_6", {
	buildable_to = false,
})

minetest.override_item("farming:wheat_7", {
	buildable_to = false,
})

minetest.override_item("farming:wheat_8", {
	buildable_to = false,
})



minetest.override_item("farming:cotton_1", {
	buildable_to = false,
})

minetest.override_item("farming:cotton_2", {
	buildable_to = false,
})

minetest.override_item("farming:cotton_3", {
	buildable_to = false,
})

minetest.override_item("farming:cotton_4", {
	buildable_to = false,
})

minetest.override_item("farming:cotton_5", {
	buildable_to = false,
})


--nyan
minetest.override_item("nyancat:nyancat", {
	description = "Do it repel mobs?  Oh my! \nSentry turret effect. \nVery powerful defense. \nMake sure air is above block for turret.",
})

