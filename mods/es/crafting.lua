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

--groups = {not_in_craft_guide=1},

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

--compressed cobble
minetest.register_craft({
	output = 'es:compressedcobble',
	recipe = {
		{'default:cobble', 'default:cobble', 'default:cobble'},
		{'default:cobble', 'default:cobble', 'default:cobble'},
		{'default:cobble', 'default:cobble', 'default:cobble'},
	}
})
minetest.register_craft({
	output = 'default:cobble 9',
	recipe = {
		{'es:compressedcobble'},
	}
})


--marble and granite bricks
minetest.register_craft({
	output = 'es:marble_bricks',
	recipe = {
		{"es:marble", "es:marble"},
		{"es:marble", "es:marble"},
	},
})

minetest.register_craft({
	output = 'es:granite_bricks',
	recipe = {
		{"es:granite", "es:granite"},
		{"es:granite", "es:granite"},
	},
})


--MESE
minetest.register_craftitem("es:mesecook_crystal", {
	description = "Cookable Raw MESE",
	inventory_image = "default_mineral_mese.png",
})
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

minetest.register_craft({
	output = 'default:mese_crystal',
	recipe = {
		{'default:mese_crystal_fragment', 'default:mese_crystal_fragment', 'default:mese_crystal_fragment'},
		{'default:mese_crystal_fragment', 'default:mese_crystal_fragment', 'default:mese_crystal_fragment'},
		{'default:mese_crystal_fragment', 'default:mese_crystal_fragment', 'default:mese_crystal_fragment'},
	}
})


minetest.register_craftitem("es:depleted_uranium_ingot", {
	description = "Depleted uranium",
	inventory_image = "technic_uranium_ingot.png",
})

minetest.register_craftitem("es:depleted_uranium_lump", {
	description = "Depleted Uranium use for long term fuel, first cook the lump into an ingot, then use ingot for fuel.",
	inventory_image = "uranium_lump.png",
})

--this is a lame craft tree, need to integrate buckets
minetest.register_craftitem("es:bucket_toxic", {
	description = "Use this bucket to make dangerous things.... TBD",
	inventory_image = "bucket_toxic.png",
})
minetest.register_craft({
	type = "shapeless",
	output = "es:bucket_toxic",
	recipe = {"es:toxic_water_flowing","bucket:bucket_empty"},
})
minetest.register_craft({
	output = "es:toxic_water_flowing",
	recipe = {
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","bucket:bucket_river_water","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	},
})

minetest.register_craft({
	output = "es:vault",
	recipe = {
	{"es:boneblock","es:depleted_uranium_ingot","es:boneblock"},
	{"es:depleted_uranium_ingot","es:bucket_toxic","es:depleted_uranium_ingot"},
	{"es:boneblock","es:depleted_uranium_ingot","es:boneblock"},
	},
})

minetest.register_craft({
	output = 'es:boneblock',
	recipe = {
	{"bones:bones", "bones:bones", "bones:bones"},
	{"bones:bones", "default:steelblock", "bones:bones"},
	{"bones:bones", "bones:bones", "bones:bones"},
	},
})

minetest.register_craft({
	output = "es:what",
	recipe = {
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	},
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
	output = 'default:dirt 2',
	recipe = {
		{'stairs:stair_dirt', 'stairs:stair_dirt', 'stairs:stair_dirt'},
	}
})

minetest.register_craft({
	description = "Dirt with Dry Grass",
	--type = "shapeless",
	output = 'default:dirt_with_dry_grass 2',
	recipe = {
	{'group:flora' , },
	{'es:dry_dirt', },
}
})

minetest.register_craft({
	type = "shapeless",
	output = "es:mud",
	recipe = {"es:dry_dirt","default:water_flowing"},
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
	output = 'es:strange_grass 2',
	recipe = {
	{'es:aikerum_dust',},
    {'default:dirt', },
    {'default:dirt', },
}
})

minetest.register_craft({
	output = 'es:aiden_grass 2',
	recipe = {
	{'es:ruby_dust',},
    {'default:dirt', },
    {'default:dirt', },
}
})


--ES SPECIAL BLOCKS
--emerald
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
	output = 'es:emerald_crystal 9',
	recipe = {
		{'es:emeraldblock'},
	}
})
minetest.register_craftitem("es:emerald_crystal", {
	description = "Emerald Crystal",
	inventory_image = "emerald.png",
})

--ruby
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
	output = 'es:ruby_crystal 9',
	recipe = {
		{'es:rubyblock'},
	}
})
minetest.register_craftitem("es:ruby_crystal", {
	description = "Ruby Crystal",
	inventory_image = "ruby.png",
})

--aikerum
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
	output = 'es:aikerum_crystal 9',
	recipe = {
		{'es:aikerumblock'},
	}
})
minetest.register_craftitem("es:aikerum_crystal", {
	description = "Aikerum Crystal",
	inventory_image = "aikerum.png",
})

--infinium
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
	output = 'es:infinium_ingot 9',
	recipe = {
		{'es:infiniumblock'},
	}
})
minetest.register_craftitem("es:infinium_goo", {
	description = "Infinium Goo--Need to craft with vessel to contain.",
	inventory_image = "infinium.png",
})

minetest.register_craftitem("es:infinium_ingot", {
	description = "Infinium Ingot--TBD CRAFTING Special Armour and Lab Equipment",
	inventory_image = "infinium_ingot.png",
})

--purpellium
minetest.register_craft({
	output = 'es:purpelliumblock',
	recipe = {
		{'es:purpellium_ingot', 'es:purpellium_ingot', 'es:purpellium_ingot'},
		{'es:purpellium_ingot', 'es:purpellium_ingot', 'es:purpellium_ingot'},
		{'es:purpellium_ingot', 'es:purpellium_ingot', 'es:purpellium_ingot'},

	}
})
minetest.register_craft({
	output = 'es:purpelliumblock 2',
	recipe = {
		{'stairs:stair_Purpellium', 'stairs:stair_Purpellium', 'stairs:stair_Purpellium'},
	}
})
minetest.register_craft({
	output = 'es:purpellium_ingot 9',
	recipe = {
		{'es:purpelliumblock'},
	}
})
minetest.register_craftitem("es:purpellium_lump", {
	description = "Purpellium Lump",
	inventory_image = "purpellium_lump.png",
})

minetest.register_craftitem("es:purpellium_ingot", {
	description = "Purpellium Ingot",
	inventory_image = "purpellium_ingot.png",
})

--crafting containers
minetest.register_craft({
	type = "shapeless",
	output = "es:infinium_container",
	recipe = {"vessels:glass_bottle", "es:infinium_goo","default:water_flowing"},
})
minetest.register_craft({
	type = "shapeless",
	output = "es:purpellium_container",
	recipe = {"vessels:glass_bottle", "es:purpellium_dust","default:water_flowing"},
})
minetest.register_craft({
	type = "shapeless",
	output = "es:aikerum_container",
	recipe = {"vessels:glass_bottle", "es:aikerum_dust","default:water_flowing"},
})
minetest.register_craft({
	type = "shapeless",
	output = "es:ruby_container",
	recipe = {"vessels:glass_bottle", "es:ruby_dust","default:water_flowing"},
})
minetest.register_craft({
	type = "shapeless",
	output = "es:emerald_container",
	recipe = {"vessels:glass_bottle", "es:emerald_dust","default:water_flowing"},
})
minetest.register_craft({
	type = "shapeless",
	output = "es:toxic_container",
	recipe = {"vessels:glass_bottle", "es:bucket_toxic"},
})


--IF COTTAGES USE FOR GRINDING
--place in init in cottages
--cottages.handmill_product[ 'es:purpellium_lump' ] = 'es:purpellium_dust 1';
--cottages.handmill_product[ 'es:aikerum_crystal' ] = 'es:aikerum_dust 1';
--cottages.handmill_product[ 'es:ruby_crystal' ] = 'es:ruby_dust 1';
--cottages.handmill_product[ 'es:emerald_crystal' ] = 'es:emerald_dust 1';

--ES GRINDER:
minetest.register_craftitem("es:purpellium_dust", {
	description = "Purpellium Dust",
	inventory_image = "dye_violet.png",
})
minetest.register_craftitem("es:aikerum_dust", {
	description = "Aikerum Dust",
	inventory_image = "dye_blue.png",
})
minetest.register_craftitem("es:ruby_dust", {
	description = "Ruby Dust",
	inventory_image = "dye_red.png",
})
minetest.register_craftitem("es:emerald_dust", {
	description = "Emerald Dust",
	inventory_image = "dye_green.png",
})


--ES RUBBER
minetest.register_craftitem("es:rubber_dust", {
	description = "Rubber Dust",
	inventory_image = "dye_black.png",
})

minetest.register_craftitem("es:rubber", {
	description = "Rubber",
	inventory_image = "black.png^gui_hotbar_selected.png",
})


minetest.register_craft({
	--type = "shapeless",
	output = 'es:rubber_dust 12',
	recipe = {
	{"moretrees:rubber_tree_trunk", "moretrees:rubber_tree_trunk","moretrees:rubber_tree_trunk"},
	{"default:steel_ingot", "default:steel_ingot","default:steel_ingot"},
	{"moretrees:rubber_tree_trunk", "moretrees:rubber_tree_trunk","moretrees:rubber_tree_trunk"},
	},
})





--purpellium potion give endurance
minetest.register_node("es:purpellium_container", {
	description = "Potion to do wonders!  (gives 50+ hunger for extra endurance mining.)",
	tiles = { "purpellium_container.png"},
	wield_image = "purpellium_container.png",
	drawtype = "plantlike",
	on_use = minetest.item_eat(50),
		paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:purpellium_dust"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_glass_defaults(),
})

--infinium gives ingots for best armour
minetest.register_node("es:infinium_container", {
	description = "Cook for Infinium Ingots  (gives ingot to craft armour)",
	tiles = {"infinium_container.png"},
	wield_image = "infinium_container.png",
	drawtype = "plantlike",
	--on_use = minetest.item_eat(50),
		paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:infinium_goo"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_glass_defaults(),
})

-- HEAL HP in hunger hud
--place inhunger inhunger
--	if minetest.get_modpath("es") ~= nil then
--overwrite("es:purpellium_container", 50,"vessels:glass_bottle",nil,50)
--end

--aikerum potion special use
minetest.register_node("es:aikerum_container", {
	description = "Convert diamond tool into aikerum tool!  (Put diamond tool and this potion in crafting to get aikerum tool.)",
	tiles = {"aikerum_container.png"},
	wield_image = "aikerum_container.png",
	drawtype = "plantlike",
	paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:aikerum_dust"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_glass_defaults(),
})

--ruby potion special use heal armor
minetest.register_node("es:ruby_container", {
	description = "Fix your armour!  (Put bad armour and this potion in crafting to fix.)",
	tiles = {"ruby_container.png"},
	wield_image = "ruby_container.png",
	drawtype = "plantlike",
	paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:ruby_dust"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_glass_defaults(),
})

--emerald potion special use
minetest.register_node("es:emerald_container", {
	description = "Speed Up Mese production!  (Put messymese block and this potion in crafting to get 9 mese crystals.)",
	tiles = {"emerald_container.png"},
	wield_image = "emerald_container.png",
	drawtype = "plantlike",
	paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:emerald_dust"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_glass_defaults(),
})

--toxic potion special use
minetest.register_node("es:toxic_container", {
	description = "Poison.  Place in front of enemies.",
	tiles = {"toxic_container.png"},
	wield_image = "toxic_container.png",
	drawtype = "plantlike",
	paramtype = "light",
	light_source = 14,
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:toxic_water_flowing"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1,radioactive =8},
	sounds = default.node_sound_glass_defaults(),
})

--POTION TO MAKE MESE CRYSTAL  (EMERALD)
minetest.register_craft({
	output = 'default:mese_crystal 9',
	type = "shapeless",
	recipe =
		{'es:emerald_container', 'es:messymese' },
})

--POTION TO MAKE AIKERUM TOOL FROM DIAMOND TOOL (AIKERUM)
minetest.register_craft({
	output = 'es:sword_aikerum',
	type = "shapeless",
	recipe =
		{'es:aikerum_container', 'default:sword_diamond' },
})

minetest.register_craft({
	output = 'es:pick_aikerum',
	type = "shapeless",
	recipe =
		{'es:aikerum_container', 'default:pick_diamond' },
})
minetest.register_craft({
	output = 'es:axe_aikerum',
	type = "shapeless",
	recipe =
		{'es:aikerum_container', 'default:axe_diamond' },
})
minetest.register_craft({
	output = 'es:shovel_aikerum',
	type = "shapeless",
	recipe =
		{'es:aikerum_container', 'default:shovel_diamond' },
})

--POTION TO FIX ARMOUR (RUBY)
--infinium armour fix
minetest.register_craft({
	output = 'es:helmet_infinium',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:helmet_infinium' },
})
minetest.register_craft({
	output = 'es:chestplate_infinium',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:chestplate_infinium'},
})
minetest.register_craft({
	output = 'es:leggings_infinium',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:leggings_infinium'},
})
minetest.register_craft({
	output = 'es:boots_infinium',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:boots_infinium' },
})

--aikerum armour fix
minetest.register_craft({
	output = 'es:helmet_aikerum',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:helmet_aikerum' },
})
minetest.register_craft({
	output = 'es:chestplate_aikerum',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:chestplate_aikerum'},
})
minetest.register_craft({
	output = 'es:leggings_aikerum',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:leggings_aikerum'},
})
minetest.register_craft({
	output = 'es:boots_aikerum',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:boots_aikerum' },
})

--emerald armour fix
minetest.register_craft({
	output = 'es:helmet_emerald',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:helmet_emerald' },
})
minetest.register_craft({
	output = 'es:chestplate_emerald',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:chestplate_emerald'},
})
minetest.register_craft({
	output = 'es:leggings_emerald',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:leggings_emerald'},
})
minetest.register_craft({
	output = 'es:boots_emerald',
	type = "shapeless",
	recipe =
		{'es:ruby_container', 'es:boots_emerald' },
})


--WEAPONS AND TOOLS
minetest.register_craft({
	output = 'es:handle',
	recipe = {
		{'default:bronze_ingot', 'default:mese_crystal', 'default:bronze_ingot'},
		{'farming:string', 'default:steel_ingot', 'farming:string'},
		{'farming:string', 'default:diamond', 'farming:string'},
	}
})
minetest.register_craftitem("es:handle", {
	description = "Extreme Survival Uni-handle",
	inventory_image = "es_handle.png",
	--inventory_image = "default_steel_ingot.png^default_diamond.png^default_mese_crystal.png^farming_cotton.png",
})


--BUCKET


--SWORDS
minetest.register_craft({
	output = 'es:sword_emerald',
	recipe = {
		{'es:emerald_crystal'},
		{'es:emerald_crystal'},
		{'es:handle'},
	}
})
minetest.register_craft({
	output = 'es:sword_ruby',
	recipe = {
		{'es:ruby_crystal'},
		{'es:ruby_crystal'},
		{'es:handle'},
	}
})
minetest.register_craft({
	output = 'es:sword_aikerum',
	recipe = {
		{'es:aikerum_crystal'},
		{'es:aikerum_crystal'},
		{'es:handle'},
	}
})
minetest.register_craft({
	output = 'es:sword_purpellium',
	recipe = {
		{'es:purpellium_ingot'},
		{'es:purpellium_ingot'},
		{'es:handle'},
	}
})

--PICKS
minetest.register_craft({
	output = 'es:pick_emerald',
	recipe = {
		{'es:emerald_crystal', 'es:emerald_crystal', 'es:emerald_crystal'},
		{'', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})
minetest.register_craft({
	output = 'es:pick_ruby',
	recipe = {
		{'es:ruby_crystal', 'es:ruby_crystal', 'es:ruby_crystal'},
		{'', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})
minetest.register_craft({
	output = 'es:pick_aikerum',
	recipe = {
		{'es:aikerum_crystal', 'es:aikerum_crystal', 'es:aikerum_crystal'},
		{'', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})
minetest.register_craft({
	output = 'es:pick_aikerum',
	recipe = {
		{'es:aikerum_crystal', 'es:aikerum_crystal', 'es:aikerum_crystal'},
		{'', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})
minetest.register_craft({
	output = 'es:pick_purpellium',
	recipe = {
		{'es:purpellium_ingot', 'es:purpellium_ingot', 'es:purpellium_ingot'},
		{'', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})

--AXES
minetest.register_craft({
	output = 'es:axe_emerald',
	recipe = {
		{'es:emerald_crystal', 'es:emerald_crystal', ''},
		{'es:emerald_crystal', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})
minetest.register_craft({
	output = 'es:axe_ruby',
	recipe = {
		{'es:ruby_crystal', 'es:ruby_crystal', ''},
		{'es:ruby_crystal', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})
minetest.register_craft({
	output = 'es:axe_aikerum',
	recipe = {
		{'es:aikerum_crystal', 'es:aikerum_crystal', ''},
		{'es:aikerum_crystal', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})

--SHOVELS
minetest.register_craft({
	output = 'es:shovel_emerald',
	recipe = {
		{'', 'es:emerald_crystal', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})
minetest.register_craft({
	output = 'es:shovel_ruby',
	recipe = {
		{'', 'es:ruby_crystal', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})

minetest.register_craft({
	output = 'es:shovel_aikerum',
	recipe = {
		{'', 'es:aikerum_crystal', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'es:handle', ''},
	}
})

--[[
--OLD EASY CRAFTS
--Weapon &Tool Crafting:
--SWORDS
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
	output = 'es:sword_purpellium',
	recipe = {
		{'es:purpellium_ingot'},
		{'es:purpellium_ingot'},
		{'default:steel_ingot'},
	}
})

--PICKS
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

minetest.register_craft({
	output = 'es:pick_purpellium',
	recipe = {
		{'es:purpellium_ingot', 'es:purpellium_ingot', 'es:purpellium_ingot'},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

--AXES
minetest.register_craft({
	output = 'es:axe_emerald',
	recipe = {
		{'es:emerald_crystal', 'es:emerald_crystal', ''},
		{'es:emerald_crystal', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'es:axe_ruby',
	recipe = {
		{'es:ruby_crystal', 'es:ruby_crystal', ''},
		{'es:ruby_crystal', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'es:axe_aikerum',
	recipe = {
		{'es:aikerum_crystal', 'es:aikerum_crystal', ''},
		{'es:aikerum_crystal', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

--SHOVELS
minetest.register_craft({
	output = 'es:shovel_emerald',
	recipe = {
		{'', 'es:emerald_crystal', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})
minetest.register_craft({
	output = 'es:shovel_ruby',
	recipe = {
		{'', 'es:ruby_crystal', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'es:shovel_aikerum',
	recipe = {
		{'', 'es:aikerum_crystal', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

]]

--COOKING RECIPIES
minetest.register_craft({
	type = "cooking",
	output = "default:water_flowing",
	recipe = "default:ice",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "es:dry_dirt",
	recipe = "default:dirt",
})

--rnd code
-- 7*24*60*60 = 604800 real time 1 week burn time
--Changed to 3 minutes 20151223
minetest.register_craft({
	type = "fuel",
	recipe = "es:depleted_uranium_ingot",
	burntime = 180,
})

minetest.register_craft({
	type = "cooking",
	output = "es:infinium_ingot 1",
	recipe = "es:infinium_container",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 30,
	output = "es:purpellium_ingot 1",
	recipe = "es:purpellium_lump",
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


--Dust cooking
minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "es:purpellium_lump",
	recipe = "es:purpellium_dust",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "es:aikerum_crystal",
	recipe = "es:aikerum_dust",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "es:ruby_crystal",
	recipe = "es:ruby_dust",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "es:emerald_crystal",
	recipe = "es:emerald_dust",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "es:rubber",
	recipe = "es:rubber_dust",
})
