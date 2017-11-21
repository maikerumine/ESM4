--Originally made by TenPlus1
--maikerumine added slabs and stairs
--20160321
--20171121  -added more blocks and intergrate with moreblocks / stairs plus
--for extreme survival game

local colours = {
	{"black",      "Black",      "#000000b0"},
	{"blue",       "Blue",       "#015dbb70"},
	{"brown",      "Brown",      "#a78c4570"},
	{"cyan",       "Cyan",       "#01ffd870"},
	{"dark_green", "Dark Green", "#005b0770"},
	{"dark_grey",  "Dark Grey",  "#303030b0"},
	{"green",      "Green",      "#61ff0170"},
	{"grey",       "Grey",       "#5b5b5bb0"},
	{"magenta",    "Magenta",    "#ff05bb70"},
	{"orange",     "Orange",     "#ff840170"},
	{"pink",       "Pink",       "#ff65b570"},
	{"red",        "Red",        "#ff000070"},
	{"violet",     "Violet",     "#2000c970"},
	{"white",      "White",      "#abababc0"},
	{"yellow",     "Yellow",     "#e3ff0070"},
}

for i = 1, #colours, 1 do
--example
--[[
minetest.register_node("cblocks:stonebrick_red", {
	description = "Red Stone Brick -EXAMPLE FOR ALL CBLOCKS: Glass, Wood, Stonebrick, and Clay",
	tiles = {"default_stone_brick.png^[colorize:#ff000070"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
]]

-- wood
minetest.register_node("cblocks:wood_" .. colours[i][1], {
	description = colours[i][2] .. " Wooden Planks",
	tiles = {"default_wood.png^[colorize:" .. colours[i][3]},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1,not_in_craft_guide=1},
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
	description = colours[i][2] .. " Cobble",
	tiles = {"default_cobble.png^[colorize:" .. colours[i][3]},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1,not_in_craft_guide=1},
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
	tiles = {"default_stone_brick.png^[colorize:" .. colours[i][3]},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1,not_in_craft_guide=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "cblocks:stonebrick_".. colours[i][1] .. " 2",
	recipe = {
		{"default:stonebrick","default:stonebrick", "dye:" .. colours[i][1]},
	}
})

-- stone
minetest.register_node("cblocks:stone_" .. colours[i][1], {
	description = colours[i][2] .. " Stone",
	tiles = {"default_stone.png^[colorize:" .. colours[i][3]},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1,not_in_craft_guide=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "cblocks:stonebrick_".. colours[i][1] .. " 2",
	recipe = {
		{"default:stonebrick","default:stonebrick", "dye:" .. colours[i][1]},
	}
})

-- glass
minetest.register_node( "cblocks:glass_" .. colours[i][1], {
	description = colours[i][2] .. " Glass",
	tiles = {"cblocks.png^[colorize:" .. colours[i][3]},
	drawtype = "glasslike",
	paramtype = "light",
	sunlight_propagates = true,
	use_texture_alpha = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3,not_in_craft_guide=1},
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
	tiles = {"default_clay.png^[colorize:" .. colours[i][3]},
	is_ground_content = false,
	groups = {crumbly = 2, oddly_breakable_by_hand = 2,not_in_craft_guide=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "cblocks:clay_".. colours[i][1] .. " 2",
	recipe = {
		{"default:clay","default:clay", "dye:" .. colours[i][1]},
	}
})

--LET US REGISTER STAIRS!
--maikerumine 20160321
--EXAMPLE
--[[
stairs.register_stair_and_slab("stonebrick_red", "cblocks:stonebrick_red",
		{cracky = 3},
		{"default_stone_brick.png^[colorize:#ff000070"},
		"Red Stone Brick Stair -EXAMPLE FOR ALL CBLOCKS: Glass, Wood, Stonebrick, and Clay",
		"Red Stone Brick Slab -EXAMPLE FOR ALL CBLOCKS: Glass, Wood, Stonebrick, and Clay",
		default.node_sound_stone_defaults())
	
stairs.register_stair("stonebrick_red", "cblocks:stonebrick_red",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3,not_in_craft_guide=1},
	{"default_stone_brick.png^[colorize:#ff000070"},
	"Red Stone Brick -EXAMPLE FOR ALL CBLOCKS: Glass, Wood, Stonebrick, and Clay",
	stairs.stone)
	
	
	
	
	--old
	--wood
stairs.register_stair_and_slab("wood_" .. colours[i][1], "cblocks:wood_" .. colours[i][1],
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_wood.png^[colorize:" .. colours[i][3]},
		"Wooden Stair",
		"Wooden Slab",
		default.node_sound_wood_defaults())
		
		
		
		for _, t in pairs(circular_saw.names) do
	minetest.register_alias("moreblocks:" .. t[1] .. "_jungle_wood" .. t[2],
			"moreblocks:" .. t[1] .. "_junglewood" .. t[2])
end


]]


--	minetest.register_alias("stairs:"stair_.. colours[i][1].. "_wood" .. ,
--			"stairs:"stair_wood_" .. colours[i][1])
--  minetest.register_alias("sweeper", "moreblocks:sweeper")

--Alias to swap stairs.
	minetest.register_alias("stairs:stair_stone_" .. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_stone")
	minetest.register_alias("stairs:stair_cobble_" .. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_cobble")
	minetest.register_alias("stairs:stair_stonebrick_".. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_stonebrick")
	minetest.register_alias("stairs:stair_clay_" .. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_clay")
	minetest.register_alias("stairs:stair_wood_" .. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_wood")
	minetest.register_alias("stairs:stair_glass_" .. colours[i][1] ,	"stairs:stair_".. colours[i][1].. "_glass")
--Alias to swap slabs.
	minetest.register_alias("stairs:slab_stone_" .. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_stone")
	minetest.register_alias("stairs:slab_cobble_" .. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_cobble")
	minetest.register_alias("stairs:slab_stonebrick_".. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_stonebrick")
	minetest.register_alias("stairs:slab_clay_" .. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_clay")
	minetest.register_alias("stairs:slab_wood_" .. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_wood")
	minetest.register_alias("stairs:slab_glass_" .. colours[i][1] ,	"stairs:slab_".. colours[i][1].. "_glass")
			
			
if minetest.get_modpath("moreblocks") then


--wood
	stairsplus:register_all("wood_" .. colours[i][1], "wood", "cblocks:wood_" .. colours[i][1], {
		description = "Coloured Wood",
		tiles ={"default_wood.png^[colorize:" .. colours[i][3]},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults(),
		sunlight_propagates = true,
	})

--cobble
	stairsplus:register_all("cobble_" .. colours[i][1], "cobble",  "cblocks:cobble_" .. colours[i][1], {
		description = "Coloured Cobble",
		tiles ={"default_cobble.png^[colorize:" .. colours[i][3]},
		groups = {cracky = 3},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})
	
--stonebrick
	stairsplus:register_all("stonebrick_" .. colours[i][1], "stonebrick",  "cblocks:stonebrick_" .. colours[i][1], {
		description = "Coloured Stonebrick",
		tiles ={"default_stone_brick.png^[colorize:" .. colours[i][3]},
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})

--stone
	stairsplus:register_all("stone_" .. colours[i][1], "stone",  "cblocks:stone_" .. colours[i][1], {
		description = "Coloured Stone",
		tiles ={"default_stone.png^[colorize:" .. colours[i][3]},
		groups = {cracky = 3},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})
	
--clay
	stairsplus:register_all("clay_" .. colours[i][1], "clay",  "cblocks:clay_" .. colours[i][1], {
		description = "Coloured Clay",
		tiles ={"default_clay.png^[colorize:" .. colours[i][3]},
		groups = {crumbly = 3},
		sounds = default.node_sound_dirt_defaults(),
		sunlight_propagates = true,
	})
	
--glass
	stairsplus:register_all("glass_" .. colours[i][1], "glass",  "cblocks:glass_" .. colours[i][1], {
		description = "Coloured Glass",
		tiles ={"cblocks.png^[colorize:" .. colours[i][3]},
		groups = {cracky = 3, oddly_breakable_by_hand = 3},
		sounds = default.node_sound_glass_defaults(),
		sunlight_propagates = true,
	})
end
end