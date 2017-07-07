--Originally made by TenPlus1
--maikerumine added slabs and stairs
--20160321
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


--example
minetest.register_node("cblocks:stonebrick_red", {
	description = "Red Stone Brick -EXAMPLE FOR ALL CBLOCKS: Glass, Wood, Stonebrick, and Clay",
	tiles = {"default_stone_brick.png^[colorize:#ff000070"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
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
]]		
stairs.register_all("stonebrick_red", "cblocks:stonebrick_red",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3,not_in_craft_guide=1},
	{"default_stone_brick.png^[colorize:#ff000070"},
	"Red Stone Brick -EXAMPLE FOR ALL CBLOCKS: Glass, Wood, Stonebrick, and Clay",
	stairs.stone)


--wood
stairs.register_stair_and_slab("wood_" .. colours[i][1], "cblocks:wood_" .. colours[i][1],
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3,not_in_craft_guide=1},
		{"default_wood.png^[colorize:" .. colours[i][3]},
		"Wooden Stair",
		"Wooden Slab",
		default.node_sound_wood_defaults())


--stonebrick
stairs.register_stair_and_slab("stonebrick_" .. colours[i][1], "cblocks:stonebrick_" .. colours[i][1],
		{cracky = 3,not_in_craft_guide=1},
		{"default_stone_brick.png^[colorize:" .. colours[i][3]},
		"Stone Brick Stair",
		"Stone Brick Slab",
		default.node_sound_stone_defaults())

end
