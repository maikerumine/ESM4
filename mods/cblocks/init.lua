--Originally made by TenPlus1
--maikerumine added slabs and stairs
--20160321
--20171121  -added more blocks and intergrate with moreblocks / stairs plus
--20200119 remade for minetest 0.4.9
--20200915 added reverse cooking to extract dyes
--20220708  added ores and ore gen to all the stone blocks
--for extreme survival game

cblocks = {}
local default_path = minetest.get_modpath("cblocks")
dofile(default_path.."/o_black_ores.lua")
dofile(default_path.."/o_blue_ores.lua")
dofile(default_path.."/o_brown_ores.lua")
dofile(default_path.."/o_cyan_ores.lua")
dofile(default_path.."/o_dark_green_ores.lua")
dofile(default_path.."/o_dark_grey_ores.lua")
dofile(default_path.."/o_green_ores.lua")
dofile(default_path.."/o_grey_ores.lua")
dofile(default_path.."/o_magenta_ores.lua")
dofile(default_path.."/o_orange_ores.lua")
dofile(default_path.."/o_pink_ores.lua")
dofile(default_path.."/o_red_ores.lua")
dofile(default_path.."/o_violet_ores.lua")
dofile(default_path.."/o_white_ores.lua")
dofile(default_path.."/o_yellow_ores.lua")

--dofile(default_path.."/oregen_cblocks.lua")	--use in main mapgen mod



local colours = {
	{"black",      "Black",      "cblocks_black.png"},
	{"blue",       "Blue",       "cblocks_blue.png"},
	{"brown",      "Brown",      "cblocks_brown.png"},
	{"cyan",       "Cyan",       "cblocks_cyan.png"},
	{"dark_green", "Dark Green", "cblocks_dark_green.png"},
	{"dark_grey",  "Dark Grey",  "cblocks_dark_grey.png"},
	{"green",      "Green",      "cblocks_green.png"},
	{"grey",       "Grey",       "cblocks_grey.png"},
	{"magenta",    "Magenta",    "cblocks_magenta.png"},
	{"orange",     "Orange",     "cblocks_orange.png"},
	{"pink",       "Pink",       "cblocks_pink.png"},
	{"red",        "Red",        "cblocks_red.png"},
	{"violet",     "Violet",     "cblocks_violet.png"},
	{"white",      "White",      "cblocks_white.png"},
	{"yellow",     "Yellow",     "cblocks_yellow.png"},
}

for i = 1, #colours, 1 do
	--example
--[[	
	minetest.register_node("cblocks:stonebrick_red", {
		description = "Red Stone Brick -EXAMPLE FOR ALL CBLOCKS: Glass, Wood, Stonebrick, and Clay",
		tiles = {"default_stone_brick.png^[colorize:#ff000070"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})
]]	

	-- wood
	minetest.register_node("cblocks:wood_" .. colours[i][1], {
		description = colours[i][2] .. " Wooden Planks",
		tiles = {"cblocks_wood.png^" .. colours[i][3]},
		paramtype2 = "facedir",
		place_param2 = 0,
		is_ground_content = false,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1,not_in_craft_guide=0, not_in_creative_inventory = 1},
		sounds = default.node_sound_wood_defaults(),
	})

	minetest.register_craft({
		output = "cblocks:wood_".. colours[i][1] .. " 2",
		recipe = {
			{"group:wood","group:wood", "dye:" .. colours[i][1]},
		}
	})


	--Cobble
	minetest.register_node("cblocks:cobble_" .. colours[i][1], {
		description = colours[i][2] .. " Cobble  NOTE:  Cobble, Stone, Stonebrick, Clay, Glass, and Wood can be colorized and used for stair / slab / slopes.",
		tiles = {"default_cobble.png^" .. colours[i][3]},
		paramtype2 = "facedir",
		place_param2 = 0,
		is_ground_content = false,
		groups = {cracky = 3, stone = 1, not_in_creative_inventory = 0},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "cblocks:cobble_".. colours[i][1] .. " 2",
		recipe = {
			{"default:cobble","default:cobble", "dye:" .. colours[i][1]},
		}
	})


	-- stone brick
	minetest.register_node("cblocks:stonebrick_" .. colours[i][1], {
		description = colours[i][2] .. " Stone Brick",
		tiles = {"default_stone_brick.png^" .. colours[i][3]},
		paramtype2 = "facedir",
		place_param2 = 0,
		is_ground_content = false,
		groups = {cracky = 2, stone = 1,not_in_craft_guide=0, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "cblocks:stonebrick_".. colours[i][1] .. " 2",
		recipe = {
			{"default:stonebrick","default:stonebrick", "dye:" .. colours[i][1]},
		}
	})
	minetest.register_craft({
	output = "cblocks:stonebrick_".. colours[i][1] .. " 4",
	recipe = {
		{"cblocks:stone_" .. colours[i][1], "cblocks:stone_" .. colours[i][1]},
		{"cblocks:stone_" .. colours[i][1], "cblocks:stone_" .. colours[i][1]},
	}
	})

	-- stone
	minetest.register_node("cblocks:stone_" .. colours[i][1], {
		description = colours[i][2] .. " Stone  NOTE:  cook in furnace (slow) or crushing furnace (fast) to extract dye.",
		tiles = {"default_stone.png^" .. colours[i][3]},
		is_ground_content = true,
		drop = "cblocks:cobble_" .. colours[i][1],
		groups = {cracky = 2, stone = 1,not_in_craft_guide=0, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "cblocks:stone_".. colours[i][1] .. " 2",
		recipe = {
			{"default:stone","default:stone", "dye:" .. colours[i][1]},
		}
	})

	-- glass
	minetest.register_node( "cblocks:glass_" .. colours[i][1], {
		description = colours[i][2] .. " Glass",
		tiles = {"default_glass.png^default_glass_detail.png^" .. colours[i][3]},
		paramtype2 = "facedir",
		place_param2 = 0,
		
		--use_texture_alpha = "clip", -- only needed for stairs API
		
		
		drawtype = "glasslike",
		paramtype = "light",
		--alpha = 160,
		drawtype = "glasslike_framed_optional",
		paramtype2 = "glasslikeliquidlevel",
		sunlight_propagates = true,
		use_texture_alpha = true,
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 3,not_in_craft_guide=0, not_in_creative_inventory = 1},
		sounds = default.node_sound_glass_defaults(),
	})

	minetest.register_craft({
		output = "cblocks:glass_".. colours[i][1] .. " 2",
		recipe = {
			{"default:glass","default:glass", "dye:" .. colours[i][1]},
		}
	})

	--Clay
	minetest.register_node( "cblocks:clay_" .. colours[i][1], {
		description = colours[i][2] .. " Clay",
		tiles = {"default_clay.png^" .. colours[i][3]},
		is_ground_content = true,
		groups = {crumbly = 3,not_in_craft_guide=0, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "cblocks:clay_".. colours[i][1] .. " 2",
		recipe = {
			{"default:clay","default:clay", "dye:" .. colours[i][1]},
		}
	})

	-- mese glass
	minetest.register_node( "cblocks:meselamp_" .. colours[i][1], {
		description = colours[i][2] .. " Mese Lamp",
		tiles = {"cblocks_meselamp.png^" .. colours[i][3]},
		
		--use_texture_alpha = "clip", -- only needed for stairs API
		
		drawtype = "glasslike",
		paramtype = "light",
		--alpha = 160,
		drawtype = "glasslike_framed_optional",
		paramtype2 = "glasslikeliquidlevel",
		sunlight_propagates = true,
		use_texture_alpha = true,
		is_ground_content = false,
		light_source = 14,
		groups = {cracky = 3, oddly_breakable_by_hand = 3,not_in_craft_guide=0, not_in_creative_inventory = 1},
		sounds = default.node_sound_glass_defaults(),
	})

	minetest.register_craft({
		output = "cblocks:meselamp_".. colours[i][1] .. " 2",
		recipe = {
			{"default:meselamp","default:meselamp", "dye:" .. colours[i][1]},
		}
	})

	-- brick
	minetest.register_node("cblocks:brick_" .. colours[i][1], {
		description = colours[i][2] .. " Brick Block",
		tiles = {"cblocks_brick.png^" .. colours[i][3]},
		paramtype2 = "facedir",
		place_param2 = 0,
		is_ground_content = false,
		groups = {cracky = 3,not_in_craft_guide=0, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "cblocks:brick_".. colours[i][1] .. " 2",
		recipe = {
			{"default:brick","default:brick", "dye:" .. colours[i][1]},
		}
	})


	
--LET US REGISTER STAIRS!
--maikerumine 20160321


--Alias to swap stairs.
	minetest.register_alias("stairs:stair_stone_" .. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_stone")
	minetest.register_alias("stairs:stair_cobble_" .. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_cobble")
	minetest.register_alias("stairs:stair_stonebrick_".. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_stonebrick")
	minetest.register_alias("stairs:stair_brick_".. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_brick")
	minetest.register_alias("stairs:stair_clay_" .. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_clay")
	minetest.register_alias("stairs:stair_wood_" .. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_wood")
	minetest.register_alias("stairs:stair_glass_" .. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_glass")
--Alias to swap slabs.
	minetest.register_alias("stairs:slab_stone_" .. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_stone")
	minetest.register_alias("stairs:slab_cobble_" .. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_cobble")
	minetest.register_alias("stairs:slab_stonebrick_".. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_stonebrick")
	minetest.register_alias("stairs:slab_brick_".. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_brick")
	minetest.register_alias("stairs:slab_clay_" .. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_clay")
	minetest.register_alias("stairs:slab_wood_" .. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_wood")
	minetest.register_alias("stairs:slab_glass_" .. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_glass")
			
			
	if minetest.get_modpath("moreblocks") then


	--wood
		stairsplus:register_all("wood_" .. colours[i][1], "wood", "cblocks:wood_" .. colours[i][1], {
			description = "Coloured Wood",
			tiles ={"default_wood.png^[colorize:" .. colours[i][3]},
			groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3 ,not_in_craft_guide=0},
			sounds = default.node_sound_wood_defaults(),
			sunlight_propagates = true,
		})

	--cobble
		stairsplus:register_all("cobble_" .. colours[i][1], "cobble",  "cblocks:cobble_" .. colours[i][1], {
			description = "Coloured Cobble",
			tiles ={"default_cobble.png^[colorize:" .. colours[i][3]},
			groups = {cracky = 3,not_in_craft_guide=0},
			sounds = default.node_sound_stone_defaults(),
			sunlight_propagates = true,
		})
		
	--stonebrick
		stairsplus:register_all("stonebrick_" .. colours[i][1], "stonebrick",  "cblocks:stonebrick_" .. colours[i][1], {
			description = "Coloured Stonebrick",
			tiles ={"default_stone_brick.png^[colorize:" .. colours[i][3]},
			groups = {cracky = 2,not_in_craft_guide=0},
			sounds = default.node_sound_stone_defaults(),
			sunlight_propagates = true,
		})

	--stone
		stairsplus:register_all("stone_" .. colours[i][1], "stone",  "cblocks:stone_" .. colours[i][1], {
			description = "Coloured Stone",
			tiles ={"default_stone.png^[colorize:" .. colours[i][3]},
			groups = {cracky = 3,not_in_craft_guide=0},
			sounds = default.node_sound_stone_defaults(),
			sunlight_propagates = true,
		})
		
	--clay
		stairsplus:register_all("clay_" .. colours[i][1], "clay",  "cblocks:clay_" .. colours[i][1], {
			description = "Coloured Clay",
			tiles ={"default_clay.png^[colorize:" .. colours[i][3]},
			groups = {crumbly = 3,not_in_craft_guide=0},
			sounds = default.node_sound_dirt_defaults(),
			sunlight_propagates = true,
		})
		
	--glass
		stairsplus:register_all("glass_" .. colours[i][1], "glass",  "cblocks:glass_" .. colours[i][1], {
			description = "Coloured Glass",
			tiles ={"cblocks.png^[colorize:" .. colours[i][3]},
			groups = {cracky = 3, oddly_breakable_by_hand = 3,not_in_craft_guide=0},
			sounds = default.node_sound_glass_defaults(),
			sunlight_propagates = true,
		})
	end
end



--SLOW WAY TO COOK DYES	
--[[
	{"cblocks:stone_black", "dye:black",        12},
	{"cblocks:stone_blue", "dye:blue",        12},
	{"cblocks:stone_brown", "dye:brown",        12},
	{"cblocks:stone_cyan", "dye:cyan",        12},
	{"cblocks:stone_dark_green", "dye:dark_green",        12},
	{"cblocks:stone_dark_grey", "dye:dark_grey",        12},
	{"cblocks:stone_green", "dye:green",        12},
	{"cblocks:stone_grey", "dye:grey",        12},
	{"cblocks:stone_magenta", "dye:magenta",        12},
	{"cblocks:stone_orange", "dye:orange",        12},
	{"cblocks:stone_pink", "dye:pink",        12},
	{"cblocks:stone_red", "dye:red",        12},
	{"cblocks:stone_violet", "dye:violet",        12},
	{"cblocks:stone_white", "dye:white",        12},
	{"cblocks:stone_yellow", "dye:yellow",        12},
	]]

minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_black",
	output = "dye:black",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_blue",
	output = "dye:blue",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_brown",
	output = "dye:brown",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_cyan",
	output = "dye:cyan",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_dark_green",
	output = "dye:dark_green",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_dark_grey",
	output = "dye:dark_grey",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_green",
	output = "dye:green",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_grey",
	output = "dye:grey",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_magenta",
	output = "dye:magenta",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_orange",
	output = "dye:orange",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_pink",
	output = "dye:pink",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_red",
	output = "dye:red",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_violet",
	output = "dye:violet",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_white",
	output = "dye:white",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:stone_yellow",
	output = "dye:yellow",
})




minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_black",
	output = "cblocks:stone_black",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_blue",
	output = "cblocks:stone_blue",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_brown",
	output = "cblocks:stone_brown",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_cyan",
	output = "cblocks:stone_cyan",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_dark_green",
	output = "cblocks:stone_dark_green",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_dark_grey",
	output = "cblocks:stone_dark_grey",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_green",
	output = "cblocks:stone_green",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_grey",
	output = "cblocks:stone_grey",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_magenta",
	output = "cblocks:stone_magenta",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_orange",
	output = "cblocks:stone_orange",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_pink",
	output = "cblocks:stone_pink",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_red",
	output = "cblocks:stone_red",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_violet",
	output = "cblocks:stone_violet",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_white",
	output = "cblocks:stone_white",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	recipe = "cblocks:cobble_yellow",
	output = "cblocks:stone_yellow",
})
--[[
if minetest.get_modpath("ts_furniture") then
	ts_furniture.register_furniture("cblocks:wood_black", "Black", "cblocks_black.png")
	ts_furniture.register_furniture("cblocks:wood_blue", "Blue", "cblocks_blue.png")
	ts_furniture.register_furniture("cblocks:wood_brown", "Brown", "cblocks_brown.png")
	ts_furniture.register_furniture("cblocks:wood_cyan", "Cyan", "cblocks_cyan.png")
	ts_furniture.register_furniture("cblocks:wood_dark_green", "Dark Green", "cblocks_dark_green.png")
	ts_furniture.register_furniture("cblocks:wood_dark_grey", "Dark Grey", "cblocks_dark_grey.png")
	ts_furniture.register_furniture("cblocks:wood_green", "Green", "cblocks_green.png")
	ts_furniture.register_furniture("cblocks:wood_grey", "Grey", "cblocks_grey.png")
	ts_furniture.register_furniture("cblocks:wood_magenta", "Magenta", "cblocks_magenta.png")
	ts_furniture.register_furniture("cblocks:wood_orange", "Orange", "cblocks_orange.png")
	ts_furniture.register_furniture("cblocks:wood_pink", "Pink", "cblocks_pink.png")
	ts_furniture.register_furniture("cblocks:wood_red", "Red", "cblocks_red.png")
	ts_furniture.register_furniture("cblocks:wood_violet", "Violet", "cblocks_violet.png")
	ts_furniture.register_furniture("cblocks:wood_white", "White", "cblocks_white.png")
	ts_furniture.register_furniture("cblocks:wood_yellow", "Yellow", "cblocks_yellow.png")
end
]]
if minetest.get_modpath("ts_furniture") then
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
end


minetest.log("action", "ES: [C BLOCKS MM STYLE] loaded.")