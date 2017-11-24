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


--SWORDS
minetest.register_tool("es:sword_emerald", {
	description = "Extreme Survival Emerald Sword",
	inventory_image = "es_tool_emeraldsword.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.10, [2]=0.30, [3]=0.10}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	}
})

minetest.register_tool("es:sword_ruby", {
	description = "Extreme Survival Ruby Sword",
	inventory_image = "es_tool_rubysword.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=3,
		groupcaps={
			snappy={times={[1]=0.90, [2]=0.30, [3]=0.10}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	}
})

minetest.register_tool("es:sword_aikerum", {
	description = "Extreme Survival Aikerum Sword",
	inventory_image = "es_tool_aikerumsword.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=4,
		groupcaps={
			snappy={times={[1]=0.50, [2]=0.30, [3]=0.10}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=30},
	}
})

minetest.register_tool("es:sword_purpellium", {
	description = "Extreme Survival Purpellium Sword",
	inventory_image = "es_tool_purpelliumsword.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=4,
		groupcaps={
			snappy={times={[1]=1.10, [2]=0.30, [3]=0.10}, uses=1500, maxlevel=3},
		},
		damage_groups = {fleshy=23},
	}
})





--PICKS
minetest.register_tool("es:pick_emerald", {
	description = "Extreme Survival Emerald Pickaxe",
	inventory_image = "es_tool_emeraldpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.10, [2]=1.30, [3]=0.70}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=11},
	},
})

minetest.register_tool("es:pick_ruby", {
	description = "Extreme Survival Ruby Pickaxe",
	inventory_image = "es_tool_rubypick.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.00, [2]=1.00, [3]=0.50}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=17},
	},
})

minetest.register_tool("es:pick_aikerum", {
	description = "Extreme Survival Aikerum Pickaxe",
	inventory_image = "es_tool_aikerumpick.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=4,
		groupcaps={
			cracky = {times={[1]=1.4, [2]=1.10, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=27},
	},
})

minetest.register_tool("es:pick_purpellium", {
	description = "Extreme Survival Purpellium Pickaxe",
	inventory_image = "es_tool_purpelliumpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=4,
		groupcaps={
			cracky = {times={[1]=2.10, [2]=1.30, [3]=0.70}, uses=1500, maxlevel=3},
		},
		damage_groups = {fleshy=18},
	},
})


--AXES
minetest.register_tool("es:axe_emerald", {
	description = "Extreme Survival Emerald Axe",
	inventory_image = "es_tool_emeraldaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=2,
		groupcaps={
			choppy = {times={[2]=3.00, [3]=1.60}, uses=50, maxlevel=2},
		},
		damage_groups = {fleshy=12},
	},
})
minetest.register_tool("es:axe_ruby", {
	description = "Extreme Survival Ruby Axe",
	inventory_image = "es_tool_rubyaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=3.00, [2]=2.00, [3]=1.30}, uses=60, maxlevel=2},
		},
		damage_groups = {fleshy=18},
	},
})
minetest.register_tool("es:axe_aikerum", {
	description = "Extreme Survival Aikerum Axe",
	inventory_image = "es_tool_aikerumaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=4,
		groupcaps={
			choppy = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=24},
	},
})


--SHOVELS
minetest.register_tool("es:shovel_emerald", {
	description = "Extreme Survival Emerald Shovel",
	inventory_image = "es_tool_emeraldshovel.png",
	wield_image = "es_tool_emeraldshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=2,
		groupcaps={
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.60}, uses=50, maxlevel=2},
		},
		damage_groups = {fleshy=12},
	},
})
minetest.register_tool("es:shovel_ruby", {
	description = "Extreme Survival Ruby Shovel",
	inventory_image = "es_tool_rubyshovel.png",
	wield_image = "es_tool_rubyshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=60, maxlevel=2},
		},
		damage_groups = {fleshy=23},
	},
})
minetest.register_tool("es:shovel_aikerum", {
	description = "Extreme Survival Aikerum Shovel",
	inventory_image = "es_tool_aikerumshovel.png",
	wield_image = "es_tool_aikerumshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=4,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=24},
	},
})





--[[
--ARMOR_MOD_NAME = minetest.get_current_modname()
--dofile(minetest.get_modpath(ARMOR_MOD_NAME).."/armor.lua")
local use_3d_armor = minetest.get_modpath("3d_armor")

--if use_3d_armor then
--ARMOR
minetest.register_tool("es:helmet_emerald", {
	description = "Emerald Helmet",
	inventory_image = "3d_armor_inv_helmet_emerald.png",
	groups = {armor_head = 15, armor_heal = 12, armor_use = 100},
	wear = 0,
})

minetest.register_tool("es:helmet_infinium", {
	description = "Infinium Helmet",
	inventory_image = "3d_armor_inv_helmet_infinium.png",
	groups = {armor_head = 20, armor_heal = 15, armor_use = 150},
	wear = 0,
})

minetest.register_tool("es:chestplate_emerald", {
	description = "Emerald Chestplate",
	inventory_image = "3d_armor_inv_chestplate_emerald.png",
	groups = {armor_torso = 20, armor_heal = 12, armor_use = 100},
	wear = 0,
})

minetest.register_tool("es:chestplate_infinium", {
	description = "Infinium Chestplate",
	inventory_image = "3d_armor_inv_chestplate_infinium.png",
	groups = {armor_torso = 50, armor_heal = 15, armor_use = 150},
	wear = 0,
})

minetest.register_tool("es:leggings_emerald", {
	description = "Emerald Leggings",
	inventory_image = "3d_armor_inv_leggings_emerald.png",
	groups = {armor_legs = 20, armor_heal = 12, armor_use = 100},
	wear = 0,
})

minetest.register_tool("es:leggings_infinium", {
	description = "Infinium Leggings",
	inventory_image = "3d_armor_inv_leggings_infinium.png",
	groups = {armor_legs = 50, armor_heal = 15, armor_use = 150},
	wear = 0,
})

minetest.register_tool("es:boots_emerald", {
	description = "Emerald Boots",
	inventory_image = "3d_armor_inv_boots_emerald.png",
	groups = {armor_feet = 15, armor_heal = 12, armor_use = 100},
	wear = 0,
})

minetest.register_tool("es:boots_infinium", {
	description = "Infinium Boots",
	inventory_image = "3d_armor_inv_boots_infinium.png",
	groups = {armor_feet = 30, armor_heal = 15, armor_use = 150},
	wear = 0,
})

-- Register crafting recipes:

local craft_ingreds = {

	infinium = "es:infinium_ingot",
	emerald = "es:emerald_crystal",
}

--end
for k, v in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "es:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "es:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "es:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "es:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
--end
end]]

if minetest.get_modpath("toolranks") then
--emerald
  minetest.override_item("es:pick_emerald", {
    original_description = "Extreme Survival Emerald Pickaxe",
    description = toolranks.create_description("Extreme Survival Emerald Pickaxe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:axe_emerald", {
    original_description = "Extreme Survival Emerald Axe",
    description = toolranks.create_description("Extreme Survival Emerald Axe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:shovel_emerald", {
    original_description = "Extreme Survival Emerald Shovel",
    description = toolranks.create_description("Extreme Survival Emerald Shovel", 0, 1),
    after_use = toolranks.new_afteruse})
--ruby
  minetest.override_item("es:pick_ruby", {
    original_description = "Extreme Survival Ruby Pickaxe",
    description = toolranks.create_description("Extreme Survival Ruby Pickaxe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:axe_ruby", {
    original_description = "Extreme Survival Ruby Axe",
    description = toolranks.create_description("Extreme Survival Ruby Axe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:shovel_ruby", {
    original_description = "Extreme Survival Ruby Shovel",
    description = toolranks.create_description("Extreme Survival Ruby Shovel", 0, 1),
    after_use = toolranks.new_afteruse})
--aikerum	
  minetest.override_item("es:pick_aikerum", {
    original_description = "Extreme Survival Aikerum Pickaxe",
    description = toolranks.create_description("Extreme Survival Aikerum Shovel Pickaxe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:axe_aikerum", {
    original_description = "Extreme Survival Aikerum Axe",
    description = toolranks.create_description("Extreme Survival Aikerum Shovel Axe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:shovel_aikerum", {
    original_description = "Extreme Survival Aikerum Shovel",
    description = toolranks.create_description("Extreme Survival Aikerum Shovel Shovel", 0, 1),
    after_use = toolranks.new_afteruse})
--purpellium	
  minetest.override_item("es:pick_purpellium", {
    original_description = "Extreme Survival Purpellium Pickaxe",
    description = toolranks.create_description("Extreme Survival Purpellium Pickaxe", 0, 1),
    after_use = toolranks.new_afteruse})
--[[
  minetest.override_item("es:axe_purpellium", {
    original_description = "Extreme Survival Purpellium Axe",
    description = toolranks.create_description("Extreme Survival Purpellium Axe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:shovel_purpellium", {
    original_description = "Extreme Survival Purpellium Shovel",
    description = toolranks.create_description("Extreme Survival Purpellium Shovel", 0, 1),
    after_use = toolranks.new_afteruse})
	]]
end
