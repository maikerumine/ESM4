-- Crafting for homedecor mod (includes folding) by Vanessa Ezekowitz
--Simplified by maikerumine
-- Mostly my own code; overall template borrowed from game default

local S = homedecor.gettext

-- misc craftitems

minetest.register_craftitem("homedecor:oil_extract", {
        description = S("Oil extract"),
        inventory_image = "homedecor_oil_extract.png",
})

minetest.register_craftitem("homedecor:paraffin", {
        description = S("Unprocessed paraffin"),
        inventory_image = "homedecor_paraffin.png",
})

minetest.register_alias("homedecor:plastic_base", "homedecor:paraffin")

minetest.register_craftitem("homedecor:plastic_sheeting", {
        description = S("Plastic sheet"),
        inventory_image = "homedecor_plastic_sheeting.png",
})

minetest.register_craftitem("homedecor:drawer_small", {
        description = S("Small Wooden Drawer"),
        inventory_image = "homedecor_drawer_small.png",
})

minetest.register_craftitem("homedecor:ic", {
	description = S("Simple Integrated Circuit"),
	inventory_image = "homedecor_ic.png",
})

minetest.register_craftitem("homedecor:heating_element", {
	description = S("Heating element"),
	inventory_image = "homedecor_heating_element.png",
})

minetest.register_craftitem("homedecor:power_crystal", {
	description = S("Power Crystal"),
	inventory_image = "homedecor_power_crystal.png",
})

minetest.register_craftitem("homedecor:blank_canvas", {
	description = S("Blank Canvas"),
	inventory_image = "homedecor_blank_canvas.png"
})

-- alternate crafting if mesecons is/isn't installed

if not minetest.get_modpath("mesecons") then

	minetest.register_craftitem(":mesecons_materials:silicon", {
		description = S("Silicon lump"),
		inventory_image = "homedecor_silicon.png",
	})

	minetest.register_craft( {
		output = "mesecons_materials:silicon 4",
		recipe = {
			{ "default:sand", "default:sand" },
			{ "default:sand", "default:steel_ingot" },
		},
	})

end

-- alternate crafting if technic is/isn't installed

if not minetest.get_modpath("technic") then

	minetest.register_craftitem(":technic:brass_ingot", {
		    description = S("Brass Ingot"),
		    inventory_image = "homedecor_brass_ingot.png",
	})

	minetest.register_craft( {
		type = "shapeless",
		    output = "technic:brass_ingot 2",
		recipe = {
			"default:tin_ingot",
			"default:copper_ingot",
		},
	})
end

minetest.register_alias("homedecor:brass_ingot", "technic:brass_ingot")

-- the actual crafts


minetest.register_craft( {
    output = "homedecor:heating_element 2",
    recipe = {
		{ "default:copper_ingot", "default:mese_crystal_fragment", "default:copper_ingot" }
    },
})


minetest.register_craft({
	--type = "shapeless",
	output = "homedecor:power_crystal 2",
	recipe = {
		{ "default:mese_crystal_fragment", "default:torch", "default:mese_crystal_fragment" },
		{ "default:diamond", "default:gold_ingot", "default:diamond" }
	},
})

minetest.register_craft({
	type = "fuel",
	recipe = "homedecor:power_crystal",
	burntime = 50,
})


minetest.register_craft({
    type = "shapeless",
    output = "homedecor:oil_extract 4",
    recipe = {
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves"
	}
})

minetest.register_craft({
        type = "cooking",
        output = "homedecor:paraffin",
        recipe = "homedecor:oil_extract",
})

minetest.register_craft({
        type = "cooking",
        output = "homedecor:plastic_sheeting",
        recipe = "homedecor:paraffin",
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:oil_extract",
        burntime = 30,
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:paraffin",
        burntime = 30,
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:plastic_sheeting",
        burntime = 30,
})


minetest.register_craft( {
        output = "homedecor:ceiling_tile 10",
        recipe = {
                { "", "dye:white", "" },
                { "default:steel_ingot", "default:stone", "default:steel_ingot" },

        },
})



minetest.register_craft( {
        output = "homedecor:drawer_small",
        recipe = {
                { "group:wood", "default:steel_ingot", "group:wood" },
        },
})

minetest.register_craft({
        type = "fuel",
        recipe = "homedecor:drawer_small",
        burntime = 30,
})

--


-- Home electronics
minetest.register_craft( {
	output = "homedecor:ic 4",
	recipe = {
		{ "mesecons_materials:silicon", "mesecons_materials:silicon" },
		{ "mesecons_materials:silicon", "default:copper_ingot" },
	},
})

minetest.register_craft( {
	output = "homedecor:television",
	recipe = {
		{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
		{ "homedecor:plastic_sheeting", "default:glass", "homedecor:plastic_sheeting" },
		{ "homedecor:ic", "homedecor:power_crystal", "homedecor:ic" },
	},
})

-- Curtains
--[[
local curtaincolors = {
	"red",
	"green",
	"blue",
	"white",
	"pink",
	"violet"
}

for c in ipairs(curtaincolors) do
	local color = curtaincolors[c]
	minetest.register_craft( {
		output = "homedecor:curtain_"..color.." 3",
	      		recipe = {
			{ "wool:"..color, "", ""},
			{ "wool:"..color, "", ""},
			{ "wool:"..color, "", ""},
		},
	})
end

local mats = {
	--{ "brass", "homedecor:pole_brass" },
	--{ "wrought_iron", "homedecor:pole_wrought_iron" },
	{ "wood", "default:stick" }
}

for i in ipairs(mats) do
	local material = mats[i][1]
	local ingredient = mats[i][2]
	minetest.register_craft( {
		output = "homedecor:curtainrod_"..material.." 3",
		recipe = {
			{ ingredient, ingredient, ingredient },
		},
	})
end

]]
-- Kitchen stuff

minetest.register_craft({
        output = "homedecor:oven_steel",
        recipe = {
		{"homedecor:heating_element", "default:steel_ingot", "homedecor:heating_element", },
		{"default:steel_ingot", "moreblocks:iron_glass", "default:steel_ingot", },
		{"default:steel_ingot", "homedecor:heating_element", "default:steel_ingot", },
	}
})

minetest.register_craft({
        output = "homedecor:oven_steel",
        recipe = {
		{"homedecor:heating_element", "default:steel_ingot", "homedecor:heating_element", },
		{"default:steel_ingot", "default:glass", "default:steel_ingot", },
		{"default:steel_ingot", "homedecor:heating_element", "default:steel_ingot", },
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:oven",
	recipe = {
		"homedecor:oven_steel",
		"dye:white",
		"dye:white",
	}
})

minetest.register_craft({
        output = "homedecor:microwave_oven 2",
        recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot", },
		{"default:steel_ingot", "default:glass", "homedecor:ic", },
		{"default:steel_ingot", "default:copper_ingot", "homedecor:power_crystal", },
	}
})

minetest.register_craft({
        output = "homedecor:microwave_oven 2",
        recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot", },
		{"default:steel_ingot", "default:glass", "homedecor:ic", },
		{"default:steel_ingot", "default:copper_ingot", "homedecor:power_crystal", },
	}
})

minetest.register_craft({
	output = "homedecor:refrigerator_steel",
	recipe = {
		{"default:steel_ingot", "default:meselamp", "default:steel_ingot", },
		{"default:steel_ingot", "default:copperblock", "default:steel_ingot", },
		{"default:steel_ingot", "default:clay", "default:steel_ingot", },
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:refrigerator_white",
	recipe = {
		"homedecor:refrigerator_steel",
		"dye:white",
		"dye:white",
		"dye:white",
	}
})

minetest.register_craft({
        output = "homedecor:kitchen_cabinet",
        recipe = {
		{"group:wood", "group:stick", "group:wood", },
		{"group:wood", "group:stick", "group:wood", },
		{"group:wood", "group:stick", "group:wood", },
	}
})

minetest.register_craft({
        output = "homedecor:kitchen_cabinet_steel",
        recipe = {
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			{"", "homedecor:kitchen_cabinet", ""},
	}
})

minetest.register_craft({
        output = "homedecor:kitchen_cabinet_steel",
        recipe = {
			{"moreblocks:slab_steelblock_1"},
			{ "homedecor:kitchen_cabinet" },
	}
})
--[[
minetest.register_craft({
        output = "homedecor:kitchen_cabinet_marble",
        recipe = {
			{"building_blocks:slab_marble"},
			{"homedecor:kitchen_cabinet"},
	}
})

minetest.register_craft({
        output = "homedecor:kitchen_cabinet_marble",
        recipe = {
			{"es:slab_marble_1"},
			{"homedecor:kitchen_cabinet"},
	}
})

minetest.register_craft({
        output = "homedecor:kitchen_cabinet_granite",
        recipe = {
			{"es:slab_granite_1"},
			{"homedecor:kitchen_cabinet"},
	}
})
]]
minetest.register_craft({
	type = "shapeless",
        output = "homedecor:kitchen_cabinet_half 2",
        recipe = { "homedecor:kitchen_cabinet" }
})

minetest.register_craft({
        output = "homedecor:kitchen_cabinet_with_sink",
        recipe = {
		{"group:wood", "default:steel_ingot", "group:wood", },
		{"group:wood", "default:steel_ingot", "group:wood", },
		{"group:wood", "group:stick", "group:wood", },
	}
})


-- dishwashers

minetest.register_craft( {
    output = "homedecor:dishwasher",
    recipe = {
		{ "homedecor:ic", "homedecor:fence_chainlink", "default:steel_ingot",  },
		{ "default:steel_ingot", "homedecor:shower_head", "homedecor:motor" },
		{ "default:steel_ingot", "homedecor:heating_element", "bucket:bucket_water" }
    },
})

minetest.register_craft( {
    output = "homedecor:dishwasher",
    recipe = {
		{ "homedecor:ic", "es:ruby_crystal", "default:steel_ingot",  },
		{ "default:steel_ingot", "homedecor:shower_head", "es:aikerum_crystal" },
		{ "default:steel_ingot", "homedecor:heating_element", "bucket:bucket_water" }
    },
})

minetest.register_craft( {
    output = "homedecor:dishwasher_wood",
    recipe = {
		{ "stairs:slab_wood" },
		{ "homedecor:dishwasher" },
    },
})

minetest.register_craft( {
    output = "homedecor:dishwasher_wood",
    recipe = {
		{ "moreblocks:slab_wood" },
		{ "homedecor:dishwasher" },
    },
})

minetest.register_craft( {
    output = "homedecor:dishwasher_wood",
    recipe = {
		{ "moreblocks:slab_wood_1" },
		{ "homedecor:dishwasher" },
    },
})

minetest.register_craft( {
    output = "homedecor:dishwasher_steel",
    recipe = {
		{ "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" },
		{ "", "homedecor:dishwasher", "" },
    },
})

minetest.register_craft( {
    output = "homedecor:dishwasher_steel",
    recipe = {
		{ "moreblocks:slab_steelblock_1" },
		{ "homedecor:dishwasher" },
    },
})
--[[
minetest.register_craft( {
    output = "homedecor:dishwasher_marble",
    recipe = {
		{ "stairs:slab_marble" },
		{ "homedecor:dishwasher" },
    },
})

minetest.register_craft( {
    output = "homedecor:dishwasher_marble",
    recipe = {
		{ "stairs:slab_marble_1" },
		{ "homedecor:dishwasher" },
    },
})

minetest.register_craft( {
    output = "homedecor:dishwasher_granite",
    recipe = {
		{ "es:slab_granite_1" },
		{ "homedecor:dishwasher" },
    },
})
]]
-- paintings



minetest.register_craft({
    output = "homedecor:blank_canvas",
    recipe = {
		{ "", "group:stick", "" },
		{ "group:stick", "wool:white", "group:stick" },
		{ "", "group:stick", "" },
    }
})

local painting_patterns = {
	[1] = {	{ "brown", "red", "brown" },
	 		{ "dark_green", "red", "green" } },

	[2] = {	{ "green", "yellow", "green" },
	 		{ "green", "yellow", "green" } },

	[3] = {	{ "green", "pink", "green" },
	 		{ "brown", "pink", "brown" } },

	[4] = {	{ "black", "orange", "grey" },
	 		{ "dark_green", "orange", "orange" } },

	[5] = {	{ "blue", "orange", "yellow" },
	 		{ "green", "red", "brown" } },

	[6] = {	{ "green", "red", "orange" },
	 		{ "orange", "yellow", "green" } },

	[7] = {	{ "blue", "dark_green", "dark_green" },
	 		{ "green", "grey", "green" } },

	[8] = {	{ "blue", "blue", "blue" },
	 		{ "green", "green", "green" } },

	[9] = {	{ "blue", "blue", "dark_green" },
	 		{ "green", "grey", "dark_green" } },

	[10] = { { "green", "white", "green" },
	 		 { "dark_green", "white", "dark_green" } },

	[11] = { { "blue", "white", "blue" },
	 		 { "blue", "grey", "dark_green" } },

	[12] = { { "green", "green", "green" },
	 		 { "grey", "grey", "green" } },

	[13] = { { "blue", "blue", "grey" },
	 		 { "dark_green", "white", "white" } },

	[14] = { { "red", "yellow", "blue" },
	 		 { "blue", "green", "violet" } },

	[15] = { { "blue", "yellow", "blue" },
	 		 { "black", "black", "black" } },

	[16] = { { "red", "orange", "blue" },
	 		 { "black", "dark_grey", "grey" } },

	[17] = { { "orange", "yellow", "orange" },
	 		 { "black", "black", "black" } },

	[18] = { { "grey", "dark_green", "grey" },
	 		 { "white", "white", "white" } },

	[19] = { { "white", "brown", "green" },
	 		 { "green", "brown", "brown" } },

	[20] = { { "blue", "blue", "blue" },
	 		 { "red", "brown", "grey" } }
}

for i,recipe in pairs(painting_patterns) do

	local item1 = "dye:"..recipe[1][1]
	local item2 = "dye:"..recipe[1][2]
	local item3 = "dye:"..recipe[1][3]
	local item4 = "dye:"..recipe[2][1]
	local item5 = "dye:"..recipe[2][2]
	local item6 = "dye:"..recipe[2][3]

	minetest.register_craft({
		output = "homedecor:painting_"..i,
		recipe = {
			{ item1, item2, item3 },
			{ item4, item5, item6 },
			{"", "homedecor:blank_canvas", "" }
		}
	})
end



minetest.register_craft({
    output = "homedecor:toilet_paper",
    recipe = {
		{ "", "default:paper", "default:paper" },
		{ "group:wood", "group:stick", "default:paper" },
		{ "", "default:paper", "default:paper" },
    },
})

minetest.register_craft({
    output = "homedecor:medicine_cabinet",
    recipe = {
		{ "group:stick", "default:glass", "group:stick" },
		{ "group:stick", "default:glass", "group:stick" },
		{ "group:stick", "default:glass", "group:stick" }
    },
})

minetest.register_craft({
    output = "homedecor:desk",
    recipe = {
		{ "stairs:slab_wood", "stairs:slab_wood", "stairs:slab_wood" },
		{ "homedecor:drawer_small", "default:wood", "default:wood" },
		{ "homedecor:drawer_small", "", "default:wood" },
    },
})

minetest.register_craft({
    output = "homedecor:desk",
    recipe = {
		{ "moreblocks:slab_wood", "moreblocks:slab_wood", "moreblocks:slab_wood" },
		{ "homedecor:drawer_small", "default:wood", "default:wood" },
		{ "homedecor:drawer_small", "", "default:wood" },
    },
})


minetest.register_craft( {
        output = "homedecor:kitchen_faucet",
        recipe = {
			{ "", "default:steel_ingot" },
			{ "default:steel_ingot", "" },
			{ "homedecor:taps", "" }
        },
})

minetest.register_craft({
	output = "homedecor:coffee_maker",
	recipe = {
	    {"homedecor:plastic_sheeting", "bucket:bucket_water", "homedecor:plastic_sheeting"},
	    {"homedecor:plastic_sheeting", "default:glass", "homedecor:plastic_sheeting"},
	    {"homedecor:plastic_sheeting", "homedecor:heating_element", "homedecor:plastic_sheeting"}
	},
})

minetest.register_craft({
	output = "homedecor:office_chair_basic",
	recipe = {
		{ "", "", "wool:black" },
		{ "", "wool:black", "default:steel_ingot" },
		{ "group:stick", "default:copper_ingot", "group:stick" }
	},
})

minetest.register_craft({
	output = "homedecor:barbecue",
	recipe = {
		{ "","army:chainlink","" },
		{ "default:steel_ingot","default:coal_lump","default:steel_ingot" },
		{ "homedecor:pole_wrought_iron","default:steel_ingot","homedecor:pole_wrought_iron" }
	},
})

minetest.register_craft({
	output = "homedecor:beer_tap",
	recipe = {
		{ "group:stick","default:steel_ingot","group:stick" },
		{ "homedecor:kitchen_faucet","default:steel_ingot","homedecor:kitchen_faucet" },
		{ "default:steel_ingot","default:steel_ingot","default:steel_ingot" }
	},
})

local bookcolors = {
	"red",
	"green",
	"blue",
	"violet",
	"grey",
	"brown"
}

for _, color in ipairs(bookcolors) do
	minetest.register_craft({
		type = "shapeless",
		output = "homedecor:book_"..color,
		recipe = {
			"dye:"..color,
			"default:book"
		},
	})
end
--[[
local picture_dyes = {
	{"dye:brown", "dye:green"}, -- the figure sitting by the tree, wielding a pick
	{"dye:green", "dye:blue"}	-- the "family photo"
}

for i in ipairs(picture_dyes) do
	minetest.register_craft({
		output = "homedecor:picture_frame"..i,
		recipe = {
			{ picture_dyes[i][1], picture_dyes[i][2] },
			{ "homedecor:blank_canvas", "group:stick" },
		},
	})
end
]]

--FURNATURE
minetest.register_craft({
	output = "homedecor:chair 2",
	recipe = {
		{ "group:stick",""},
		{ "group:wood","group:wood" },
		{ "group:stick","group:stick" },
	},
})

minetest.register_craft({
	type = "fuel",
	recipe = "homedecor:chair",
	burntime = 15,
})

local chaircolors = { "black", "red", "pink", "violet", "blue", "dark_green" }

for _, color in ipairs(chaircolors) do

	minetest.register_craft({
		type = "shapeless",
		output = "homedecor:chair_"..color,
		recipe = {
			"homedecor:chair",
			"wool:white",
			"dye:"..color
		},
	})

	minetest.register_craft({
		type = "shapeless",
		output = "homedecor:chair_"..color,
		recipe = {
			"homedecor:chair",
			"wool:"..color
		},
	})

	minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:chair_"..color,
		burntime = 15,
	})
end

minetest.register_craft({
	type = "fuel",
	recipe = "homedecor:armchair",
	burntime = 30,
})



minetest.register_craft({
	output = "homedecor:toilet",
	recipe = {
		{"","","bucket:bucket_water"},
		{ "es:marble","es:marble", "es:marble" },
		{ "", "bucket:bucket_empty", "" },
	},
})

minetest.register_craft({
	output = "homedecor:sink",
	recipe = {
		{ "es:marble","bucket:bucket_empty", "es:marble" },
	},
})

minetest.register_craft({
	output = "homedecor:taps",
	recipe = {
		{ "default:steel_ingot","bucket:bucket_water", "default:steel_ingot" },
	},
})

minetest.register_craft({
	output = "homedecor:taps_brass",
	recipe = {
		{ "technic:brass_ingot","bucket:bucket_water", "technic:brass_ingot" },
	},
})

minetest.register_craft({
	output = "homedecor:shower_tray",
	recipe = {
		{ "es:marble","bucket:bucket_water", "es:marble" },
	},
})

minetest.register_craft({
	output = "homedecor:shower_head",
	recipe = {
		{"default:steel_ingot", "bucket:bucket_water"},
	},
})

minetest.register_craft({
	output = "homedecor:table", "homedecor:chair 2",
	recipe = {
		{ "group:wood","group:wood", "group:wood" },
		{ "group:stick", "", "group:stick" },
	},
})

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:table_mahogany",
	recipe = {
		"homedecor:table",
		"dye:brown",
	},
})

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:table_white",
	recipe = {
		"homedecor:table",
		"dye:white",
	},
})

minetest.register_craft({
	type = "fuel",
	recipe = "homedecor:table",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "homedecor:table_mahogany",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "homedecor:table_white",
	burntime = 30,
})


minetest.register_craft({
    output = "homedecor:desk",
    recipe = {
		{ "stairs:slab_wood", "stairs:slab_wood", "stairs:slab_wood" },
		{ "homedecor:drawer_small", "default:wood", "default:wood" },
		{ "homedecor:drawer_small", "", "default:wood" },
    },
})
