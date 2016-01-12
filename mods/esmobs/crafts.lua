--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL

-- generic meat
minetest.register_craftitem("esmobs:rat", {
	description = "Raw Rat Meat",
	inventory_image = "mobs_rat_inventory.png",
})

minetest.register_craft({
	type = "cooking",
	output = "esmobs:meat",
	recipe = "esmobs:rat",
	cooktime = 1,
})

minetest.register_craftitem("esmobs:meat_raw", {
	description = "Raw Meat",
	inventory_image = "mobs_meat_raw.png",
})

minetest.register_craftitem("esmobs:meat", {
	description = "Meat",
	inventory_image = "mobs_meat.png",
	on_use = minetest.item_eat(8),
})

minetest.register_craft({
	type = "cooking",
	output = "esmobs:meat",
	recipe = "esmobs:meat_raw",
	cooktime = 5,
})

minetest.register_craftitem("esmobs:rotten_flesh", {
	description = "Rotten Flesh",
	inventory_image = "mobs_rotten_flesh.png",
	on_use = minetest.item_eat(4),
})

-- beef
minetest.register_craftitem("esmobs:beef_raw", {
	description = "Raw Beef",
	inventory_image = "beef_raw.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("esmobs:beef_cooked", {
	description = "Steak",
	inventory_image = "beef_cooked.png",
	on_use = minetest.item_eat(8),
})

minetest.register_craft({
	type = "cooking",
	output = "esmobs:beef_cooked",
	recipe = "esmobs:beef_raw",
	cooktime = 5,
})

-- pork
minetest.register_craftitem("esmobs:porkchop_raw", {
	description = "Raw Porkchop",
	inventory_image = "porkchop_raw.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("esmobs:porkchop_cooked", {
	description = "Cooked Porkchop",
	inventory_image = "porkchop_cooked.png",
	on_use = minetest.item_eat(8),
})

minetest.register_craft({
	type = "cooking",
	output = "esmobs:porkchop_cooked",
	recipe = "esmobs:porkchop_raw",
	cooktime = 5,
})

--mutton
minetest.register_craftitem("esmobs:mutton_raw", {
	description = "Raw Mutton",
	inventory_image = "mutton_raw.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("esmobs:mutton_cooked", {
	description = "Cooked Mutton",
	inventory_image = "mutton_cooked.png",
	on_use = minetest.item_eat(6),
})

minetest.register_craft({
	type = "cooking",
	output = "esmobs:mutton_cooked",
	recipe = "esmobs:mutton_raw",
	cooktime = 5,
})

-- chicken
minetest.register_craftitem("esmobs:chicken_raw", {
	description = "Raw Chicken",
	inventory_image = "chicken_raw.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("esmobs:chicken_cooked", {
	description = "Cooked Chicken",
	inventory_image = "chicken_cooked.png",
	on_use = minetest.item_eat(6),
})

minetest.register_craft({
	type = "cooking",
	output = "esmobs:chicken_cooked",
	recipe = "esmobs:chicken_raw",
	cooktime = 5,
})

-- egg
minetest.register_node("esmobs:egg", {
	description = "Chicken Egg",
	tiles = {"mobs_chicken_egg.png"},
	inventory_image  = "mobs_chicken_egg.png",
	visual_scale = 0.7,
	drawtype = "plantlike",
	wield_image = "mobs_chicken_egg.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {snappy=2, dig_immediate=3},
	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="esmobs:egg", param2=1})
		end
	end
})

-- fried egg
minetest.register_craftitem("esmobs:chicken_egg_fried", {
description = "Fried Egg",
	inventory_image = "mobs_chicken_egg_fried.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craft({
	type  =  "cooking",
	recipe  = "esmobs:egg",
	output = "esmobs:chicken_egg_fried",
})

-- leather, feathers, saddle, etc.
minetest.register_craftitem("esmobs:leather", {
	description = "Leather",
	inventory_image = "mobs_leather.png",
})

minetest.register_craftitem("esmobs:feather", {
	description = "Feather",
	inventory_image = "mobs_feather.png",
})

minetest.register_craftitem("esmobs:saddle", {
	description = "Saddle",
	inventory_image = "saddle.png",
})

minetest.register_tool("esmobs:carrotstick", {
	description = "Carrot on a Stick",
	inventory_image = "carrot_on_a_stick.png",
	stack_max = 1,
})

minetest.register_craft({
	output = "esmobs:saddle",
	recipe = {
		{"esmobs:leather", "esmobs:leather", "esmobs:leather"},
		{"farming:string", "", "farming:string"},
	{"default:steel_ingot", "", "default:steel_ingot"}
	},
})

minetest.register_craft({
	--type = "shapeless",
	output = "esmobs:carrotstick",
	recipe = {
		{"default:stick", "default:stick" , "default:apple"},
		{"default:stick", "farming:string" , "farming:seed_wheat"},
		{"farming:string", "", "farming:string"}
		},
		
})

minetest.register_craft({
	type = "shapeless",
	output = "esmobs:carrotstick",
	recipe = {"fishing:pole_wood", "farming:carrot"},
})




-- cobweb
minetest.register_node("esmobs:cobweb", {
	description = "Cobweb",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"mobs_cobweb.png"},
	inventory_image = "mobs_cobweb.png",
	paramtype = "light",
	sunlight_propagates = true,
	liquid_viscosity = 11,
	liquidtype = "source",
	liquid_alternative_flowing = "esmobs:cobweb",
	liquid_alternative_source = "esmobs:cobweb",
	liquid_renewable = false,
	liquid_range = 0,
	walkable = false,
	groups = {snappy=1,liquid=3},
	drop = "farming:cotton",
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output = "esmobs:cobweb",
	recipe = {
		{"farming:string", "", "farming:string"},
		{"", "farming:string", ""},
		{"farming:string", "", "farming:string"},
	}
})

--shears (right click sheep to shear wool)
minetest.register_tool("esmobs:shears", {
	description = "Steel Shears (right-click sheep to shear)",
	inventory_image = "mobs_shears.png",
})

minetest.register_craft({
	output = 'esmobs:shears',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'', 'group:stick', 'default:steel_ingot'},
	}
})