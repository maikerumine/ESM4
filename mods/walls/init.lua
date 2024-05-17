-- walls/init.lua

walls = {}

local fence_collision_extra = minetest.settings:get_bool("enable_fence_tall") and 3/8 or 0

-- Load support for MT game translation.
local S = minetest.get_translator("walls")

walls.register = function(wall_name, wall_desc, wall_texture_table, wall_mat, wall_sounds, light_source)
	--make wall_texture_table paramenter backwards compatible for mods passing single texture
	if type(wall_texture_table) ~= "table" then
		wall_texture_table = { wall_texture_table }
	end
	-- inventory node, and pole-type wall start item
	minetest.register_node(wall_name, {
		description = wall_desc,
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {-1/4, -1/2, -1/4, 1/4, 1/2, 1/4},
			-- connect_bottom =
			connect_front = {-3/16, -1/2, -1/2,  3/16, 3/8, -1/4},
			connect_left = {-1/2, -1/2, -3/16, -1/4, 3/8,  3/16},
			connect_back = {-3/16, -1/2,  1/4,  3/16, 3/8,  1/2},
			connect_right = { 1/4, -1/2, -3/16,  1/2, 3/8,  3/16},
		},
		collision_box = {
			type = "connected",
			fixed = {-1/4, -1/2, -1/4, 1/4, 1/2 + fence_collision_extra, 1/4},
			-- connect_top =
			-- connect_bottom =
			connect_front = {-1/4,-1/2,-1/2,1/4,1/2 + fence_collision_extra,-1/4},
			connect_left = {-1/2,-1/2,-1/4,-1/4,1/2 + fence_collision_extra,1/4},
			connect_back = {-1/4,-1/2,1/4,1/4,1/2 + fence_collision_extra,1/2},
			connect_right = {1/4,-1/2,-1/4,1/2,1/2 + fence_collision_extra,1/4},
		},
		connects_to = { "group:wall", "group:stone", "group:fence" },
		paramtype = "light",
		is_ground_content = false,
		tiles = wall_texture_table,
		walkable = true,
		groups = { cracky = 3, wall = 1, stone = 2 , not_in_creative_inventory = 1},
		sounds = wall_sounds,
		light_source = light_source,	--mm added for lighted wall 20220818
		use_texture_alpha = true,		--mm added 
	})

	-- crafting recipe
	minetest.register_craft({
		output = wall_name .. " 6",
		recipe = {
			{ "", "", "" },
			{ wall_mat, wall_mat, wall_mat},
			{ wall_mat, wall_mat, wall_mat},
		}
	})

	minetest.register_craft({
		output = "walls:cobble 6",
		recipe = {
			{ "", "", "" },
			{ "default:cobble", "default:cobble", "default:cobble"},
			{ "default:cobble", "default:cobble", "default:cobble"},
		}
	})
	
end


		
minetest.register_node("walls:cobble", {
	description = "Cobblestone Wall --==All walls craft like this==--",
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {-1/4, -1/2, -1/4, 1/4, 1/2, 1/4},
			-- connect_bottom =
			connect_front = {-3/16, -1/2, -1/2,  3/16, 3/8, -1/4},
			connect_left = {-1/2, -1/2, -3/16, -1/4, 3/8,  3/16},
			connect_back = {-3/16, -1/2,  1/4,  3/16, 3/8,  1/2},
			connect_right = { 1/4, -1/2, -3/16,  1/2, 3/8,  3/16},
		},
		collision_box = {
			type = "connected",
			fixed = {-1/4, -1/2, -1/4, 1/4, 1/2 + fence_collision_extra, 1/4},
			-- connect_top =
			-- connect_bottom =
			connect_front = {-1/4,-1/2,-1/2,1/4,1/2 + fence_collision_extra,-1/4},
			connect_left = {-1/2,-1/2,-1/4,-1/4,1/2 + fence_collision_extra,1/4},
			connect_back = {-1/4,-1/2,1/4,1/4,1/2 + fence_collision_extra,1/2},
			connect_right = {1/4,-1/2,-1/4,1/2,1/2 + fence_collision_extra,1/4},
		},
	tiles = {"default_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, wall = 1, stone = 2, not_in_creative_inventory = 0},
	sounds = default.node_sound_stone_defaults(),
})

--walls.register("walls:cobble", "Cobblestone Wall", "default_cobble.png",
--		"default:cobble", default.node_sound_stone_defaults())

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
		"default:diamondblock", default.node_sound_glass_defaults())

walls.register("walls:goldblock", "Gold Block Wall", "default_gold_block.png",
		"default:goldblock", default.node_sound_metal_defaults())

walls.register("walls:mese", "Mese Block Wall", "default_mese_block.png",
		"default:mese", default.node_sound_stone_defaults())

walls.register("walls:bronzeblock", "Bronze Block Wall", "default_bronze_block.png",
		"default:bronzeblock", default.node_sound_metal_defaults())

walls.register("walls:copperblock", "Copper Block Wall", "default_copper_block.png",
		"default:copperblock", default.node_sound_metal_defaults())

walls.register("walls:steelblock", "Steel Block Wall", "default_steel_block.png",
		"default:steelblock", default.node_sound_metal_defaults())

walls.register("walls:waterflowing", "Water Flowing Wall", "default_water.png",
		"default:water_flowing", default.node_sound_water_defaults())

walls.register("walls:nyancat_rainbow", "Nyan Cat Rainbow Wall", "nyancat_rainbow.png",
		"nyancat:nyancat_rainbow", default.node_sound_wood_defaults(), default.LIGHT_MAX)

walls.register("walls:torch", "Torch Wall", "fire_basic_flame.png",
		"default:torch", default.node_sound_leaves_defaults(), default.LIGHT_MAX)


--CBLOCKS
--[[
	ts_furniture.register_furniture("cblocks:wood_black", "Black", "cblocks_wood.png^cblocks_black.png")
	ts_furniture.register_furniture("cblocks:wood_blue", "Blue", "cblocks_wood.png^cblocks_blue.png")
	ts_furniture.register_furniture("cblocks:wood_brown", "Brown", "cblocks_wood.png^cblocks_brown.png")
	ts_furniture.register_furniture("cblocks:wood_cyan", "Cyan", "cblocks_wood.png^cblocks_cyan.png")
	ts_furniture.register_furniture("cblocks:wood_dark_green", "Dark Green", "cblocks_wood.png^cblocks_dark_green.png")
	ts_furniture.register_furniture("cblocks:wood_dark_grey", "Dark Grey", "cblocks_wood.png^cblocks_dark_grey.png")
	ts_furniture.register_furniture("cblocks:wood_green", "Green", "cblocks_wood.png^cblocks_green.png")
	ts_furniture.register_furniture("cblocks:wood_grey", "Grey", "cblocks_wood.png^cblocks_grey.png")
	ts_furniture.register_furniture("cblocks:wood_magenta", "Magenta", "cblocks_wood.png^cblocks_magenta.png")
	ts_furniture.register_furniture("cblocks:wood_orange", "Orange", "cblocks_wood.png^cblocks_orange.png")
	ts_furniture.register_furniture("cblocks:wood_pink", "Pink", "cblocks_wood.png^cblocks_pink.png")
	ts_furniture.register_furniture("cblocks:wood_red", "Red", "cblocks_wood.png^cblocks_red.png")
	ts_furniture.register_furniture("cblocks:wood_violet", "Violet", "cblocks_wood.png^cblocks_violet.png")
	ts_furniture.register_furniture("cblocks:wood_white", "White", "cblocks_wood.png^cblocks_white.png")
	ts_furniture.register_furniture("cblocks:wood_yellow", "Yellow", "cblocks_wood.png^cblocks_yellow.png")
	]]
--colored wood blocks		
walls.register("walls:wood_black", "Black Wood Wall", "cblocks_wood.png^cblocks_black.png",
		"cblocks:wood_black", default.node_sound_wood_defaults())
walls.register("walls:wood_blue", "Blue Wood Wall", "cblocks_wood.png^cblocks_blue.png",
		"cblocks:wood_blue", default.node_sound_wood_defaults())
walls.register("walls:wood_brown", "Brownk Wood Wall", "cblocks_wood.png^cblocks_brown.png",
		"cblocks:wood_brown", default.node_sound_wood_defaults())
walls.register("walls:wood_cyan", "Cyan Wood Wall", "cblocks_wood.png^cblocks_cyan.png",
		"cblocks:wood_cyan", default.node_sound_wood_defaults())
walls.register("walls:wood_dark_green", "Dark Green Wood Wall", "cblocks_wood.png^cblocks_dark_green.png",
		"cblocks:wood_dark_green", default.node_sound_wood_defaults())
walls.register("walls:wood_dark_grey", "Dark Grey Wood Wall", "cblocks_wood.png^cblocks_dark_grey.png",
		"cblocks:wood_dark_grey", default.node_sound_wood_defaults())
walls.register("walls:wood_green", "Green Wood Wall", "cblocks_wood.png^cblocks_green.png",
		"cblocks:wood_green", default.node_sound_wood_defaults())
walls.register("walls:wood_grey", "Grey Wood Wall", "cblocks_wood.png^cblocks_grey.png",
		"cblocks:wood_grey", default.node_sound_wood_defaults())
walls.register("walls:wood_magenta", "Magenta Wood Wall", "cblocks_wood.png^cblocks_magenta.png",
		"cblocks:wood_magenta", default.node_sound_wood_defaults())
walls.register("walls:wood_orange", "Orange Wood Wall", "cblocks_wood.png^cblocks_orange.png",
		"cblocks:wood_orange", default.node_sound_wood_defaults())
walls.register("walls:wood_pink", "Pink Wood Wall", "cblocks_wood.png^cblocks_pink.png",
		"cblocks:wood_pink", default.node_sound_wood_defaults())
walls.register("walls:wood_red", "Red Wood Wall", "cblocks_wood.png^cblocks_red.png",
		"cblocks:wood_red", default.node_sound_wood_defaults())
walls.register("walls:wood_violet", "Violet Wood Wall", "cblocks_wood.png^cblocks_violet.png",
		"cblocks:wood_violet", default.node_sound_wood_defaults())
walls.register("walls:wood_white", "White Wood Wall", "cblocks_wood.png^cblocks_white.png",
		"cblocks:wood_white", default.node_sound_wood_defaults())
walls.register("walls:wood_yellow", "Yellow Wood Wall", "cblocks_wood.png^cblocks_yellow.png",
		"cblocks:wood_yellow", default.node_sound_wood_defaults())

--colored stone blocks		
walls.register("walls:stone_black", "Black Stone Wall", "default_stone.png^cblocks_black.png",
		"cblocks:stone_black", default.node_sound_stone_defaults())
walls.register("walls:stone_blue", "Blue Stone Wall", "default_stone.png^cblocks_blue.png",
		"cblocks:stone_blue", default.node_sound_stone_defaults())
walls.register("walls:stone_brown", "Brownk Stone Wall", "default_stone.png^cblocks_brown.png",
		"cblocks:stone_brown", default.node_sound_stone_defaults())
walls.register("walls:stone_cyan", "Cyan Stone Wall", "default_stone.png^cblocks_cyan.png",
		"cblocks:stone_cyan", default.node_sound_stone_defaults())
walls.register("walls:stone_dark_green", "Dark Green Stone Wall", "default_stone.png^cblocks_dark_green.png",
		"cblocks:stone_dark_green", default.node_sound_stone_defaults())
walls.register("walls:stone_dark_grey", "Dark Grey Stone Wall", "default_stone.png^cblocks_dark_grey.png",
		"cblocks:stone_dark_grey", default.node_sound_stone_defaults())
walls.register("walls:stone_green", "Green Stone Wall", "default_stone.png^cblocks_green.png",
		"cblocks:stone_green", default.node_sound_stone_defaults())
walls.register("walls:stone_grey", "Grey Stone Wall", "default_stone.png^cblocks_grey.png",
		"cblocks:stone_grey", default.node_sound_stone_defaults())
walls.register("walls:stone_magenta", "Magenta Stone Wall", "default_stone.png^cblocks_magenta.png",
		"cblocks:stone_magenta", default.node_sound_stone_defaults())
walls.register("walls:stone_orange", "Orange Stone Wall", "default_stone.png^cblocks_orange.png",
		"cblocks:stone_orange", default.node_sound_stone_defaults())
walls.register("walls:stone_pink", "Pink Stone Wall", "default_stone.png^cblocks_pink.png",
		"cblocks:stone_pink", default.node_sound_stone_defaults())
walls.register("walls:stone_red", "Red Stone Wall", "default_stone.png^cblocks_red.png",
		"cblocks:stone_red", default.node_sound_stone_defaults())
walls.register("walls:stone_violet", "Violet Stone Wall", "default_stone.png^cblocks_violet.png",
		"cblocks:stone_violet", default.node_sound_stone_defaults())
walls.register("walls:stone_white", "White Stone Wall", "default_stone.png^cblocks_white.png",
		"cblocks:stone_white", default.node_sound_stone_defaults())
walls.register("walls:stone_yellow", "Yellow Stone Wall", "default_stone.png^cblocks_yellow.png",
		"cblocks:stone_yellow", default.node_sound_stone_defaults())
		
		

--ES
--technic marble granite
walls.register("walls:granite", "Granite Block Wall", "technic_granite.png",
		"es:granite", default.node_sound_stone_defaults())
		
walls.register("walls:granite_bricks", "Granite Bricks Block Wall", "technic_granite_bricks.png",
		"es:granite_bricks", default.node_sound_stone_defaults())

walls.register("walls:marble", "Marble Block Wall", "technic_marble.png",
		"es:marble", default.node_sound_stone_defaults())
		
walls.register("walls:marble_bricks", "Marble Bricks Block Wall", "technic_marble_bricks.png",
		"es:marble_bricks", default.node_sound_stone_defaults())

--es blocks		
walls.register("walls:emeraldblock", "Emerald Block Wall", "es_emerald_block.png",
		"es:emeraldblock", default.node_sound_glass_defaults(), 7)

walls.register("walls:rubyblock", "Ruby Block Wall", "es_ruby_block.png",
		"es:rubydblock", default.node_sound_glass_defaults(), 7)
		
walls.register("walls:aikerumblock", "Aikerum Block Wall", "es_aikerum_block.png",
		"es:aikerumblock", default.node_sound_glass_defaults(), 7)
		
walls.register("walls:infiniumblock", "Infinium Block Wall", "es_infinium_block.png",
		"es:infiniumblock", default.node_sound_stone_defaults())
		
walls.register("walls:purpelliumblock", "Purpellium Block Wall", "es_purpellium_block.png",
		"es:purpelliumblock", default.node_sound_glass_defaults(), 7)

walls.register("walls:beedo_block", "Beedo Block Wall", "es_beedo_block.png",
		"es:beedo_block", default.node_sound_glass_defaults(), 7)

walls.register("walls:unobtainiumblock", "Unobtainium Block Wall", "es_unobtainium_block.png",
		"es:unobtainiumblock", default.node_sound_stone_defaults())

walls.register("walls:mese_green", "Green MESE Block Wall", "es_mese_green_block.png",
		"es:mese_green", default.node_sound_glass_defaults())
		
walls.register("walls:boneblock", "Bone Block Wall", "bones_front.png",
		"es:boneblock", default.node_sound_gravel_defaults())

walls.register("walls:messymese", "Messymese Wall", "es_messy_mese.png",
		"es:messymese", default.node_sound_stone_defaults())


--default dirt
walls.register("walls:dirt_with_grass", "Dirt With Grass Wall", "default_grass.png",
		"default:dirt_with_grass", default.node_sound_dirt_defaults())

walls.register("walls:dirt", "Dirt Wall", "default_dirt.png",
		"default:dirt", default.node_sound_dirt_defaults())



--default glass
walls.register("walls:meselamp", "Meselamp Wall", "default_meselamp.png",
		"default:meselamp", default.node_sound_glass_defaults(), default.LIGHT_MAX)

walls.register("walls:glass", "Glass Wall", "default_glass.png",
		"default:glass", default.node_sound_glass_defaults())
		
walls.register("walls:obsidian_glass", "Obsidian Glass Wall", "default_obsidian_glass.png",
		"default:obsidian_glass", default.node_sound_glass_defaults())

--default trees
walls.register("walls:tree", "Tree Wall", "default_tree.png",
		"default:tree", default.node_sound_wood_defaults())

walls.register("walls:wood", "Wood Wall", "default_wood.png",
		"default:wood", default.node_sound_wood_defaults())

walls.register("walls:jungletree", "Jungle Tree Wall", "default_jungletree.png",
		"default:jungletree", default.node_sound_wood_defaults())

walls.register("walls:junglewood", "Jungle Wood Wall", "default_junglewood.png",
		"default:junglewood", default.node_sound_wood_defaults())

walls.register("walls:pine_tree", "Pine Tree Wall", "default_pine_tree.png",
		"default:pine_tree", default.node_sound_wood_defaults())

walls.register("walls:pine_wood", "Pine Wood Wall", "default_pine_wood.png",
		"default:pine_wood", default.node_sound_wood_defaults())

walls.register("walls:acacia_tree", "Acacia Tree Wall", "default_acacia_tree.png",
		"default:acacia_tree", default.node_sound_wood_defaults())

walls.register("walls:acacia_wood", "Acacia Wood Wall", "default_acacia_wood.png",
		"default:acacia_wood", default.node_sound_wood_defaults())

walls.register("walls:aspen_tree", "Aspen Tree Wall", "default_aspen_tree.png",
		"default:aspen_tree", default.node_sound_wood_defaults())

walls.register("walls:aspen_wood", "Aspen Wood Wall", "default_aspen_wood.png",
		"default:aspen_wood", default.node_sound_wood_defaults())
		
--[[		
--QUARTZ		
walls.register("walls:stair_block", "Quartz Block Wall", "quartz_block.png",
		"quartz:stair_block", default.node_sound_stone_defaults())

walls.register("walls:pillar", "Quartz Pillar Wall", "quartz_pillar_side.png",
		"quartz:pillar", default.node_sound_stone_defaults())
		
walls.register("walls:chiseled", "Quartz Chisled Wall", "quartz_chiseled.png",
		"quartz:chiseled", default.node_sound_stone_defaults())	
]]


minetest.log("action", "ES: [WALLS MM STYLE] loaded.")