--Extreme Survival created by maikerumine
-- Minetest 0.4.16 mod: "Extreme Survival"
-- namespace: es
--version 0.4.16
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015-2017 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2020) maikerumine; CC-BY-SA 3.0
local S = armor.get_translator

es.colors = {
  grey = minetest.get_color_escape_sequence("#9d9d9d"),
  green = minetest.get_color_escape_sequence("#1eff00"),
  gold = minetest.get_color_escape_sequence("#ffdf00"),
  white = minetest.get_color_escape_sequence("#ffffff")
}


--Armor code borrowed from:
--stu
--
--License Textures: 2013 Ryan Jones - CC-BY-SA
--License Source Code: 2013 Stuart Jones - LGPL
--Modified color by maikerumine.

--green mese
	armor:register_armor(":3d_armor:helmet_mese_green", {
		--description = "Emerald Helmet -= HP10; He8; Us100; Fi0; Wa-0.1; Ra2; Ju0; Sp0 =-",
		--[[
		description = 
					es.colors.green .. 	"Mese Green Helmet \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Heal:		8   \n" ..
					es.colors.gold .. 	"Use:		800   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		-0.1   \n" ..
					es.colors.gold .. 	"Radiation:		2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		-0.7 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for blocking radiation, but super slow. ",
		]]
		inventory_image = "3d_armor_inv_helmet_mese_green.png",
		groups = {armor_head=1, armor_heal=8, armor_use=800, armor_fire=0, armor_water=-0.1, physics_speed=-0.1, armor_radiation = 2},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_mese_green", {
		--description = "Emerald Chestplate -= HP12; He8; Us100; Fi0; Wa-0.1; Ra2; Ju0; Sp0 =-",
		--[[
		description = 
					es.colors.green .. 	"Mese Green Chestplate \n" ..
					es.colors.gold .. 	"Level:		12   \n" ..
					es.colors.gold .. 	"Heal:		8   \n" ..
					es.colors.gold .. 	"Use:		800   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		-0.1   \n" ..
					es.colors.gold .. 	"Radiation:		2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		-0.7 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for blocking radiation, but super slow. ",
										]]
		inventory_image = "3d_armor_inv_chestplate_mese_green.png",
		groups = {armor_torso=1, armor_heal=8, armor_use=800, armor_fire=0, armor_water=-0.1, physics_speed=-0.1, armor_radiation = 2},
		armor_groups = {fleshy=12},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:leggings_mese_green", {
		--description = "Emerald Leggings -= HP12; He8; Us100; Fi0; Wa-0.1; Ra2; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Mese Green Leggings \n" ..
					es.colors.gold .. 	"Level:		12   \n" ..
					es.colors.gold .. 	"Heal:		8   \n" ..
					es.colors.gold .. 	"Use:		800   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		-0.1   \n" ..
					es.colors.gold .. 	"Radiation:		2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		-0.7 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for blocking radiation, but super slow. ",
										]]
		inventory_image = "3d_armor_inv_leggings_mese_green.png",
		groups = {armor_legs=1, armor_heal=8, armor_use=800, armor_fire=0, armor_water=-0.1, physics_speed=-0.1, armor_radiation = 2},
		armor_groups = {fleshy=12},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_mese_green", {
		--description = "Emerald Boots -= HP10; He8; Us100; Fi0; Wa-0.1; Ra2; Ju0.5; Sp0.7 =-",
		--[[
				description = 
					es.colors.green .. 	"Mese Green Boots \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Heal:		8   \n" ..
					es.colors.gold .. 	"Use:		800   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		-0.1   \n" ..
					es.colors.gold .. 	"Radiation:		2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		-0.7 \n" ..
					es.colors.grey .. 	"Physics Jump:		0.01 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for blocking radiation, but super slow. ",
										]]
		inventory_image = "3d_armor_inv_boots_mese_green.png",
		groups = {armor_feet=1, armor_heal=8, armor_use=800, physics_speed=-0.1,
				physics_jump=0.01, armor_fire=0, armor_water=-0.1, armor_radiation = 2},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	
--emerald
	armor:register_armor(":3d_armor:helmet_emerald", {
		--description = "Emerald Helmet -= HP10; He8; Us100; Fi0; Wa-0.1; Ra2; Ju0; Sp0 =-",
		--[[
		description = 
					es.colors.green .. 	"Emerald Helmet \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Heal:		8   \n" ..
					es.colors.gold .. 	"Use:		100   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		-0.1   \n" ..
					es.colors.gold .. 	"Radiation:		2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for blocking radiation. ",
										]]
		
		inventory_image = "3d_armor_inv_helmet_emerald.png",
		groups = {armor_head=1, armor_heal=8, armor_use=100, armor_fire=0, armor_water=-0.1, armor_radiation = 2},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_emerald", {
		--description = "Emerald Chestplate -= HP12; He8; Us100; Fi0; Wa-0.1; Ra2; Ju0; Sp0 =-",
		--[[
		description = 
					es.colors.green .. 	"Emerald Chestplate \n" ..
					es.colors.gold .. 	"Level:		12   \n" ..
					es.colors.gold .. 	"Heal:		8   \n" ..
					es.colors.gold .. 	"Use:		100   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		-0.1   \n" ..
					es.colors.gold .. 	"Radiation:		2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for blocking radiation. ",
										]]
		inventory_image = "3d_armor_inv_chestplate_emerald.png",
		groups = {armor_torso=1, armor_heal=8, armor_use=100, armor_fire=0, armor_water=-0.1, armor_radiation = 2},
		armor_groups = {fleshy=12},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:leggings_emerald", {
		--description = "Emerald Leggings -= HP12; He8; Us100; Fi0; Wa-0.1; Ra2; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Emerald Leggings \n" ..
					es.colors.gold .. 	"Level:		12   \n" ..
					es.colors.gold .. 	"Heal:		8   \n" ..
					es.colors.gold .. 	"Use:		100   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		-0.1   \n" ..
					es.colors.gold .. 	"Radiation:		2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for blocking radiation. ",
										]]
		inventory_image = "3d_armor_inv_leggings_emerald.png",
		groups = {armor_legs=1, armor_heal=8, armor_use=100, armor_fire=0, armor_water=-0.1, armor_radiation = 2},
		armor_groups = {fleshy=12},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_emerald", {
		--description = "Emerald Boots -= HP10; He8; Us100; Fi0; Wa-0.1; Ra2; Ju0.5; Sp0.7 =-",
		--[[
				description = 
					es.colors.green .. 	"Emerald Boots \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Heal:		8   \n" ..
					es.colors.gold .. 	"Use:		100   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		-0.1   \n" ..
					es.colors.gold .. 	"Radiation:		2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.7 \n" ..
					es.colors.grey .. 	"Physics Jump:		0.5 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for blocking radiation. ",
										]]
		inventory_image = "3d_armor_inv_boots_emerald.png",
		groups = {armor_feet=1, armor_heal=8, armor_use=100, physics_speed=0.7,
				physics_jump=0.5, armor_fire=0, armor_water=-0.1, armor_radiation = 2},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=1, level=3},
	})

--ruby	
	armor:register_armor(":3d_armor:helmet_ruby", {
		--description = "Ruby Helmet -= HP7; He12; Us110; Fi1.5; Wa-1; Ra0.5; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Ruby Helmet \n" ..
					es.colors.gold .. 	"Level:		7   \n" ..
					es.colors.gold .. 	"Heal:		12   \n" ..
					es.colors.gold .. 	"Use:		110   \n" ..
					es.colors.gold .. 	"Fire:		1.5   \n" ..
					es.colors.gold .. 	"Water:		-1   \n" ..
					es.colors.gold .. 	"Radiation:		0.5   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for swimming in lava. ",
										]]
		inventory_image = "3d_armor_inv_helmet_ruby.png",
		groups = {armor_head=1, armor_heal=12, armor_use=110, armor_fire=1.5, armor_water=-1, armor_radiation = 0.5},
		armor_groups = {fleshy=7},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_ruby", {
		--description = "Ruby Chestplate -= HP11; He12; Us110; Fi1.5; Wa-1; Ra0.5; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Ruby Chestplate \n" ..
					es.colors.gold .. 	"Level:		11   \n" ..
					es.colors.gold .. 	"Heal:		12   \n" ..
					es.colors.gold .. 	"Use:		110   \n" ..
					es.colors.gold .. 	"Fire:		1.5   \n" ..
					es.colors.gold .. 	"Water:		-1   \n" ..
					es.colors.gold .. 	"Radiation:		0.5   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for swimming in lava. ",
										]]
		inventory_image = "3d_armor_inv_chestplate_ruby.png",
		groups = {armor_torso=1, armor_heal=12, armor_use=110, armor_fire=1.5, armor_water=-1, armor_radiation = 0.5},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:leggings_ruby", {
		--description = "Ruby Leggings -= HP11; He12; Us110; Fi1.5; Wa-1; Ra0.5; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Ruby Leggings \n" ..
					es.colors.gold .. 	"Level:		11   \n" ..
					es.colors.gold .. 	"Heal:		12   \n" ..
					es.colors.gold .. 	"Use:		110   \n" ..
					es.colors.gold .. 	"Fire:		1.5   \n" ..
					es.colors.gold .. 	"Water:		-1   \n" ..
					es.colors.gold .. 	"Radiation:		0.5   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for swimming in lava. ",
										]]
		inventory_image = "3d_armor_inv_leggings_ruby.png",
		groups = {armor_legs=1, armor_heal=12, armor_use=110, armor_fire=1.5, armor_water=-1, armor_radiation = 0.5},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_ruby", {
		--description = "Ruby Boots -= HP7; He12; Us110; Fi1.5; Wa-1; Ra0.5; Ju0.5; Sp2.9 =-",
		--[[
				description = 
					es.colors.green .. 	"Ruby Boots \n" ..
					es.colors.gold .. 	"Level:		7   \n" ..
					es.colors.gold .. 	"Heal:		12   \n" ..
					es.colors.gold .. 	"Use:		110   \n" ..
					es.colors.gold .. 	"Fire:		1.5   \n" ..
					es.colors.gold .. 	"Water:		-1   \n" ..
					es.colors.gold .. 	"Radiation:		0.5   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		2.9 \n" ..
					es.colors.grey .. 	"Physics Jump:		0.5 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for swimming in lava.  The fastest boots in town! ",
										]]
		inventory_image = "3d_armor_inv_boots_ruby.png",
		groups = {armor_feet=1, armor_heal=12, armor_use=110, physics_speed=2.9,
				physics_jump=0.5, armor_fire=1.5, armor_water=-1, armor_radiation = 0.5},
		armor_groups = {fleshy=7},
		damage_groups = {cracky=2, snappy=1, level=3},
	})

--aikerum
	armor:register_armor(":3d_armor:helmet_aikerum", {
		--description = "Aikerum Helmet -= HP17; He10; Us130; Fi0; Wa1; Ra0.2; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Aikerum Helmet \n" ..
					es.colors.gold .. 	"Level:		17   \n" ..
					es.colors.gold .. 	"Heal:		10   \n" ..
					es.colors.gold .. 	"Use:		130   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		1   \n" ..
					es.colors.gold .. 	"Radiation:		0.2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for breathing underwater. ",
										]]
		inventory_image = "3d_armor_inv_helmet_aikerum.png",
		groups = {armor_head=1, armor_heal=10, armor_use=130, armor_water=1, armor_radiation = 0.2},
		armor_groups = {fleshy=17},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_aikerum", {
		--description = "Aikerum Chestplate -= HP26; He10; Us130; Fi0; Wa1; Ra0.2; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Aikerum Chestplate \n" ..
					es.colors.gold .. 	"Level:		26   \n" ..
					es.colors.gold .. 	"Heal:		10   \n" ..
					es.colors.gold .. 	"Use:		130   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		1   \n" ..
					es.colors.gold .. 	"Radiation:		0.2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for breathing underwater. ",
										]]
		inventory_image = "3d_armor_inv_chestplate_aikerum.png",
		groups = {armor_torso=1, armor_heal=10, armor_use=130, armor_water=1, armor_radiation = 0.2},
		armor_groups = {fleshy=26},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:leggings_aikerum", {
		--description = "Aikerum Leggings -= HP26; He10; Us130; Fi0; Wa1; Ra0.2; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Aikerum Leggings \n" ..
					es.colors.gold .. 	"Level:		26   \n" ..
					es.colors.gold .. 	"Heal:		10   \n" ..
					es.colors.gold .. 	"Use:		130   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		1   \n" ..
					es.colors.gold .. 	"Radiation:		0.2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for breathing underwater. ",
										]]
		inventory_image = "3d_armor_inv_leggings_aikerum.png",
		groups = {armor_legs=1, armor_heal=10, armor_use=130, armor_water=1, armor_radiation = 0.2},
		armor_groups = {fleshy=26},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_aikerum", {
		--description = "Aikerum Boots -= HP17; He10; Us130; Fi0; Wa1; Ra0.2; Ju0.7; Sp1.1 =-",
		--[[
				description = 
					es.colors.green .. 	"Aikerum Boots \n" ..
					es.colors.gold .. 	"Level:		17   \n" ..
					es.colors.gold .. 	"Heal:		10   \n" ..
					es.colors.gold .. 	"Use:		130   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		1   \n" ..
					es.colors.gold .. 	"Radiation:		0.2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		1.1 \n" ..
					es.colors.grey .. 	"Physics Jump:		0.7 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for breathing underwater. ",
										]]
		inventory_image = "3d_armor_inv_boots_aikerum.png",
		groups = {armor_feet=1, armor_heal=10, armor_use=130, physics_speed=1.1,
				physics_jump=0.7, armor_water=1, armor_radiation = 0.2},
		armor_groups = {fleshy=17},
		damage_groups = {cracky=2, snappy=1, level=3},
	})

--infinium
	armor:register_armor(":3d_armor:helmet_infinium", {
		--description = "Infinium Helmet -= HP18; He15; Us80; Fi1; Wa-0.2; Ra1; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Infinium Helmet \n" ..
					es.colors.gold .. 	"Level:		18   \n" ..
					es.colors.gold .. 	"Heal:		15   \n" ..
					es.colors.gold .. 	"Use:		80   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		-0.2   \n" ..
					es.colors.gold .. 	"Radiation:		1   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for most things. ",
										]]
		inventory_image = "3d_armor_inv_helmet_infinium.png",
		groups = {armor_head=1, armor_heal=15, armor_use=80, armor_fire=1, armor_water=-0.2, armor_radiation = 1},
		armor_groups = {fleshy=18},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_infinium", {
		--description = "Infinium Chestplate -= HP27; He15; Us80; Fi1; Wa-0.2; Ra1; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Infinium Chestplate \n" ..
					es.colors.gold .. 	"Level:		27   \n" ..
					es.colors.gold .. 	"Heal:		15   \n" ..
					es.colors.gold .. 	"Use:		80   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		-0.2   \n" ..
					es.colors.gold .. 	"Radiation:		1   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for most things. ",
										]]
		inventory_image = "3d_armor_inv_chestplate_infinium.png",
		groups = {armor_torso=1, armor_heal=15, armor_use=80, armor_fire=1, armor_water=-0.2, armor_radiation = 1},
		armor_groups = {fleshy=27},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:leggings_infinium", {
		--description = "Infinium Leggings -= HP27; He15; Us80; Fi1; Wa-0.2; Ra1; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Infinium Leggings \n" ..
					es.colors.gold .. 	"Level:		27   \n" ..
					es.colors.gold .. 	"Heal:		15   \n" ..
					es.colors.gold .. 	"Use:		80   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		-0.2   \n" ..
					es.colors.gold .. 	"Radiation:		1   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for most things. ",
										]]
		inventory_image = "3d_armor_inv_leggings_infinium.png",
		groups = {armor_legs=1, armor_heal=15, armor_use=80, armor_fire=1, armor_water=-0.2, armor_radiation = 1},
		armor_groups = {fleshy=27},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_infinium", {
		--description = "Infinium Boots -= HP18; He15; Us80; Fi1; Wa-0.2; Ra1; Ju0.4; Sp0.8 =-",
		--[[
				description = 
					es.colors.green .. 	"Infinium Boots \n" ..
					es.colors.gold .. 	"Level:		18   \n" ..
					es.colors.gold .. 	"Heal:		15   \n" ..
					es.colors.gold .. 	"Use:		80   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		-0.2   \n" ..
					es.colors.gold .. 	"Radiation:		1   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.8 \n" ..
					es.colors.grey .. 	"Physics Jump:		0.4 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for most things.  Nice jump and speed balance. ",
										]]
		inventory_image = "3d_armor_inv_boots_infinium.png",
		groups = {armor_feet=1, armor_heal=15, armor_use=80, physics_speed=0.8,
				physics_jump=0.4, armor_fire=1, armor_water=-0.2, armor_radiation = 1},
		armor_groups = {fleshy=18},
		damage_groups = {cracky=2, snappy=1, level=3},
	})

--purpellium
	armor:register_armor(":3d_armor:helmet_purpellium", {
		--description = "Purpellium Helmet -= HP15; He22; Us120; Fi1; Wa-1; Ra1; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Purpellium Helmet \n" ..
					es.colors.gold .. 	"Level:		15   \n" ..
					es.colors.gold .. 	"Heal:		22   \n" ..
					es.colors.gold .. 	"Use:		120   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		-1   \n" ..
					es.colors.gold .. 	"Radiation:		1   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for healing. ",
										]]
		inventory_image = "3d_armor_inv_helmet_purpellium.png",
		groups = {armor_head=1, armor_heal=22, armor_use=120, armor_fire=1, armor_water=-1, armor_radiation = 1},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_purpellium", {
		--description = "Purpellium Chestplate -= HP20; He22; Us120; Fi1; Wa-1; Ra1; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Purpellium Chestplate \n" ..
					es.colors.gold .. 	"Level:		20   \n" ..
					es.colors.gold .. 	"Heal:		22   \n" ..
					es.colors.gold .. 	"Use:		120   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		-1   \n" ..
					es.colors.gold .. 	"Radiation:		1   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for healing. ",
										]]
		inventory_image = "3d_armor_inv_chestplate_purpellium.png",
		groups = {armor_torso=1, armor_heal=22, armor_use=120, armor_fire=1, armor_water=-1, armor_radiation = 1},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:leggings_purpellium", {
		--description = "Purpellium Leggings -= HP20; He22; Us120; Fi1; Wa-1; Ra1; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Purpellium Leggings \n" ..
					es.colors.gold .. 	"Level:		20   \n" ..
					es.colors.gold .. 	"Heal:		22   \n" ..
					es.colors.gold .. 	"Use:		120   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		-1   \n" ..
					es.colors.gold .. 	"Radiation:		1   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for healing. ",
										]]
		inventory_image = "3d_armor_inv_leggings_purpellium.png",
		groups = {armor_legs=1, armor_heal=22, armor_use=120, armor_fire=1, armor_water=-1, armor_radiation = 1},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_purpellium", {
		--description = "Purpellium Boots -= HP15; He22; Us120; Fi1; Wa-1; Ra1; Ju1.2; Sp0.5 =-",
		--[[
				description = 
					es.colors.green .. 	"Purpellium Boots \n" ..
					es.colors.gold .. 	"Level:		15   \n" ..
					es.colors.gold .. 	"Heal:		22   \n" ..
					es.colors.gold .. 	"Use:		120   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		-1   \n" ..
					es.colors.gold .. 	"Radiation:		1   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.3 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.5 \n" ..
					es.colors.grey .. 	"Physics Jump:		1.2 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for healing.  Bouncy Boots can simulate spacewalks.",
										]]
		inventory_image = "3d_armor_inv_boots_purpellium.png",
		groups = {armor_feet=1, armor_heal=22, armor_use=120, physics_jump=0.3, physics_speed=0.5,
				physics_jump=1.2, armor_fire=1, armor_water=-1, armor_radiation = 1},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=3},
	})

--unobtainium
	armor:register_armor(":3d_armor:helmet_unobtainium", {
		--description = "Unobtainium Helmet -= HP25; He40; Us70; Fi1; Wa1; Ra1.2; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Unontainium Helmet \n" ..
					es.colors.gold .. 	"Level:		25   \n" ..
					es.colors.gold .. 	"Heal:		40   \n" ..
					es.colors.gold .. 	"Use:		200   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		1   \n" ..
					es.colors.gold .. 	"Radiation:		1.2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for combat, swimming, \nhealing, and blocking radiation. \nNot long lasting.",
										]]
		inventory_image = "3d_armor_inv_helmet_unobtainium.png",
		groups = {armor_head=1, armor_heal=40, armor_use=200, armor_fire=1, armor_water=1, armor_radiation = 1.2},
		armor_groups = {fleshy=25},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_unobtainium", {
		--description = "Unobtainium Chestplate -= HP25; He40; Us70; Fi1; Wa1; Ra1.2; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Unontainium Chestplate \n" ..
					es.colors.gold .. 	"Level:		25   \n" ..
					es.colors.gold .. 	"Heal:		40   \n" ..
					es.colors.gold .. 	"Use:		200   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		1   \n" ..
					es.colors.gold .. 	"Radiation:		1.2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for combat, swimming, \nhealing, and blocking radiation. \nNot long lasting.",
										]]
		inventory_image = "3d_armor_inv_chestplate_unobtainium.png",
		groups = {armor_torso=1, armor_heal=40, armor_use=200, armor_fire=1, armor_water=1, armor_radiation = 1.2},
		armor_groups = {fleshy=25},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:leggings_unobtainium", {
		--description = "Unobtainium Leggings -= HP25; He40; Us70; Fi1; Wa1; Ra1.2; Ju0; Sp0 =-",
		--[[
				description = 
					es.colors.green .. 	"Unontainium Leggings \n" ..
					es.colors.gold .. 	"Level:		25   \n" ..
					es.colors.gold .. 	"Heal:		40   \n" ..
					es.colors.gold .. 	"Use:		200   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		1   \n" ..
					es.colors.gold .. 	"Radiation:		1.2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for combat, swimming, \nhealing, and blocking radiation. \nNot long lasting.",
										]]
		inventory_image = "3d_armor_inv_leggings_unobtainium.png",
		groups = {armor_legs=1, armor_heal=40, armor_use=200, armor_fire=1, armor_water=1, armor_radiation = 1.2},
		armor_groups = {fleshy=25},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_unobtainium", {
		--description = "Unobtainium Boots -= HP25; He40; Us70; Fi1; Wa1; Ra1.2; Ju1.1; Sp1.1 =-",
		--[[
				description = 
					es.colors.green .. 	"Unontainium Boots \n" ..
					es.colors.gold .. 	"Level:		25   \n" ..
					es.colors.gold .. 	"Heal:		40   \n" ..
					es.colors.gold .. 	"Use:		200   \n" ..
					es.colors.gold .. 	"Fire:		1   \n" ..
					es.colors.gold .. 	"Water:		1   \n" ..
					es.colors.gold .. 	"Radiation:		1.2   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		1.1 \n" ..
					es.colors.grey .. 	"Physics Jump:		1.1 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for combat, swimming, \nhealing, and blocking radiation. \nNot long lasting.",
										]]
		inventory_image = "3d_armor_inv_boots_unobtainium.png",
		groups = {armor_feet=1, armor_heal=40, armor_use=200, physics_speed=1.1,
				physics_jump=1.1, armor_fire=1, armor_water=1, armor_radiation = 1.2},
		armor_groups = {fleshy=25},
		damage_groups = {cracky=2, snappy=1, level=3},
	})	
	
--[[	
--Default 3-d armour overrides for es
	--Steel
	armor:register_armor(":3d_armor:helmet_steel", {
		--description = "Steel Helmet",
				description = 
					es.colors.green .. 	"Steel Helmet \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Heal:		0   \n" ..
					es.colors.gold .. 	"Use:		800   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.01 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.01 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Steel is real. ",
		inventory_image = "3d_armor_inv_helmet_steel.png",
		groups = {armor_head=1, armor_heal=0, armor_use=800,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor(":3d_armor:chestplate_steel", {
		--description = "Steel Chestplate",
				description = 
					es.colors.green .. 	"Steel Chestplate \n" ..
					es.colors.gold .. 	"Level:		15   \n" ..
					es.colors.gold .. 	"Heal:		0   \n" ..
					es.colors.gold .. 	"Use:		800   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.04 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.04 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Steel is real. ",
		inventory_image = "3d_armor_inv_chestplate_steel.png",
		groups = {armor_torso=1, armor_heal=0, armor_use=800,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor(":3d_armor:leggings_steel", {
		--description = "Steel Leggings",
				description = 
					es.colors.green .. 	"Steel Leggings \n" ..
					es.colors.gold .. 	"Level:		15   \n" ..
					es.colors.gold .. 	"Heal:		0   \n" ..
					es.colors.gold .. 	"Use:		800   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.03 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.03 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Steel is real. ",
		inventory_image = "3d_armor_inv_leggings_steel.png",
		groups = {armor_legs=1, armor_heal=0, armor_use=800,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor(":3d_armor:boots_steel", {
		--description = "Steel Boots",
				description = 
					es.colors.green .. 	"Steel Boots \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Heal:		0   \n" ..
					es.colors.gold .. 	"Use:		800   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.01 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.01 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Steel is real. ",
		inventory_image = "3d_armor_inv_boots_steel.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=800,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})

	--Bronze
	armor:register_armor(":3d_armor:helmet_bronze", {
		--description = "Bronze Helmet",
				description = 
					es.colors.green .. 	"Bronze Helmet \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Heal:		6   \n" ..
					es.colors.gold .. 	"Use:		400   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.01 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.01 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Beter than steel. ",
		inventory_image = "3d_armor_inv_helmet_bronze.png",
		groups = {armor_head=1, armor_heal=6, armor_use=400,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor(":3d_armor:chestplate_bronze", {
		--description = "Bronze Chestplate",
				description = 
					es.colors.green .. 	"Bronze Chestplate \n" ..
					es.colors.gold .. 	"Level:		15   \n" ..
					es.colors.gold .. 	"Heal:		6   \n" ..
					es.colors.gold .. 	"Use:		400   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.04 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.04 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Beter than steel. ",
		inventory_image = "3d_armor_inv_chestplate_bronze.png",
		groups = {armor_torso=1, armor_heal=6, armor_use=400,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor(":3d_armor:leggings_bronze", {
		--description = "Bronze Leggings",
				description = 
					es.colors.green .. 	"Bronze Leggings \n" ..
					es.colors.gold .. 	"Level:		15   \n" ..
					es.colors.gold .. 	"Heal:		6   \n" ..
					es.colors.gold .. 	"Use:		400   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.03 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.03 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Beter than steel. ",
		inventory_image = "3d_armor_inv_leggings_bronze.png",
		groups = {armor_legs=1, armor_heal=6, armor_use=400,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor(":3d_armor:boots_bronze", {
		--description = "Bronze Boots",
				description = 
					es.colors.green .. 	"Bronze Boots \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Heal:		6   \n" ..
					es.colors.gold .. 	"Use:		400   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.01 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.01 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Beter than steel. ",
		inventory_image = "3d_armor_inv_boots_bronze.png",
		groups = {armor_feet=1, armor_heal=6, armor_use=400,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})

	--Diamond
	armor:register_armor(":3d_armor:helmet_diamond", {
		--description = "Diamond Helmet",
				description = 
					es.colors.green .. 	"Diamond Helmet \n" ..
					es.colors.gold .. 	"Level:		15   \n" ..
					es.colors.gold .. 	"Heal:		12   \n" ..
					es.colors.gold .. 	"Use:		200   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for a quick fix. ",
		inventory_image = "3d_armor_inv_helmet_diamond.png",
		groups = {armor_head=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
	armor:register_armor(":3d_armor:chestplate_diamond", {
		--description = "Diamond Chestplate",
				description = 
					es.colors.green .. 	"Diamond Chestplate \n" ..
					es.colors.gold .. 	"Level:		20   \n" ..
					es.colors.gold .. 	"Heal:		12   \n" ..
					es.colors.gold .. 	"Use:		200   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for a quick fix. ",
		inventory_image = "3d_armor_inv_chestplate_diamond.png",
		groups = {armor_torso=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
	armor:register_armor(":3d_armor:leggings_diamond", {
		--description = "Diamond Leggings",
				description = 
					es.colors.green .. 	"Diamond Leggings \n" ..
					es.colors.gold .. 	"Level:		20   \n" ..
					es.colors.gold .. 	"Heal:		12   \n" ..
					es.colors.gold .. 	"Use:		200   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for a quick fix. ",
		inventory_image = "3d_armor_inv_leggings_diamond.png",
		groups = {armor_legs=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
	armor:register_armor(":3d_armor:boots_diamond", {
		--description = "Diamond Boots",
				description = 
					es.colors.green .. 	"Diamond Boots \n" ..
					es.colors.gold .. 	"Level:		15   \n" ..
					es.colors.gold .. 	"Heal:		12   \n" ..
					es.colors.gold .. 	"Use:		200   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0 \n" ..
					es.colors.grey .. 	"Physics Speed:		0 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for a quick fix. ",
		inventory_image = "3d_armor_inv_boots_diamond.png",
		groups = {armor_feet=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})

--Gold
	armor:register_armor(":3d_armor:helmet_gold", {
		--description = "Gold Helmet",
				description = 
					es.colors.green .. 	"Gold Helmet \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Heal:		6   \n" ..
					es.colors.gold .. 	"Use:		300   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.02 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.02 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for decoration, sluggish at best. ",
		inventory_image = "3d_armor_inv_helmet_gold.png",
		groups = {armor_head=1, armor_heal=6, armor_use=300,
			physics_speed=-0.02, physics_gravity=0.02},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
	armor:register_armor(":3d_armor:chestplate_gold", {
		--description = "Gold Chestplate",
				description = 
					es.colors.green .. 	"Gold Chestplate \n" ..
					es.colors.gold .. 	"Level:		15   \n" ..
					es.colors.gold .. 	"Heal:		6   \n" ..
					es.colors.gold .. 	"Use:		300   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.05 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.05 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for decoration, sluggish at best. ",
		inventory_image = "3d_armor_inv_chestplate_gold.png",
		groups = {armor_torso=1, armor_heal=6, armor_use=300,
			physics_speed=-0.05, physics_gravity=0.05},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
	armor:register_armor(":3d_armor:leggings_gold", {
		--description = "Gold Leggings",
				description = 
					es.colors.green .. 	"Gold Leggings \n" ..
					es.colors.gold .. 	"Level:		15   \n" ..
					es.colors.gold .. 	"Heal:		6   \n" ..
					es.colors.gold .. 	"Use:		300   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.04 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.04 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for decoration, sluggish at best. ",
		inventory_image = "3d_armor_inv_leggings_gold.png",
		groups = {armor_legs=1, armor_heal=6, armor_use=300,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
	armor:register_armor(":3d_armor:boots_gold", {
		--description = "Gold Boots",
				description = 
					es.colors.green .. 	"Gold Boots \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Heasurel:		6   \n" ..
					es.colors.gold .. 	"Use:		300   \n" ..
					es.colors.gold .. 	"Fire:		0   \n" ..
					es.colors.gold .. 	"Water:		0   \n" ..
					es.colors.gold .. 	"Radiation:		0   \n" ..
					es.colors.grey .. 	"Physics Gravity:		0.02 \n" ..
					es.colors.grey .. 	"Physics Speed:		0.02 \n" ..
					es.colors.grey .. 	"Physics Jump:		0 \n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for decoration, sluggish at best. ",
		inventory_image = "3d_armor_inv_boots_gold.png",
		groups = {armor_feet=1, armor_heal=6, armor_use=300,
			physics_speed=-0.02, physics_gravity=0.02},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
]]	

-- Register crafting recipes:

local craft_ingreds = {
	steel = "default:steel_ingot",
	bronze = "default:bronze_ingot",
	gold = "default:gold_ingot",
	diamond = "default:diamond",
	mese_green = "es:mese_green_crystal",
	emerald = "es:emerald_ingot",
	ruby = "es:ruby_ingot",
	aikerum = "es:aikerum_ingot",
	infinium = "es:infinium_ingot",
	purpellium = "es:purpellium_ingot",
	unobtainium = "es:unobtainium_ingot",
}

for k, v in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "3d_armor:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "3d_armor:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
end

if minetest.setting_getbool("log_mods") then
	minetest.log("action", "ES: [3d_armor] loaded.")
end


