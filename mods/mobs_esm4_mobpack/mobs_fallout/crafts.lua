--mobs_fallout v0.0.1
--maikerumine
--made for Extreme Survival game

--dofile(minetest.get_modpath("mobs_fallout").."/api.lua")


--crafts-tenplus1

-- raw meat
minetest.register_craftitem("mobs_fallout:meat_raw", {
	description = "Radiated Raw Meat",
	inventory_image = "mobs_fallout_meat_raw.png",
	on_use = minetest.item_eat(3),
})

-- cooked meat
minetest.register_craftitem("mobs_fallout:meat", {
	description = "Cooked Radiated Meat",
	inventory_image = "mobs_fallout_meat.png",
	on_use = minetest.item_eat(6),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs_fallout:meat",
	recipe = "mobs_fallout:meat_raw",
	cooktime = 5,
})




