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


--es_tool_emeraldsword
--es_tool_rubysword
--es_tool_aikerumsword

--es_tool_emeraldpick
--es_tool_rubypick
--es_tool_aikerumpick







--SWORDS
minetest.register_tool("es:sword_emerald", {
	description = "Extreme Survival Emerald Sword",
	--inventory_image = "default_tool_diamondsword.png^[colorize:#7CFC00:177",
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
	--inventory_image = "default_tool_diamondsword.png^[colorize:#FF0000:177",
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
	--inventory_image = "default_tool_diamondsword.png^[colorize:#0000CD:177",
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


--PICKS
minetest.register_tool("es:pick_emerald", {
	description = "Extreme Survival Emerald Pickaxe",
	inventory_image = "default_tool_diamondpick.png^[colorize:#7CFC00:177",
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
	inventory_image = "default_tool_diamondpick.png^[colorize:#FF0000:177",
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
	inventory_image = "default_tool_diamondpick.png^[colorize:#0000CD:177",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=4,
		groupcaps={
			cracky = {times={[1]=1.4, [2]=1.10, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=27},
	},
})


--AXES
minetest.register_tool("es:axe_emerald", {
	description = "Extreme Survival Emerald Axe",
	inventory_image = "default_tool_diamondaxe.png^[colorize:#7CFC00:177",
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
	inventory_image = "default_tool_diamondaxe.png^[colorize:#FF0000:177",
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
	inventory_image = "default_tool_diamondaxe.png^[colorize:#0000CD:177",
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
	inventory_image = "default_tool_diamondaxe.png^[colorize:#7CFC00:177",
	--wield_image = "es_tool_emeraldshovel.png^[transformR90",
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
	inventory_image = "default_tool_diamondshovel.png^[colorize:#FF0000:177",
	--wield_image = "es_tool_rubyshovel.png^[transformR90",
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
	inventory_image = "default_tool_diamondshovel.png^[colorize:#0000CD:177",
	--wield_image = "es_tool_aikerumshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=4,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=24},
	},
})
