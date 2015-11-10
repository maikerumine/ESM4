--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0

--Default override crafting






-- Minetest 0.4 mod: bone_collector
-- Bones can be crafted to clay, sand or coal to motivate players clear the playground.
--
-- See README.txt for licensing and other information.

minetest.register_craft({
	output = 'default:clay_lump',
	recipe = {
		{"bones:bones", "", ""},
		{"", "", ""},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = 'default:gravel',
	recipe = {
		{"", "", ""},
		{"", "", ""},
		{"bones:bones", "bones:bones", "bones:bones"},
	},
})
minetest.register_craft({
	output = 'default:sand',
	recipe = {
		{"bones:bones", "", "bones:bones"},
		{"", "bones:bones", ""},
		{"bones:bones", "", "bones:bones"},
	},
})
minetest.register_craft({
	output = 'default:coal_lump',
	recipe = {
		{"", "bones:bones", ""},
		{"bones:bones", "bones:bones", "bones:bones"},
		{"", "bones:bones", ""},
	},
})
minetest.register_craft({
	output = 'default:dirt',
	recipe = {
		{"bones:bones", "bones:bones", "bones:bones"},
		{"bones:bones", "bones:bones", "bones:bones"},
		{"bones:bones", "bones:bones", "bones:bones"},
	},
})
--END BONE COLLECTOR



minetest.register_craft({
	output = 'es:messymese',
	recipe = {
		{"es:mesecook_crystal", "es:mesecook_crystal", "es:mesecook_crystal"},
		{"es:mesecook_crystal", "es:mesecook_crystal", "es:mesecook_crystal"},
		{"es:mesecook_crystal", "es:mesecook_crystal", "es:mesecook_crystal"},
	},
})

minetest.register_craft({
	output = 'es:mesecook_crystal 9',
	recipe = {
		{'es:messymese'},
	}
})


--TECHNIC DEPENDANT
--Comment out if not used technic
minetest.register_craft({
	type = 'cooking',
	recipe = "es:depleted_uranium_ingot",
	cooktime = 60,
	output = "technic:uranium",
})

minetest.register_craft({
	output = "es:depleted_uranium_ingot",
	recipe = {
	{"technic:chernobylite_block","technic:chernobylite_block","technic:chernobylite_block"},
	{"technic:chernobylite_block","technic:chernobylite_block","technic:chernobylite_block"},
	{"technic:chernobylite_block","technic:chernobylite_block","technic:chernobylite_block"},
	}
})

minetest.register_craftitem("es:depleted_uranium_ingot", {
	description = "Depleted uranium",
	inventory_image = "technic_uranium_ingot.png",
})

minetest.register_craft({
	output = "es:punkin",
	recipe = {
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	}
})

minetest.register_craftitem("es:punkin_slice", {
	description = "Punkin Slice",
	inventory_image = "farming_pumpkin_slice.png",
	on_use = minetest.item_eat(50),
})

minetest.register_craft({
	output = "es:punkin",
	recipe = {
		{"es:punkin_slice", "es:punkin_slice", "es:punkin_slice"},
		{"es:punkin_slice", "es:punkin_slice", "es:punkin_slice"},
		{"es:punkin_slice", "es:punkin_slice", "es:punkin_slice"},
	}
})

minetest.register_craft({
	output = "es:punkin_slice 9",
	recipe = {
		{"", "es:punkin", ""},
	}
})


minetest.register_craft({
output = 'es:boneblock',
recipe = {
{"bones:bones", "bones:bones", "bones:bones"},
{"bones:bones", "default:steelblock", "bones:bones"},
{"bones:bones", "bones:bones", "bones:bones"},
},
})
--END TECHNIC




--ES HELPFUL CRAFTS
--[[minetest.register_craft({
	output = 'default:ice',
	recipe = {
		{"default:snowblock", "default:snowblock", "default:snowblock"},
		{"default:snowblock", "default:snowblock", "default:snowblock"},
		{"default:snowblock", "default:snowblock", "default:snowblock"},
	},
})]]

minetest.register_craft({
	output = 'default:dirt',
	recipe = {
		{"default:papyrus", "default:papyrus", "default:papyrus"},
		{"default:papyrus", "default:papyrus", "default:papyrus"},
		{"default:papyrus", "default:papyrus", "default:papyrus"},
	},
})

minetest.register_craft({
	output = 'default:dirt 2',
	recipe = {
		{'stairs:stair_dirt', 'stairs:stair_dirt', 'stairs:stair_dirt'},
	}
})
--[[For ref
minetest.register_node("default:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"default_grass.png", "default_dirt.png",
		{name = "default_dirt.png^default_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})]]





minetest.register_craft({
	output = 'default:desert_cobble 3',
	recipe = {
	{'default:clay_brick',},
    {'default:cobble', },
    {'default:cobble', },
}
})

minetest.register_craft({
	output = 'default:mese_crystal',
	recipe = {
		{'default:mese_crystal_fragment', 'default:mese_crystal_fragment', 'default:mese_crystal_fragment'},
		{'default:mese_crystal_fragment', 'default:mese_crystal_fragment', 'default:mese_crystal_fragment'},
		{'default:mese_crystal_fragment', 'default:mese_crystal_fragment', 'default:mese_crystal_fragment'},
	}
})

--ES SPECIAL BLOCKS
minetest.register_craft({
	output = 'es:emeraldblock',
	recipe = {
		{'es:emerald_crystal', 'es:emerald_crystal', 'es:emerald_crystal'},
		{'es:emerald_crystal', 'es:emerald_crystal', 'es:emerald_crystal'},
		{'es:emerald_crystal', 'es:emerald_crystal', 'es:emerald_crystal'},
	}
})
minetest.register_craft({
	output = 'es:emeraldblock 2',
	recipe = {
		{'stairs:stair_Emerald', 'stairs:stair_Emerald', 'stairs:stair_Emerald'},
	}
})


minetest.register_craft({
	output = 'es:aikerumblock',
	recipe = {
		{'es:aikerum_crystal', 'es:aikerum_crystal', 'es:aikerum_crystal'},
		{'es:aikerum_crystal', 'es:aikerum_crystal', 'es:aikerum_crystal'},
		{'es:aikerum_crystal', 'es:aikerum_crystal', 'es:aikerum_crystal'},
	}
})
minetest.register_craft({
	output = 'es:aikerumblock 2',
	recipe = {
		{'stairs:stair_Aikerum', 'stairs:stair_Aikerum', 'stairs:stair_Aikerum'},
	}
})


minetest.register_craft({
	output = 'es:rubyblock',
	recipe = {
		{'es:ruby_crystal', 'es:ruby_crystal', 'es:ruby_crystal'},
		{'es:ruby_crystal', 'es:ruby_crystal', 'es:ruby_crystal'},
		{'es:ruby_crystal', 'es:ruby_crystal', 'es:ruby_crystal'},
	}
})
minetest.register_craft({
	output = 'es:rubyblock 2',
	recipe = {
		{'stairs:stair_Ruby', 'stairs:stair_Ruby', 'stairs:stair_Ruby'},
	}
})


minetest.register_craft({
	output = 'es:infiniumblock',
	recipe = {
		{'es:infinium_ingot', 'es:infinium_ingot', 'es:infinium_ingot'},
		{'es:infinium_ingot', 'es:infinium_ingot', 'es:infinium_ingot'},
		{'es:infinium_ingot', 'es:infinium_ingot', 'es:infinium_ingot'},
	}
})
minetest.register_craft({
	output = 'es:infiniumblock 2',
	recipe = {
		{'stairs:stair_Infinium', 'stairs:stair_Infinium', 'stairs:stair_Infinium'},
	}
})


minetest.register_craft({
	output = 'es:emerald_crystal 9',
	recipe = {
		{'es:emeraldblock'},
	}
})

minetest.register_craft({
	output = 'es:ruby_crystal 9',
	recipe = {
		{'es:rubyblock'},
	}
})

minetest.register_craft({
	output = 'es:aikerum_crystal 9',
	recipe = {
		{'es:aikerumblock'},
	}
})

minetest.register_craft({
	output = 'es:infinium_ingot 9',
	recipe = {
		{'es:infiniumblock'},
	}
})


--crafting
minetest.register_craft({
	type = "shapeless",
	output = "es:infinium_container",
	recipe = {"vessels:glass_bottle", "es:infinium_goo","default:water_flowing"},
})






--Weapon &Tool Crafting:
minetest.register_craft({
	output = 'es:sword_emerald',
	recipe = {
		{'es:emerald_crystal'},
		{'es:emerald_crystal'},
		{'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'es:sword_ruby',
	recipe = {
		{'es:ruby_crystal'},
		{'es:ruby_crystal'},
		{'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'es:sword_aikerum',
	recipe = {
		{'es:aikerum_crystal'},
		{'es:aikerum_crystal'},
		{'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'es:pick_emerald',
	recipe = {
		{'es:emerald_crystal', 'es:emerald_crystal', 'es:emerald_crystal'},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'es:pick_ruby',
	recipe = {
		{'es:ruby_crystal', 'es:ruby_crystal', 'es:ruby_crystal'},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'es:pick_aikerum',
	recipe = {
		{'es:aikerum_crystal', 'es:aikerum_crystal', 'es:aikerum_crystal'},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'es:pick_aikerum',
	recipe = {
		{'es:aikerum_crystal', 'es:aikerum_crystal', 'es:aikerum_crystal'},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})



--Default override Cooking
minetest.register_craft({
	type = "cooking",
	output = "default:water_flowing",
	recipe = "default:ice",
})

--rnd code
-- 7*24*60*60 = 604800 real time 1 week burn time
minetest.register_craft({
	type = "fuel",
	recipe = "technic:uranium_block",
	burntime = 604800,
})

minetest.register_craft({
	type = "cooking",
	output = "es:infinium_ingot 1",
	recipe = "es:infinium_container",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 30,
	output = "es:depleted_uranium_ingot",
	recipe = "es:depleted_uranium_lump",
})


minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "default:mese_crystal",
	recipe = "es:mesecook_crystal",
})

--MUST HAVE DEFAULT ORE GENERATION SET 
minetest.register_craftitem("es:mesecook_crystal", {
	description = "Cookable Raw MESE",
	inventory_image = "mese_cook_mese_crystal.png",
})



