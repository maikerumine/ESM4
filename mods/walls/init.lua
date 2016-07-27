
--[[

Walls mod for Minetest

Copyright (C) 2015 Auke Kok <sofar@foo-projects.org>

This program is free software. It comes without any warranty, to
the extent permitted by applicable law. You can redistribute it
and/or modify it under the terms of the Do What The Fuck You Want
To Public License, Version 2, as published by Sam Hocevar. See
http://sam.zoy.org/wtfpl/COPYING for more details.

--]]

walls = {}

--NEW CODE
walls.register = function(wall_name, wall_desc, wall_texture, wall_mat, wall_sounds)
	-- inventory node, and pole-type wall start item
	minetest.register_node(wall_name, {
		description = wall_desc,
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {{-1/4, -1/2, -1/4, 1/4, 1/2, 1/4}},
			-- connect_bottom =
			connect_front = {{-3/16, -1/2, -1/2,  3/16, 3/8, -1/4}},
			connect_left = {{-1/2, -1/2, -3/16, -1/4, 3/8,  3/16}},
			connect_back = {{-3/16, -1/2,  1/4,  3/16, 3/8,  1/2}},
			connect_right = {{ 1/4, -1/2, -3/16,  1/2, 3/8,  3/16}},
		},
		connects_to = { "group:cracky", "group:wall", "group:stone" },
		paramtype = "light",
		is_ground_content = false,
		tiles = { wall_texture, },
		walkable = true,
		groups = { cracky = 3, wall = 1, stone = 2 },
		sounds = wall_sounds,
	})

	-- crafting recipe
	minetest.register_craft({
		output = wall_name .. " 6",
		recipe = {
			{ '', '', '' },
			{ wall_mat, wall_mat, wall_mat},
			{ wall_mat, wall_mat, wall_mat},
		}
	})

end




--CURRENT FENCE CODE REF

-- Fence registration helper
--
function default.register_fence(name, def)
	minetest.register_craft({
		output = name .. " 4",
		recipe = {
			{ def.material, 'group:stick', def.material },
			{ def.material, 'group:stick', def.material },
		}
	})

	local fence_texture = "default_fence_overlay.png^" .. def.texture ..
			"^default_fence_overlay.png^[makealpha:255,126,126"
	-- Allow almost everything to be overridden
	local default_fields = {
		paramtype = "light",
		drawtype = "fencelike",
		inventory_image = fence_texture,
		wield_image = fence_texture,
		tiles = { def.texture },
		sunlight_propagates = true,
		is_ground_content = false,
		selection_box = {
			type = "fixed",
			fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
		},
		groups = {},
	}
	for k, v in pairs(default_fields) do
		if not def[k] then
			def[k] = v
		end
	end

	-- Always add to the fence group, even if no group provided
	def.groups.fence = 1

	def.texture = nil
	def.material = nil

	minetest.register_node(name, def)
end


walls.register("walls:cobble", "Cobblestone Wall", "default_cobble.png",
		"default:cobble", default.node_sound_stone_defaults())

walls.register("walls:mossycobble", "Mossy Cobblestone Wall", "default_mossycobble.png",
		"default:mossycobble", default.node_sound_stone_defaults())

walls.register("walls:desertcobble", "Desert Cobblestone Wall", "default_desert_cobble.png",
		"default:desert_cobble", default.node_sound_stone_defaults())

walls.register("walls:stone", "Stone Wall", "default_stone.png",
		"default:stone", default.node_sound_stone_defaults())

walls.register("walls:stonebrick", "Stone Brick Wall", "default_stone_brick.png",
		"default:stonebrick", default.node_sound_stone_defaults())

walls.register("walls:desert_stone", "Desert Stone Wall", "default_desert_stone.png",
		"default:desert_stone", default.node_sound_stone_defaults())

walls.register("walls:desert_stonebrick", "Desert Stone Brick Wall", "default_desert_stone_brick.png",
		"default:desert_stonebrick", default.node_sound_stone_defaults())

walls.register("walls:sandstone", "Sandstone Wall", "default_sandstone.png",
		"default:sandstone", default.node_sound_stone_defaults())

walls.register("walls:sandstonebrick", "Sandstone Brick Wall", "default_sandstone_brick.png",
		"default:sandstonebrick", default.node_sound_stone_defaults())

walls.register("walls:obsidianbrick", "Obsidian Brick Wall", "default_obsidian_brick.png",
		"default:obsidianbrick", default.node_sound_stone_defaults())

walls.register("walls:brick", "Brick Wall", "default_brick.png",
		"default:brick", default.node_sound_stone_defaults())

walls.register("walls:diamondblock", "Diamond Block Wall", "default_diamond_block.png",
		"default:diamondblock", default.node_sound_stone_defaults())

walls.register("walls:goldblock", "Gold Block Wall", "default_gold_block.png",
		"default:goldblock", default.node_sound_stone_defaults())

walls.register("walls:mese", "Mese Block Wall", "default_mese_block.png",
		"default:mese", default.node_sound_stone_defaults())

walls.register("walls:bronzeblock", "Bronze Block Wall", "default_bronze_block.png",
		"default:bronzeblock", default.node_sound_stone_defaults())

walls.register("walls:copperblock", "Copper Block Wall", "default_copper_block.png",
		"default:copperblock", default.node_sound_stone_defaults())

walls.register("walls:steelblock", "Steel Block Wall", "default_steel_block.png",
		"default:steelblock", default.node_sound_stone_defaults())

walls.register("walls:goldblock", "Gold Block Wall", "default_gold_block.png",
		"default:goldblock", default.node_sound_stone_defaults())

walls.register("walls:waterflowing", "Water Flowing Wall", "default_water.png",
		"default:water_flowing", default.node_sound_stone_defaults())

walls.register("walls:nyancat_rainbow", "Nyan Cat Rainbow Wall", "nyancat_rainbow.png",
		"nyancat:nyancat_rainbow", default.node_sound_stone_defaults())

walls.register("walls:torch", "Torch Wall", "fire_basic_flame.png",
		"default:torch", default.node_sound_stone_defaults())



































