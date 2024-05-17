--Weapons!

-- Light Steel Stuffs:
minetest.register_tool("mobs:sword_lightsteel_blue", {
	description = "Blue LightSteel Sword",
	inventory_image = "sword_lightsteel_blue.png",
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.75, [2]=2.75, [3]=2.85}, uses=10, maxlevel=1},
			snappy={times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2.50},
	},
})

minetest.register_tool("mobs:sword_lightsteel_red", {
	description = "Red LightSteel Sword",
	inventory_image = "sword_lightsteel_red.png",
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.35, [2]=2.10, [3]=2.85}, uses=10, maxlevel=1},
			snappy={times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2.50},
	},
})



minetest.register_craft({
	output = 'mobs:sword_lightsteel_red',
	type = "shapeless",
	recipe =
		{'es:ruby_dust', 'default:sword_bronze' },
})

minetest.register_craft({
	output = 'mobs:sword_lightsteel_blue',
	type = "shapeless",
	recipe =
		{'es:aikerum_dust', 'default:sword_bronze' },
})