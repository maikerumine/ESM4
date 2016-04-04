--esmobs v1.3
--maikerumine
--made for Extreme Survival game
--License for code WTFPL


-- nametag
minetest.register_craftitem("esmobs:nametag", {
	description = "Nametag",
	inventory_image = "mobs_nametag.png",
})

core.register_craft({
	type = "shapeless",
	output = "esmobs:nametag",
	recipe = {"default:paper", "dye:black", "farming:string"},
})

-- leather
minetest.register_craftitem("esmobs:leather", {
	description = "Leather",
	inventory_image = "mobs_leather.png",
})

-- raw meat
minetest.register_craftitem("esmobs:meat_raw", {
	description = "Raw Meat",
	inventory_image = "mobs_meat_raw.png",
	on_use = minetest.item_eat(3),
})

-- cooked meat
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

-- raw porkchop
minetest.register_craftitem("esmobs:pork_raw", {
	description = "Raw Porkchop",
	inventory_image = "mobs_pork_raw.png",
	on_use = minetest.item_eat(4),
})

-- cooked porkchop
minetest.register_craftitem("esmobs:pork_cooked", {
	description = "Cooked Porkchop",
	inventory_image = "mobs_pork_cooked.png",
	on_use = minetest.item_eat(8),
})

minetest.register_craft({
	type = "cooking",
	output = "esmobs:pork_cooked",
	recipe = "esmobs:pork_raw",
	cooktime = 5,
})

-- cooked rat, yummy!
minetest.register_craftitem("esmobs:rat_cooked", {
	description = "Cooked Rat",
	inventory_image = "mobs_cooked_rat.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craft({
	type = "cooking",
	output = "esmobs:rat_cooked",
	recipe = "esmobs:rat",
	cooktime = 5,
})


-- egg entity
--moved to throwing
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
	groups = {snappy = 2, dig_immediate = 3},
	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name = "esmobs:egg", param2 = 1})
		end
	end,
	on_use = mobs_shoot_egg
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

-- raw chicken
minetest.register_craftitem("esmobs:chicken_raw", {
description = "Raw Chicken",
	inventory_image = "mobs_chicken_raw.png",
	on_use = minetest.item_eat(2),
})

-- cooked chicken
minetest.register_craftitem("esmobs:chicken_cooked", {
description = "Cooked Chicken",
	inventory_image = "mobs_chicken_cooked.png",
	on_use = minetest.item_eat(6),
})

minetest.register_craft({
	type  =  "cooking",
	recipe  = "esmobs:chicken_raw",
	output = "esmobs:chicken_cooked",
})


-- golden lasso
minetest.register_tool("esmobs:magic_lasso", {
	description = "Magic Lasso (right-click animal to put in inventory)",
	inventory_image = "mobs_magic_lasso.png",
})

minetest.register_craft({
	output = "esmobs:magic_lasso",
	recipe = {
		{"farming:string", "default:gold_lump", "farming:string"},
		{"default:gold_lump", "default:diamondblock", "default:gold_lump"},
		{"farming:string", "default:gold_lump", "farming:string"},
	}
})

-- net
minetest.register_tool("esmobs:net", {
	description = "Net (right-click animal to put in inventory)",
	inventory_image = "mobs_net.png",
})

minetest.register_craft({
	output = "esmobs:net",
	recipe = {
		{"default:stick", "", "default:stick"},
		{"default:stick", "", "default:stick"},
		{"farming:string", "default:stick", "farming:string"},
	}
})



-- shears (right click to shear animal)
minetest.register_tool("esmobs:shears", {
	description = "Steel Shears (right-click to shear)",
	inventory_image = "mobs_shears.png",
})

minetest.register_craft({
	output = 'esmobs:shears',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'', 'group:stick', 'default:steel_ingot'},
	}
})

-- leather, feathers, saddle, etc.
minetest.register_craftitem("esmobs:feather", {
	description = "Feather",
	inventory_image = "mobs_feather.png",
})

minetest.register_craftitem("esmobs:saddle", {
	description = "Saddle",
	inventory_image = "saddle.png",
})


minetest.register_craft({
	output = "esmobs:saddle",
	recipe = {
		{"esmobs:leather", "esmobs:leather", "esmobs:leather"},
		{"farming:string", "", "farming:string"},
	{"default:steel_ingot", "", "default:steel_ingot"}
	},
})

-- bucket of milk
minetest.register_craftitem("esmobs:bucket_milk", {
	description = "Bucket of Milk",
	inventory_image = "mobs_bucket_milk.png",
	stack_max = 1,
	on_use = minetest.item_eat(8, 'bucket:bucket_empty'),
})

-- cheese wedge
minetest.register_craftitem("esmobs:cheese", {
	description = "Cheese",
	inventory_image = "mobs_cheese.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craft({
	type = "cooking",
	output = "esmobs:cheese",
	recipe = "esmobs:bucket_milk",
	cooktime = 5,
	replacements = {{ "esmobs:bucket_milk", "bucket:bucket_empty"}}
})

-- cheese block
minetest.register_node("esmobs:cheeseblock", {
	description = "Cheese Block",
	tiles = {"mobs_cheeseblock.png"},
	is_ground_content = false,
	groups = {crumbly = 3},
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_craft({
	output = "esmobs:cheeseblock",
	recipe = {
		{'esmobs:cheese', 'esmobs:cheese', 'esmobs:cheese'},
		{'esmobs:cheese', 'esmobs:cheese', 'esmobs:cheese'},
		{'esmobs:cheese', 'esmobs:cheese', 'esmobs:cheese'},
	}
})

minetest.register_craft({
	output = "esmobs:cheese 9",
	recipe = {
		{'esmobs:cheeseblock'},
	}
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
