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


-- See README.txt for licensing and other information.
--maikerumine


es = {}

minetest.register_craft({
	type = "shapeless",
	output = "es:muddy_block",
	recipe = {"es:dry_dirt","default:water_flowing"},
})

minetest.register_craft({
	type = "shapeless",
	output = "default:dirt",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {"es:dry_dirt","bucket:bucket:bucket_water"},
})

minetest.register_craft({
	output = 'es:rainbow_water_source',
	recipe = {
		{'es:griefer_soul', 'es:griefer_soul', 'es:griefer_soul'},
		{'default:obsidian_glass', 'es:gold_digger_block', 'default:obsidian_glass'},
		{'es:bucket_toxic', 'bucket:bucket_water', 'bucket:bucket_lava'},
	}
})


--jt2
--======================================
minetest.register_craft({
	output = 'es:meselamp_white 3',
	recipe = {
		{'', 'default:mese_crystal',''},
		{'default:mese_crystal', 'default:obsidian_glass', 'default:mese_crystal'},
	}
})

minetest.register_craft({
	output = 'es:griefer_soul_block',
	recipe = {
		{'es:griefer_soul', 'es:griefer_soul', 'es:griefer_soul'},
		{'es:griefer_soul', 'es:griefer_soul', 'es:griefer_soul'},
		{'es:griefer_soul', 'es:griefer_soul', 'es:griefer_soul'},
	}
})


--Washed clay
--======================================
minetest.register_craft({
	output = "default:clay",
	type = "shapeless",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {"es:strange_clay_blue", "bucket:bucket_water"},
})

minetest.register_craft({
	output = "default:clay",
	type = "shapeless",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {"es:strange_clay_red", "bucket:bucket_water"},
})

minetest.register_craft({
	output = "default:clay",
	type = "shapeless",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {"es:strange_clay_maroon", "bucket:bucket_water"},
})

minetest.register_craft({
	output = "default:clay",
	type = "shapeless",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {"es:strange_clay_brown", "bucket:bucket_water"},
})

minetest.register_craft({
	output = "default:clay",
	type = "shapeless",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {"es:strange_clay_orange", "bucket:bucket_water"},
})

minetest.register_craft({
	output = "default:clay",
	type = "shapeless",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {"es:strange_clay_black", "bucket:bucket_water"},
})

minetest.register_craft({
	output = "default:clay",
	type = "shapeless",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {"es:strange_clay_grey", "bucket:bucket_water"},
})


--depleted uranium
--======================================
minetest.register_craft({
	output = 'es:depleted_uraniumblock',
	--replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {
		{'es:depleted_uranium_ingot', 'es:depleted_uranium_ingot', 'es:depleted_uranium_ingot'},
		{'es:depleted_uranium_ingot', 'es:depleted_uranium_ingot', 'es:depleted_uranium_ingot'},
		{'es:depleted_uranium_ingot', 'es:depleted_uranium_ingot', 'es:depleted_uranium_ingot'},
	}
})
minetest.register_craft({
	output = 'es:depleted_uranium_ingot 9',
	recipe = {
		{'es:depleted_uraniumblock'},
	}
})


--compressed cobble
--======================================
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
--======================================
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


--[[
--MESE
--======================================

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
]]
minetest.register_craft({
	output = 'es:messymese',
	recipe = {
		{"default:mese", "default:mese", "default:mese"},
		{"default:mese", "default:mese", "default:mese"},
		{"default:mese", "default:mese", "default:mese"},
	},
})
minetest.register_craft({
	output = 'default:mese 9',
	recipe = {
		{'es:messymese'},
	}
})

minetest.register_craft({
	output = 'es:mese_green',
	recipe = {
		{"es:mese_green_crystal", "es:mese_green_crystal", "es:mese_green_crystal"},
		{"es:mese_green_crystal", "es:mese_green_crystal", "es:mese_green_crystal"},
		{"es:mese_green_crystal", "es:mese_green_crystal", "es:mese_green_crystal"},
	},
})
minetest.register_craft({
	output = 'es:mese_green_crystal 9',
	recipe = {
		{'es:mese_green'},
	}
})




--LIQUIDS
--======================================
minetest.register_craft({
	output = "es:fake_water_source",
	type = "shapeless",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {"bucket:bucket_water"},
})

minetest.register_craft({
	type = "shapeless",
	output = "es:bucket_toxic",
	recipe = {"es:toxic_water_flowing","bucket:bucket_empty"},
})

minetest.register_craft({
	output = "es:toxic_water_flowing",
	replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"}},
	recipe = {
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","bucket:bucket_river_water","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	},
})

minetest.register_craft({
	output = "es:toxic_water_flowing",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
	recipe = {
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","bucket:bucket_water","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	},
})

minetest.register_craft({
	output = "es:toxic_water_flowing",
	replacements = {{"es:toxic_water_flowing", "bucket:bucket_empty"}},
	recipe = {
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","default:water_flowing","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	},
})

minetest.register_craft({
	output = "es:lava_source",
	replacements = {{"bucket:bucket_lava", "bucket:bucket_empty"}},
	recipe = {
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","bucket:bucket_lava","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	},
})

--VAULT CHEST
--======================================
minetest.register_craft({
	output = "es:vault",
	replacements = {{"bucket:bucket_toxic", "bucket:bucket_empty"}},
	recipe = {
	{"es:boneblock","es:depleted_uranium_ingot","es:boneblock"},
	{"es:depleted_uranium_ingot","es:bucket_toxic","es:depleted_uranium_ingot"},
	{"es:boneblock","es:depleted_uranium_ingot","es:boneblock"},
	},
})

--STEALTH CHEST
--======================================
minetest.register_craft({
	output = "es:stealth_locked_chest",
	replacements = {{"bucket:bucket_toxic", "bucket:bucket_empty"}},
	recipe = {
	{"default:cobble","default:cobble","default:cobble"},
	{"default:cobble","default:steelblock","default:cobble"},
	{"default:cobble","default:cobble","default:cobble"},
	},
})

--BONEBLOCK
--======================================
minetest.register_craft({
	output = 'es:boneblock',
	replacements = {{"default:steelblock", "default:steelblock"}},
	recipe = {
	{"bones:bones", "bones:bones", "bones:bones"},
	{"bones:bones", "default:steelblock", "bones:bones"},
	{"bones:bones", "bones:bones", "bones:bones"},
	},
})

--WHATBLOCK
--======================================
minetest.register_craft({
	output = "es:what",
	recipe = {
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:boneblock","es:depleted_uranium_ingot"},
	{"es:depleted_uranium_ingot","es:depleted_uranium_ingot","es:depleted_uranium_ingot"},
	},
})


--es ground blocks
--======================================
minetest.register_craft({
	output = 'es:strange_grass 4',
	recipe = {
	{'es:aikerum_dust',},
    {'default:clay', },
    {'default:clay', },
}
})

minetest.register_craft({
	output = 'es:aiden_grass 4',
	recipe = {
	{'es:ruby_dust',},
    {'default:clay', },
    {'default:clay', },
}
})


--ES SPECIAL ORES AND BLOCKS
--======================================
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
	output = 'es:emerald_crystal 9',
	recipe = {
		{'es:emeraldblock'},
	}
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
	output = 'es:ruby_crystal 9',
	recipe = {
		{'es:rubyblock'},
	}
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
	output = 'es:aikerum_crystal 9',
	recipe = {
		{'es:aikerumblock'},
	}
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
	output = 'es:infinium_ingot 9',
	recipe = {
		{'es:infiniumblock'},
	}
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
	output = 'es:purpellium_ingot 9',
	recipe = {
		{'es:purpelliumblock'},
	}
})



--unobtainium  lol
minetest.register_craft({
	output = 'es:unobtainiumblock',
	recipe = {
		{"es:unobtainium_ingot", "es:unobtainium_ingot", "es:unobtainium_ingot"},
		{"es:unobtainium_ingot", "es:unobtainium_ingot", "es:unobtainium_ingot"},
		{"es:unobtainium_ingot", "es:unobtainium_ingot", "es:unobtainium_ingot"},
	},
})
minetest.register_craft({
	output = 'es:unobtainium_ingot 9',
	recipe = {
		{'es:unobtainiumblock'},
	}
})

--Beedo lol
minetest.register_craft({
	output = 'es:beedo_block',
	recipe = {
		{"es:beedo_crystal", "es:beedo_crystal", "es:beedo_crystal"},
		{"es:beedo_crystal", "es:beedo_crystal", "es:beedo_crystal"},
		{"es:beedo_crystal", "es:beedo_crystal", "es:beedo_crystal"},
	},
})
minetest.register_craft({
	output = 'es:beedo_crystal 9',
	recipe = {
		{'es:beedo_block'},
	}
})

--GRINDING
--======================================
--IF COTTAGES USE FOR GRINDING
--place in init in cottages
--cottages.handmill_product[ 'es:purpellium_lump' ] = 'es:purpellium_dust 1';
--cottages.handmill_product[ 'es:aikerum_crystal' ] = 'es:aikerum_dust 1';
--cottages.handmill_product[ 'es:ruby_crystal' ] = 'es:ruby_dust 1';
--cottages.handmill_product[ 'es:emerald_crystal' ] = 'es:emerald_dust 1';

--ES GRINDER:

--[[
minetest.register_craft({
	--type = "shapeless",
	output = 'es:rubber_dust 12',
	recipe = {
	{"default:jungletree", "default:jungletree","default:jungletree"},
	{"default:jungletree", "default:steel_ingot","default:jungletree"},
	{"default:jungletree", "default:jungletree","default:jungletree"},
	},
})
]]


--POTIONS AND VESSEL CRAFTING
--======================================
--crafting containers
minetest.register_craft({
	type = "shapeless",
	replacements = {{"es:toxic_container", "vessels:glass_bottle"}},
	output = "es:unobtainium_container",
	recipe = {"vessels:steel_bottle", "es:unobtainium_ingot","es:toxic_container","es:infiniumblock"},
})
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




--POTION TO MAKE EMERALD CRYSTAL  (EMERALD)
minetest.register_craft({
	output = 'es:emerald_crystal 27',
	type = "shapeless",
	recipe =
		{'es:emerald_container', 'es:messymese' },
})

--====================
--Fix your tools
--====================
--Ub
minetest.register_craft({
	output = 'es:pick_unobtainium',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:pick_unobtainium' },
})

--Pu
minetest.register_craft({
	output = 'es:pick_purpellium',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:pick_purpellium' },
})
minetest.register_craft({
	output = 'es:sword_purpellium',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:sword_purpellium' },
})
minetest.register_craft({
	output = 'es:axe_purpellium',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:axe_purpellium' },
})
minetest.register_craft({
	output = 'es:shovel_purpellium',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:shovel_purpellium' },
})

--Ai
minetest.register_craft({
	output = 'es:pick_aikerum',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:pick_aikerum' },
})
minetest.register_craft({
	output = 'es:sword_aikerum',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:sword_aikerum' },
})
minetest.register_craft({
	output = 'es:axe_aikerum',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:axe_aikerum' },
})
minetest.register_craft({
	output = 'es:shovel_aikerum',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:shovel_aikerum' },
})

--Ru
minetest.register_craft({
	output = 'es:pick_ruby',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:pick_ruby' },
})
minetest.register_craft({
	output = 'es:sword_ruby',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:sword_ruby' },
})
minetest.register_craft({
	output = 'es:axe_ruby',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:axe_ruby' },
})
minetest.register_craft({
	output = 'es:shovel_ruby',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:shovel_ruby' },
})

--Em
minetest.register_craft({
	output = 'es:pick_emerald',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:pick_emerald' },
})
minetest.register_craft({
	output = 'es:sword_emerald',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:sword_emerald' },
})
minetest.register_craft({
	output = 'es:axe_emerald',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:axe_emerald' },
})
minetest.register_craft({
	output = 'es:shovel_emerald',
	type = "shapeless",
	replacements = {{"es:unobtainium_container", "vessels:steel_bottle"}},
	recipe =
		{'es:unobtainium_container', 'es:shovel_emerald' },
})


--POTION TO MAKE AIKERUM TOOL FROM DIAMOND TOOL (AIKERUM)
minetest.register_craft({
	output = 'es:sword_aikerum',
	replacements = {{"es:aikerum_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:aikerum_container', 'default:sword_diamond' },
})

minetest.register_craft({
	output = 'es:pick_aikerum',
	type = "shapeless",
	replacements = {{"es:aikerum_container", "vessels:glass_bottle"}},
	recipe =
		{'es:aikerum_container', 'default:pick_diamond' },
})
minetest.register_craft({
	output = 'es:axe_aikerum',
	replacements = {{"es:aikerum_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:aikerum_container', 'default:axe_diamond' },
})
minetest.register_craft({
	output = 'es:shovel_aikerum',
	replacements = {{"es:aikerum_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:aikerum_container', 'default:shovel_diamond' },
})

--POTION TO FIX ARMOUR (RUBY)
--unobtainium armour fix
minetest.register_craft({
	output = '3d_armor:helmet_unobtainium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:helmet_unobtainium' },
})
minetest.register_craft({
	output = '3d_armor:chestplate_unobtainium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:chestplate_unobtainium'},
})
minetest.register_craft({
	output = '3d_armor:leggings_unobtainium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:leggings_unobtainium'},
})
minetest.register_craft({
	output = '3d_armor:boots_unobtainium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:boots_unobtainium' },
})

--purpellium armour fix
minetest.register_craft({
	output = '3d_armor:helmet_purpellium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:helmet_purpellium' },
})
minetest.register_craft({
	output = '3d_armor:chestplate_purpellium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:chestplate_purpellium'},
})
minetest.register_craft({
	output = '3d_armor:leggings_purpellium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:leggings_purpellium'},
})
minetest.register_craft({
	output = '3d_armor:boots_purpellium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:boots_purpellium' },
})

--infinium armour fix
minetest.register_craft({
	output = '3d_armor:helmet_infinium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:helmet_infinium' },
})
minetest.register_craft({
	output = '3d_armor:chestplate_infinium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:chestplate_infinium'},
})
minetest.register_craft({
	output = '3d_armor:leggings_infinium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:leggings_infinium'},
})
minetest.register_craft({
	output = '3d_armor:boots_infinium',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:boots_infinium' },
})

--aikerum armour fix
minetest.register_craft({
	output = '3d_armor:helmet_aikerum',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:helmet_aikerum' },
})
minetest.register_craft({
	output = '3d_armor:chestplate_aikerum',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:chestplate_aikerum'},
})
minetest.register_craft({
	output = '3d_armor:leggings_aikerum',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:leggings_aikerum'},
})
minetest.register_craft({
	output = '3d_armor:boots_aikerum',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:boots_aikerum' },
})

--emerald armour fix
minetest.register_craft({
	output = '3d_armor:helmet_emerald',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:helmet_emerald' },
})
minetest.register_craft({
	output = '3d_armor:chestplate_emerald',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:chestplate_emerald'},
})
minetest.register_craft({
	output = '3d_armor:leggings_emerald',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:leggings_emerald'},
})
minetest.register_craft({
	output = '3d_armor:boots_emerald',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:boots_emerald' },
})

--ruby armour fix
minetest.register_craft({
	output = '3d_armor:helmet_ruby',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:helmet_ruby' },
})
minetest.register_craft({
	output = '3d_armor:chestplate_ruby',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:chestplate_ruby'},
})
minetest.register_craft({
	output = '3d_armor:leggings_ruby',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:leggings_ruby'},
})
minetest.register_craft({
	output = '3d_armor:boots_ruby',
	replacements = {{"es:ruby_container", "vessels:glass_bottle"}},
	type = "shapeless",
	recipe =
		{'es:ruby_container', '3d_armor:boots_ruby' },
})

--INGOTS
--======================================
minetest.register_craft({
	output = 'es:cookable_emerald_ingot',
	type = "shapeless",
	recipe =
		{'es:emerald_dust', 'default:bronze_ingot' },
})

minetest.register_craft({
	output = 'es:cookable_ruby_ingot',
	type = "shapeless",
	recipe =
		{'es:ruby_dust', 'default:bronze_ingot' },
})

minetest.register_craft({
	output = 'es:cookable_aikerum_ingot',
	type = "shapeless",
	recipe =
		{'es:aikerum_dust', 'default:bronze_ingot' },
})

minetest.register_craft({
	output = 'es:cookable_purpellium_ingot',
	type = "shapeless",
	recipe =
		{'es:purpellium_dust', 'default:bronze_ingot' },
})


--WEAPONS AND TOOLS
--======================================

--local es_hard_tool_craft = tonumber(minetest.settings:get("es_hard_tool_craft"))
--if es_hard_tool_craft == 1 then
	minetest.register_craft({
		output = 'es:handle',
		recipe = {
			{'default:bronze_ingot', 'default:mese_crystal', 'default:bronze_ingot'},
			{'farming:string', 'default:steel_ingot', 'farming:string'},
			{'farming:string', 'default:diamond', 'farming:string'},
		}
	})

	--Hoes
	minetest.register_craft({
		output = 'farming:hoe_mese_green',
		recipe = {
			{'es:mese_green_crystal', 'es:mese_green_crystal', ''},
			{'', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})	



	--SWORDS
	minetest.register_craft({
		output = 'es:sword_emerald',
		recipe = {
			{'es:emerald_ingot'},
			{'es:emerald_ingot'},
			{'es:handle'},
		}
	})
	minetest.register_craft({
		output = 'es:sword_ruby',
		recipe = {
			{'es:ruby_ingot'},
			{'es:ruby_ingot'},
			{'es:handle'},
		}
	})
	minetest.register_craft({
		output = 'es:sword_aikerum',
		recipe = {
			{'es:aikerum_ingot'},
			{'es:aikerum_ingot'},
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
			{'es:emerald_ingot', 'es:emerald_ingot', 'es:emerald_ingot'},
			{'', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})
	minetest.register_craft({
		output = 'es:pick_ruby',
		recipe = {
			{'es:ruby_ingot', 'es:ruby_ingot', 'es:ruby_ingot'},
			{'', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})
	minetest.register_craft({
		output = 'es:pick_aikerum',
		recipe = {
			{'es:aikerum_ingot', 'es:aikerum_ingot', 'es:aikerum_ingot'},
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

	minetest.register_craft({
		output = 'es:pick_unobtainium',
		recipe = {
			{'es:unobtainium_ingot', 'es:unobtainium_ingot', 'es:unobtainium_ingot'},
			{'', 'es:unobtainium_ingot', ''},
			{'', 'es:handle', ''},
		}
	})

	minetest.register_craft({
		output = 'es:pick_mese_green',
		recipe = {
			{'es:mese_green_crystal', 'es:mese_green_crystal', 'es:mese_green_crystal'},
			{'', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})

	minetest.register_craft({
		output = 'es:pick_beedo_hammer',
		recipe = {
			{'es:beedo_crystal', 'es:beedo_crystal', 'es:beedo_crystal'},
			{'', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})
	
	--AXES
	minetest.register_craft({
		output = 'es:axe_emerald',
		recipe = {
			{'es:emerald_ingot', 'es:emerald_ingot', ''},
			{'es:emerald_ingot', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})
	minetest.register_craft({
		output = 'es:axe_ruby',
		recipe = {
			{'es:ruby_ingot', 'es:ruby_ingot', ''},
			{'es:ruby_ingot', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})
	minetest.register_craft({
		output = 'es:axe_aikerum',
		recipe = {
			{'es:aikerum_ingot', 'es:aikerum_ingot', ''},
			{'es:aikerum_ingot', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})
	minetest.register_craft({
		output = 'es:axe_purpellium',
		recipe = {
			{'es:purpellium_ingot', 'es:purpellium_ingot', ''},
			{'es:purpellium_ingot', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})

	--SHOVELS
	minetest.register_craft({
		output = 'es:shovel_emerald',
		recipe = {
			{'', 'es:emerald_ingot', ''},
			{'', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})
	minetest.register_craft({
		output = 'es:shovel_ruby',
		recipe = {
			{'', 'es:ruby_ingot', ''},
			{'', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})

	minetest.register_craft({
		output = 'es:shovel_aikerum',
		recipe = {
			{'', 'es:aikerum_ingot', ''},
			{'', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})
	
	minetest.register_craft({
		output = 'es:shovel_purpellium',
		recipe = {
			{'', 'es:purpellium_ingot', ''},
			{'', 'default:steel_ingot', ''},
			{'', 'es:handle', ''},
		}
	})
--end
--[[
if es_hard_tool_craft ~= 1 then
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
end
]]

--es special terrain flora
--======================================

--es:strange_tree
--es:aiden_tree
--es:old_tree
--es:strange_leaves
--es:strange_shrub
--es:dry_shrub
--es:junglegrass
minetest.register_craft({
	output = 'es:strange_tree',
	recipe = {
		{'es:aikerum_crystal', 'es:aikerum_crystal', 'es:aikerum_crystal'},
		{'es:aikerum_crystal', 'default:coalblock', 'es:aikerum_crystal'},
		{'es:aikerum_crystal', 'es:aikerum_crystal', 'es:aikerum_crystal'},
	}
})

minetest.register_craft({
	output = "es:strange_tree_wood 4",
	recipe = {
		{"es:strange_tree"},
	}
})

minetest.register_craft({
	output = 'es:aiden_tree 8',
	recipe = {
		{'es:old_tree', 'default:jungletree', 'es:old_tree'},
		{'default:jungletree', 'default:coalblock', 'default:jungletree'},
		{'es:old_tree', 'default:jungletree', 'es:old_tree'},
	}
})

minetest.register_craft({
	output = "es:aiden_tree_wood 4",
	recipe = {
		{"es:aiden_tree"},
	}
})

minetest.register_craft({
	output = 'es:old_tree 5',
	recipe = {
		{'default:tree', 'es:strange_clay_grey', 'default:tree'},
		{'es:strange_clay_grey', 'default:tree', 'es:strange_clay_grey'},
		{'default:tree', 'es:strange_clay_grey', 'default:tree'},
	}
})

minetest.register_craft({
	output = 'es:strange_leaves 4',
	recipe = {
		{'default:leaves', 'default:leaves', 'default:leaves'},
		{'default:leaves', 'es:aikerum_dust', 'default:leaves'},
		{'default:leaves', 'default:leaves', 'default:leaves'},
	}
})

minetest.register_craft({
	output = 'es:strange_shrub 8',
	recipe = {
		{'es:strange_leaves', 'es:strange_leaves', 'es:strange_leaves'},
		{'es:strange_leaves', 'es:dry_shrub', 'es:strange_leaves'},
		{'es:strange_leaves', 'es:strange_leaves', 'es:strange_leaves'},
	}
})

minetest.register_craft({
	output = 'es:dry_shrub',
	recipe = {
		{'default:dry_shrub', 'default:dry_shrub', 'default:dry_shrub'},
		{'default:dry_shrub', 'es:aikerum_dust', 'default:dry_shrub'},
		{'default:dry_shrub', 'default:dry_shrub', 'default:dry_shrub'},
	}
})

minetest.register_craft({
	output = 'es:junglegrass',
	recipe = {
		{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
		{'default:junglegrass', 'es:ruby_dust', 'default:junglegrass'},
		{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
	}
})

