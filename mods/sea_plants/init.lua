--[[

   Sea Plants init.lua

   Copyright 2017 Hamlet <h4mlet@riseup.net>
   Copyright 2016 Juraj Vajda
   Copyright 2013-2016 Topywo

   This program is free software; you can redistribute it and/or modify
   it under the terms of the Lesser GNU General Public License as published by
   the Free Software Foundation; either version 2.1 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.

]]--


-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")


--
-- Sea Plants' spawning settings
--

-- Green kelps' sand

local sea_plants_sand_kelp_green_max = tonumber(minetest.settings:get("sea_plants_sand_kelp_green_max"))
local sea_plants_sand_kelp_green_min = tonumber(minetest.settings:get("sea_plants_sand_kelp_green_min"))

if not sea_plants_sand_kelp_green_max then
   sea_plants_sand_kelp_green_max = -14
   minetest.settings:set("sea_plants_sand_kelp_green_max",
   sea_plants_sand_kelp_green_max)
end

if not sea_plants_sand_kelp_green_min then
   sea_plants_sand_kelp_green_min = -31000
   minetest.settings:set("sea_plants_sand_kelp_green_min",
   sea_plants_sand_kelp_green_min)
end


-- Green kelps' dirt

local sea_plants_dirt_kelp_green_max = tonumber(minetest.settings:get("sea_plants_dirt_kelp_green_max"))
local sea_plants_sand_kelp_green_min = tonumber(minetest.settings:get("sea_plants_dirt_kelp_green_min"))

if not sea_plants_dirt_kelp_green_max then
   sea_plants_dirt_kelp_green_max = -14
   minetest.settings:set("sea_plants_dirt_kelp_green_max",
   sea_plants_dirt_kelp_green_max)
end

if not sea_plants_dirt_kelp_green_min then
   sea_plants_dirt_kelp_green_min = -31000
   minetest.settings:set("sea_plants_dirt_kelp_green_min",
   sea_plants_dirt_kelp_green_min)
end


-- Brown kelps' sand

local sea_plants_sand_kelp_brown_max = tonumber(minetest.settings:get("sea_plants_sand_kelp_brown_max"))
local sea_plants_sand_kelp_brown_min = tonumber(minetest.settings:get("sea_plants_sand_kelp_brown_min"))

if not sea_plants_sand_kelp_brown_max then
   sea_plants_sand_kelp_brown_max = -14
   minetest.settings:set("sea_plants_sand_kelp_brown_max",
   sea_plants_sand_kelp_brown_max)
end

if not sea_plants_sand_kelp_brown_min then
   sea_plants_sand_kelp_brown_min = -31000
   minetest.settings:set("sea_plants_sand_kelp_brown_min",
   sea_plants_sand_kelp_brown_min)
end


-- Brown kelps' dirt

local sea_plants_dirt_kelp_brown_max = tonumber(minetest.settings:get("sea_plants_dirt_kelp_brown_max"))
local sea_plants_sand_kelp_brown_min = tonumber(minetest.settings:get("sea_plants_dirt_kelp_brown_min"))

if not sea_plants_dirt_kelp_brown_max then
   sea_plants_dirt_kelp_brown_max = -14
   minetest.settings:set("sea_plants_dirt_kelp_brown_max",
   sea_plants_dirt_kelp_brown_max)
end

if not sea_plants_dirt_kelp_brown_min then
   sea_plants_dirt_kelp_brown_min = -31000
   minetest.settings:set("sea_plants_dirt_kelp_brown_min",
   sea_plants_dirt_kelp_brown_min)
end


-- Green grasses' sand

local sea_plants_sand_sea_grass_green_max = tonumber(minetest.settings:get("sea_plants_sand_sea_grass_green_max"))
local sea_plants_sand_sea_grass_green_min = tonumber(minetest.settings:get("sea_plants_sand_sea_grass_green_min"))

if not sea_plants_sand_sea_grass_green_max then
   sea_plants_sand_sea_grass_green_max = -14
   minetest.settings:set("sea_plants_sand_sea_grass_green_max",
   sea_plants_sand_sea_grass_green_max)
end

if not sea_plants_sand_sea_grass_green_min then
   sea_plants_sand_sea_grass_green_min = -31000
   minetest.settings:set("sea_plants_sand_sea_grass_green_min",
   sea_plants_sand_sea_grass_green_min)
end


-- Green grasses' dirt

local sea_plants_dirt_sea_grass_green_max = tonumber(minetest.settings:get("sea_plants_dirt_sea_grass_green_max"))
local sea_plants_sand_sea_grass_green_min = tonumber(minetest.settings:get("sea_plants_dirt_sea_grass_green_min"))

if not sea_plants_dirt_sea_grass_green_max then
   sea_plants_dirt_sea_grass_green_max = -14
   minetest.settings:set("sea_plants_dirt_sea_grass_green_max",
   sea_plants_dirt_sea_grass_green_max)
end

if not sea_plants_dirt_sea_grass_green_min then
   sea_plants_dirt_sea_grass_green_min = -31000
   minetest.settings:set("sea_plants_dirt_sea_grass_green_min",
   sea_plants_dirt_sea_grass_green_min)
end


-- Red grasses' sand

local sea_plants_sand_sea_grass_red_max = tonumber(minetest.settings:get("sea_plants_sand_sea_grass_red_max"))
local sea_plants_sand_sea_grass_red_min = tonumber(minetest.settings:get("sea_plants_sand_sea_grass_red_min"))

if not sea_plants_sand_sea_grass_red_max then
   sea_plants_sand_sea_grass_red_max = -14
   minetest.settings:set("sea_plants_sand_sea_grass_red_max",
   sea_plants_sand_sea_grass_red_max)
end

if not sea_plants_sand_sea_grass_red_min then
   sea_plants_sand_sea_grass_red_min = -31000
   minetest.settings:set("sea_plants_sand_sea_grass_red_min",
   sea_plants_sand_sea_grass_red_min)
end


-- Red grasses' dirt

local sea_plants_dirt_sea_grass_red_max = tonumber(minetest.settings:get("sea_plants_dirt_sea_grass_red_max"))
local sea_plants_sand_sea_grass_red_min = tonumber(minetest.settings:get("sea_plants_dirt_sea_grass_red_min"))

if not sea_plants_dirt_sea_grass_red_max then
   sea_plants_dirt_sea_grass_red_max = -14
   minetest.settings:set("sea_plants_dirt_sea_grass_red_max",
   sea_plants_dirt_sea_grass_red_max)
end

if not sea_plants_dirt_sea_grass_red_min then
   sea_plants_dirt_sea_grass_red_min = -31000
   minetest.settings:set("sea_plants_dirt_sea_grass_red_min",
   sea_plants_dirt_sea_grass_red_min)
end


--
-- Sea Plants' ABMs' values 
--

-- Green kelps' dirt interval and chance

local sea_plants_dirt_kelp_green_interval = tonumber(minetest.settings:get("sea_plants_dirt_kelp_green_interval"))
local sea_plants_dirt_kelp_green_chance = tonumber(minetest.settings:get("sea_plants_dirt_kelp_green_chance"))

if not sea_plants_dirt_kelp_green_interval then
   sea_plants_dirt_kelp_green_interval = 12
   minetest.settings:set("sea_plants_dirt_kelp_green_interval",
   sea_plants_dirt_kelp_green_interval)
end

if not sea_plants_dirt_kelp_green_chance then
   sea_plants_dirt_kelp_green_chance = 12
   minetest.settings:set("sea_plants_dirt_kelp_green_chance",
   sea_plants_dirt_kelp_green_chance)
end


-- Green kelps' sand interval and chance

local sea_plants_sand_kelp_green_interval = tonumber(minetest.settings:get("sea_plants_sand_kelp_green_interval"))
local sea_plants_sand_kelp_green_chance = tonumber(minetest.settings:get("sea_plants_sand_kelp_green_chance"))

if not sea_plants_sand_kelp_green_interval then
   sea_plants_sand_kelp_green_interval = 12
   minetest.settings:set("sea_plants_sand_kelp_green_interval",
   sea_plants_sand_kelp_green_interval)
end

if not sea_plants_sand_kelp_green_chance then
   sea_plants_sand_kelp_green_chance = 12
   minetest.settings:set("sea_plants_sand_kelp_green_chance",
   sea_plants_sand_kelp_green_chance)
end


-- Green kelps' interval and chance

local sea_plants_kelp_green_interval = tonumber(minetest.settings:get("sea_plants_kelp_green_interval"))
local sea_plants_kelp_green_chance = tonumber(minetest.settings:get("sea_plants_kelp_green_chance"))

if not sea_plants_kelp_green_interval then
   sea_plants_kelp_green_interval = 6
   minetest.settings:set("sea_plants_kelp_green_interval",
   sea_plants_kelp_green_interval)
end

if not sea_plants_kelp_green_chance then
   sea_plants_kelp_green_chance = 3
   minetest.settings:set("sea_plants_kelp_green_chance",
   sea_plants_kelp_green_chance)
end


-- Brown kelps' dirt interval and chance

local sea_plants_dirt_kelp_brown_interval = tonumber(minetest.settings:get("sea_plants_dirt_kelp_brown_interval"))
local sea_plants_dirt_kelp_brown_chance = tonumber(minetest.settings:get("sea_plants_dirt_kelp_brown_chance"))

if not sea_plants_dirt_kelp_brown_interval then
   sea_plants_dirt_kelp_brown_interval = 12
   minetest.settings:set("sea_plants_dirt_kelp_brown_interval",
   sea_plants_dirt_kelp_brown_interval)
end

if not sea_plants_dirt_kelp_brown_chance then
   sea_plants_dirt_kelp_brown_chance = 12
   minetest.settings:set("sea_plants_dirt_kelp_brown_chance",
   sea_plants_dirt_kelp_brown_chance)
end


-- Brown kelps' sand interval and chance

local sea_plants_sand_kelp_brown_interval = tonumber(minetest.settings:get("sea_plants_sand_kelp_brown_interval"))
local sea_plants_sand_kelp_brown_chance = tonumber(minetest.settings:get("sea_plants_sand_kelp_brown_chance"))

if not sea_plants_sand_kelp_brown_interval then
   sea_plants_sand_kelp_brown_interval = 12
   minetest.settings:set("sea_plants_sand_kelp_brown_interval",
   sea_plants_sand_kelp_brown_interval)
end

if not sea_plants_sand_kelp_brown_chance then
   sea_plants_sand_kelp_brown_chance = 12
   minetest.settings:set("sea_plants_sand_kelp_brown_chance",
   sea_plants_sand_kelp_brown_chance)
end


-- Brown kelps' interval and chance

local sea_plants_kelp_brown_interval = tonumber(minetest.settings:get("sea_plants_kelp_brown_interval"))
local sea_plants_kelp_brown_chance = tonumber(minetest.settings:get("sea_plants_kelp_brown_chance"))

if not sea_plants_kelp_brown_interval then
   sea_plants_kelp_brown_interval = 6
   minetest.settings:set("sea_plants_kelp_brown_interval",
   sea_plants_kelp_brown_interval)
end

if not sea_plants_kelp_brown_chance then
   sea_plants_kelp_brown_chance = 3
   minetest.settings:set("sea_plants_kelp_brown_chance",
   sea_plants_kelp_brown_chance)
end


-- Green grasses' dirt interval and chance

local sea_plants_dirt_sea_grass_green_interval = tonumber(minetest.settings:get("sea_plants_dirt_sea_grass_green_interval"))
local sea_plants_dirt_sea_grass_green_chance = tonumber(minetest.settings:get("sea_plants_dirt_sea_grass_green_chance"))

if not sea_plants_dirt_sea_grass_green_interval then
   sea_plants_dirt_sea_grass_green_interval = 12
   minetest.settings:set("sea_plants_dirt_sea_grass_green_interval",
   sea_plants_dirt_sea_grass_green_interval)
end

if not sea_plants_dirt_sea_grass_green_chance then
   sea_plants_dirt_sea_grass_green_chance = 12
   minetest.settings:set("sea_plants_dirt_sea_grass_green_chance",
   sea_plants_dirt_sea_grass_green_chance)
end


-- Green grasses' sand interval and chance

local sea_plants_sand_sea_grass_green_interval = tonumber(minetest.settings:get("sea_plants_sand_sea_grass_green_interval"))
local sea_plants_sand_sea_grass_green_chance = tonumber(minetest.settings:get("sea_plants_sand_sea_grass_green_chance"))

if not sea_plants_sand_sea_grass_green_interval then
   sea_plants_sand_sea_grass_green_interval = 12
   minetest.settings:set("sea_plants_sand_sea_grass_green_interval",
   sea_plants_sand_sea_grass_green_interval)
end

if not sea_plants_sand_sea_grass_green_chance then
   sea_plants_sand_sea_grass_green_chance = 12
   minetest.settings:set("sea_plants_sand_sea_grass_green_chance",
   sea_plants_sand_sea_grass_green_chance)
end


-- Red grasses' dirt interval and chance

local sea_plants_dirt_sea_grass_red_interval = tonumber(minetest.settings:get("sea_plants_dirt_sea_grass_red_interval"))
local sea_plants_dirt_sea_grass_red_chance = tonumber(minetest.settings:get("sea_plants_dirt_sea_grass_red_chance"))

if not sea_plants_dirt_sea_grass_red_interval then
   sea_plants_dirt_sea_grass_red_interval = 12
   minetest.settings:set("sea_plants_dirt_sea_grass_red_interval",
   sea_plants_dirt_sea_grass_red_interval)
end

if not sea_plants_dirt_sea_grass_red_chance then
   sea_plants_dirt_sea_grass_red_chance = 12
   minetest.settings:set("sea_plants_dirt_sea_grass_red_chance",
   sea_plants_dirt_sea_grass_red_chance)
end


-- Red grasses' sand interval and chance

local sea_plants_sand_sea_grass_red_interval = tonumber(minetest.settings:get("sea_plants_sand_sea_grass_red_interval"))
local sea_plants_sand_sea_grass_red_chance = tonumber(minetest.settings:get("sea_plants_sand_sea_grass_red_chance"))

if not sea_plants_sand_sea_grass_red_interval then
   sea_plants_sand_sea_grass_red_interval = 12
   minetest.settings:set("sea_plants_sand_sea_grass_red_interval",
   sea_plants_sand_sea_grass_red_interval)
end

if not sea_plants_sand_sea_grass_red_chance then
   sea_plants_sand_sea_grass_red_chance = 12
   minetest.settings:set("sea_plants_sand_sea_grass_red_chance",
   sea_plants_sand_sea_grass_red_chance)
end


-- NODES

minetest.register_node("sea_plants:kelpgreen", {
	description = S("Green Kelp"),
	drawtype = "plantlike",
	tiles = {"seaplants_kelpgreen.png"},
	inventory_image = "seaplants_kelpgreen.png",
	wield_image = "seaplants_kelpgreen.png",
	paramtype = "plantlike",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1)
})

minetest.register_node("sea_plants:kelpgreenmiddle", {
	description = S("Green Kelp middle"),
	drawtype = "plantlike",
	tiles = {"seaplants_kelpgreenmiddle.png"},
	inventory_image = "seaplants_kelpgreenmiddle.png",
	wield_image = "seaplants_kelpgreenmiddle.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	drop = "sea_plants:kelpgreen",
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("sea_plants:kelpbrown", {
	description = S("Brown Kelp "),
	drawtype = "plantlike",
	tiles = {"seaplants_kelpbrown.png"},
	inventory_image = "seaplants_kelpbrown.png",
	wield_image = "seaplants_kelpbrown.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1)
})

minetest.register_node("sea_plants:kelpbrownmiddle", {
	description = S("Brown Kelp middle"),
	drawtype = "plantlike",
	tiles = {"seaplants_kelpbrownmiddle.png"},
	inventory_image = "seaplants_kelpbrownmiddle.png",
	wield_image = "seaplants_kelpbrownmiddle.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	drop = "sea_plants:kelpbrown",
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("sea_plants:seagrassgreen", {
	description = S("Green Seagrass"),
	drawtype = "plantlike",
	tiles = {"seaplants_seagrassgreen.png"},
	inventory_image = "seaplants_seagrassgreen.png",
	wield_image = "seaplants_seagrassgreen.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1)
})

minetest.register_node("sea_plants:seagrassred", {
	description = S("Red Seagrass"),
	drawtype = "plantlike",
	tiles = {"seaplants_seagrassred.png"},
	inventory_image = "seaplants_seagrassred.png",
	wield_image = "seaplants_seagrassred.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1)
})

minetest.register_node("sea_plants:seaplantssandkelpgreen", {
	description = S("Sea plants sand kelp green"),
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("sea_plants:seaplantsdirtkelpgreen", {
	description = S("Sea plants dirt kelp green"),
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1, not_in_creative_inventory=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("sea_plants:seaplantssandkelpbrown", {
	description = S("Sea plants sand kelp brown"),
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("sea_plants:seaplantsdirtkelpbrown", {
	description = S("Sea plants dirt kelp brown"),
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1, not_in_creative_inventory=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("sea_plants:seaplantssandseagrassgreen", {
	description = S("Sea plants sand seagrass green"),
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("sea_plants:seaplantsdirtseagrassgreen", {
	description = S("Sea plants dirt seagrass green"),
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1, not_in_creative_inventory=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("sea_plants:seaplantssandseagrassred", {
	description = S("Sea plants sand seagrass red"),
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("sea_plants:seaplantsdirtseagrassred", {
	description = S("Sea plants dirt seagrass red"),
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1, not_in_creative_inventory=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults(),
})


-- CRAFT ITEMS


minetest.register_craftitem("sea_plants:seasaladmix", {
	description = S("Sea salad mix"),
	inventory_image = "seaplants_seasaladmix.png",
	on_use = minetest.item_eat(6)
})


-- CRAFTING

minetest.register_craft({
	type = "shapeless",
	output = "sea_plants:seasaladmix",
	recipe = {"sea_plants:kelpgreen", "sea_plants:kelpbrown", "sea_plants:seagrassgreen", "sea_plants:seagrassred"}
})


-- SEAPLANTS SAND AND DIRT GENERATION


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "sea_plants:seaplantssandkelpgreen",
	wherein        = {"default:sand", "default:gravel"},
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	y_max          = sea_plants_sand_kelp_green_max,
	y_min          = sea_plants_sand_kelp_green_min,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "sea_plants:seaplantsdirtkelpgreen",
	wherein        = "default:dirt",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	y_max          = sea_plants_dirt_kelp_green_max,
	y_min          = sea_plants_sand_kelp_green_min,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "sea_plants:seaplantssandkelpbrown",
	wherein        = {"default:sand", "default:gravel"},
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	y_max          = sea_plants_sand_kelp_brown_max,
	y_min          = sea_plants_sand_kelp_brown_min,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "sea_plants:seaplantsdirtkelpbrown",
	wherein        = "default:dirt",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	y_max          = sea_plants_dirt_kelp_brown_max,
	y_min          = sea_plants_dirt_kelp_brown_min,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "sea_plants:seaplantssandseagrassgreen",
	wherein        = {"default:sand", "default:gravel"},
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	y_max          = sea_plants_sand_sea_grass_green_max,
	y_min          = sea_plants_sand_sea_grass_green_min,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "sea_plants:seaplantsdirtseagrassgreen",
	wherein        = "default:dirt",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	y_max          = sea_plants_dirt_sea_grass_green_max,
	y_min          = sea_plants_dirt_sea_grass_green_min,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "sea_plants:seaplantssandseagrassred",
	wherein        = {"default:sand", "default:gravel"},
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	y_max          = sea_plants_sand_sea_grass_red_max,
	y_min          = sea_plants_sand_sea_grass_red_min,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "sea_plants:seaplantsdirtseagrassred",
	wherein        = "default:dirt",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	y_max          = sea_plants_dirt_sea_grass_red_max,
	y_min          = sea_plants_dirt_sea_grass_red_min,
})

local function generate_ore(name, wherein, minp, maxp, seed, chunks_per_volume, chunk_size, ore_per_chunk, y_min, y_max)
	if maxp.y < y_min or minp.y > y_max then
		return
	end
	local y_min = math.max(minp.y, y_min)
	local y_max = math.min(maxp.y, y_max)
	if chunk_size >= y_max - y_min + 1 then
		return
	end
	local volume = (maxp.x-minp.x+1)*(y_max-y_min+1)*(maxp.z-minp.z+1)
	local pr = PseudoRandom(seed)
	local num_chunks = math.floor(chunks_per_volume * volume)
	local inverse_chance = math.floor(chunk_size*chunk_size*chunk_size / ore_per_chunk)
	for i=1,num_chunks do
		local y0 = pr:next(y_min, y_max-chunk_size+1)
		if y0 >= y_min and y0 <= y_max then
			local x0 = pr:next(minp.x, maxp.x-chunk_size+1)
			local z0 = pr:next(minp.z, maxp.z-chunk_size+1)
			local p0 = {x=x0, y=y0, z=z0}
			for x1=0,chunk_size-1 do
			for y1=0,chunk_size-1 do
			for z1=0,chunk_size-1 do
				if pr:next(1,inverse_chance) == 1 then
					local x2 = x0+x1
					local y2 = y0+y1
					local z2 = z0+z1
					local p2 = {x=x2, y=y2, z=z2}
					if minetest.get_node(p2).name == wherein then
						minetest.set_node(p2, {name=name})
					end
				end
			end
			end
			end
		end
	end
end


-- ABM'S


minetest.register_abm({
nodenames = {"sea_plants:seaplantsdirtkelpgreen"},
interval = sea_plants_dirt_kelp_green_interval,
chance = sea_plants_dirt_kelp_green_chance,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source")
	or (minetest.get_node(yp).name == "default:river_water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "sea_plants:kelpgreen"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"sea_plants:seaplantssandkelpgreen"},
interval = sea_plants_sand_kelp_green_interval,
chance = sea_plants_sand_kelp_green_chance,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source")
	or (minetest.get_node(yp).name == "default:river_water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "sea_plants:kelpgreen"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"sea_plants:kelpgreen"},
interval = sea_plants_kelp_green_interval,
chance = sea_plants_kelp_green_chance,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	local yyp = {x = pos.x, y = pos.y + 2, z = pos.z}
	local yyyp = {x = pos.x, y = pos.y + 3, z = pos.z}
	if minetest.get_node(pos).name == "sea_plants:kelpgreen" and
		(minetest.get_node(yp).name == "default:water_source")
		or (minetest.get_node(yp).name == "default:river_water_source") then
			if (minetest.get_node(yyp).name == "default:water_source")
			or (minetest.get_node(yp).name == "default:river_water_source") then
				if (minetest.get_node(yyyp).name == "default:water_source")
				or (minetest.get_node(yp).name == "default:river_water_source") then
					minetest.add_node(pos, {name = "sea_plants:kelpgreenmiddle"}) 
					pos.y = pos.y + 1
					minetest.add_node(pos, {name = "sea_plants:kelpgreen"}) 
				else
				return
			end
		end
	end
end
})

minetest.register_abm({
nodenames = {"sea_plants:seaplantsdirtkelpbrown"},
interval = sea_plants_dirt_kelp_brown_interval,
chance = sea_plants_dirt_kelp_brown_chance,
action = function(pos)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source")
	or (minetest.get_node(yp).name == "default:river_water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "sea_plants:kelpbrown"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"sea_plants:seaplantssandkelpbrown"},
interval = sea_plants_sand_kelp_brown_interval,
chance = sea_plants_sand_kelp_brown_chance,
action = function(pos)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source")
	or (minetest.get_node(yp).name == "default:river_water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "sea_plants:kelpbrown"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"sea_plants:kelpbrown"},
interval = sea_plants_kelp_brown_interval,
chance = sea_plants_kelp_brown_interval,
action = function(pos)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	local yyp = {x = pos.x, y = pos.y + 2, z = pos.z}
	local yyyp = {x = pos.x, y = pos.y + 3, z = pos.z}
	if minetest.get_node(pos).name == "sea_plants:kelpbrown" and
		(minetest.get_node(yp).name == "default:water_source")
		or (minetest.get_node(yp).name == "default:river_water_source") then
			if (minetest.get_node(yyp).name == "default:water_source")
			or (minetest.get_node(yp).name == "default:river_water_source") then
				if (minetest.get_node(yyyp).name == "default:water_source")
				or (minetest.get_node(yp).name == "default:river_water_source") then
					minetest.add_node(pos, {name = "sea_plants:kelpbrownmiddle"}) 
					pos.y = pos.y + 1
					minetest.add_node(pos, {name = "sea_plants:kelpbrown"}) 
				else
				return
			end
		end
	end
end
})

minetest.register_abm({
nodenames = {"sea_plants:seaplantsdirtseagrassgreen"},
interval = sea_plants_dirt_sea_grass_green_interval,
chance = sea_plants_dirt_sea_grass_green_chance,
action = function(pos)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source")
	or (minetest.get_node(yp).name == "default:river_water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "sea_plants:seagrassgreen"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"sea_plants:seaplantssandseagrassgreen"},
interval = sea_plants_sand_sea_grass_green_interval,
chance = sea_plants_sand_sea_grass_green_chance,
action = function(pos)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source")
	or (minetest.get_node(yp).name == "default:river_water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "sea_plants:seagrassgreen"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"sea_plants:seaplantsdirtseagrassred"},
interval = sea_plants_dirt_sea_grass_red_interval,
chance = sea_plants_dirt_sea_grass_red_chance,
action = function(pos)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source")
	or (minetest.get_node(yp).name == "default:river_water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "sea_plants:seagrassred"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"sea_plants:seaplantssandseagrassred"},
interval = sea_plants_sand_sea_grass_red_interval,
chance = sea_plants_sand_sea_grass_red_chance,
action = function(pos)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source")
	or (minetest.get_node(yp).name == "default:river_water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "sea_plants:seagrassred"}) else
		return
	end
end
})


-- ALIASES

minetest.register_alias("sea_plants:stemsgreen","default:sand")
minetest.register_alias("sea_plants:stemsbrown","default:dirt")
minetest.register_alias("sea_plants:leafyblue","default:sand")
minetest.register_alias("sea_plants:leafygreen","default:dirt")

minetest.register_alias("sea_plants:chewstickgreen","sea_plants:kelpgreen")
minetest.register_alias("sea_plants:chewstickbrown","sea_plants:kelpbrown")
minetest.register_alias("sea_plants:leavysnackgreen","sea_plants:seagrassgreen")
minetest.register_alias("sea_plants:leavysnackblue","sea_plants:seagrassred")
minetest.register_alias("sea_plants:seasalad","sea_plants:seasaladmix")
