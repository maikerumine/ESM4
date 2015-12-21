
--tool

local another_charcoal = {}
local function add_tool(name, func)
	another_charcoal[name] = func
end

minetest.register_on_dignode(function(_, oldnode, digger)
	if digger == nil then
		return
	end
	local func = another_charcoal[digger:get_wielded_item():get_name()]
	if func
	and oldnode.name ~= "air" then
		func(digger, oldnode)
	end
end)

minetest.register_tool("another_charcoal:steel_splitting_axe", {
	description = "Steel Splitting Axe",
	inventory_image = "another_charcoal_steel_splitting_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.00, [2]=2.00, [3]=1.30}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})

add_tool("another_charcoal:steel_splitting_axe", function(digger, node)
	local nam = node.name
	local items = minetest.get_node_drops(nam)
	local inv = digger:get_inventory()
	local drops = minetest.get_node_drops(nam)
	if node.group == tree then do
		inv:add_item("main", "another_charcoal:split_wood 3")
		local namn = node.name
		local drops = minetest.get_node_drops(namn)
			for _,item in ipairs(drops) do
				inv:remove_item("main", item)
			end
		end
	end
end)


--craftitem

minetest.register_craftitem("another_charcoal:charcoal_lump", {
	description = "Charcoal Lump",
	inventory_image = "another_charcoal_charcoal_lump.png",
	groups = {coal=1},
})

minetest.register_craftitem("another_charcoal:split_wood", {
	description = "Split Wood",
	inventory_image = "another_charcoal_split_wood.png",
})

minetest.register_craftitem("another_charcoal:ash", {
	description = "Ash",
	inventory_image = "another_charcoal_ash.png",
})

--node

minetest.register_node("another_charcoal:burning_wood_pile", {
	description = "Burning Wood Pile",
	tiles = {"another_charcoal_wood_pile2.png^another_charcoal_air_dry.png^another_charcoal_burning_wood.png", 			"another_charcoal_wood_pile2.png^another_charcoal_air_dry.png^another_charcoal_burning_wood.png", 			"another_charcoal_wood_pile1.png^another_charcoal_air_dry.png^another_charcoal_burning_wood.png",
		"another_charcoal_wood_pile1.png^another_charcoal_air_dry.png^another_charcoal_burning_wood.png", 			"another_charcoal_wood_pile.png^another_charcoal_air_dry.png^another_charcoal_burning_wood.png", 			"another_charcoal_wood_pile.png^another_charcoal_air_dry.png^another_charcoal_burning_wood.png"},
	drop = "another_charcoal:air_dry_wood_pile",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("another_charcoal:air_dry_wood_pile", {
	description = "Air-dry Wood Pile",
	tiles = {"another_charcoal_wood_pile2.png^another_charcoal_air_dry.png", 			"another_charcoal_wood_pile2.png^another_charcoal_air_dry.png", 		"another_charcoal_wood_pile1.png^another_charcoal_air_dry.png",
		"another_charcoal_wood_pile1.png^another_charcoal_air_dry.png", 		"another_charcoal_wood_pile.png^another_charcoal_air_dry.png", 			"another_charcoal_wood_pile.png^another_charcoal_air_dry.png"},
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("another_charcoal:wood_pile", {
	description = "Wood Pile",
	tiles = {"another_charcoal_wood_pile2.png", "another_charcoal_wood_pile2.png", "another_charcoal_wood_pile1.png",
		"another_charcoal_wood_pile1.png", "another_charcoal_wood_pile.png", "another_charcoal_wood_pile.png"},
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("another_charcoal:scorched_wood_pile", {
	description = "Scorched Wood Pile",
	tiles = {"another_charcoal_wood_pile2scorched.png", "another_charcoal_wood_pile2scorched.png", 			"another_charcoal_wood_pile1scorched.png",
		"another_charcoal_wood_pile1scorched.png", "another_charcoal_wood_pilescorched.png", 			"another_charcoal_wood_pilescorched.png"},
	drop = {
		max_items = 9,
		items = {
			{items = {"another_charcoal:charcoal_lump 6"}},
			{items = {"another_charcoal:ash 3"}}
		}
	},
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {crumbly = 2},
	sounds = default.node_sound_sand_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("another_charcoal:ash_pile", {
	description = "Ash Pile",
	tiles = {"another_charcoal_wood_pile2scorched.png^another_charcoal_wood_pile_ash.png", 			"another_charcoal_wood_pile2scorched.png^another_charcoal_wood_pile_ash.png", 			"another_charcoal_wood_pile1scorched.png^another_charcoal_wood_pile_ash.png",
		"another_charcoal_wood_pile1scorched.png^another_charcoal_wood_pile_ash.png", 			"another_charcoal_wood_pilescorched.png^another_charcoal_wood_pile_ash.png", 			"another_charcoal_wood_pilescorched.png^another_charcoal_wood_pile_ash.png"},
	drop = "another_charcoal:ash 9",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {crumbly = 2},
	sounds = default.node_sound_sand_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("another_charcoal:charcoalblock", {
	description = "Charcoal Block",
	tiles = {"another_charcoal_charcoalblock.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("another_charcoal:ashblock", {
	description = "Ash Block",
	tiles = {"another_charcoal_ashblock.png"},
	is_ground_content = false,
	groups = {crumbly = 2, falling_node = 1},
	sounds = default.node_sound_sand_defaults(),
})


--crafting

minetest.register_craft({
	output = 'another_charcoal:charcoalblock',
	recipe = {
		{'another_charcoal:charcoal_lump', 'another_charcoal:charcoal_lump', 'another_charcoal:charcoal_lump'},
		{'another_charcoal:charcoal_lump', 'another_charcoal:charcoal_lump', 'another_charcoal:charcoal_lump'},
		{'another_charcoal:charcoal_lump', 'another_charcoal:charcoal_lump', 'another_charcoal:charcoal_lump'},
	}
})

minetest.register_craft({
	output = 'another_charcoal:charcoal_lump 9',
	recipe = {
		{'another_charcoal:charcoalblock'},
	}
})

minetest.register_craft({
	output = 'another_charcoal:ashblock',
	recipe = {
		{'another_charcoal:ash', 'another_charcoal:ash', 'another_charcoal:ash'},
		{'another_charcoal:ash', 'another_charcoal:ash', 'another_charcoal:ash'},
		{'another_charcoal:ash', 'another_charcoal:ash', 'another_charcoal:ash'},
	}
})

minetest.register_craft({
	output = 'another_charcoal:ash 9',
	recipe = {
		{'another_charcoal:ashblock'},
	}
})

minetest.register_craft({
	output = 'another_charcoal:wood_pile',
	recipe = {
		{'another_charcoal:split_wood', 'another_charcoal:split_wood', 'another_charcoal:split_wood'},
		{'another_charcoal:split_wood', 'another_charcoal:split_wood', 'another_charcoal:split_wood'},
		{'another_charcoal:split_wood', 'another_charcoal:split_wood', 'another_charcoal:split_wood'},
	}
})

minetest.register_craft({
	output = 'another_charcoal:split_wood 9',
	recipe = {
		{'another_charcoal:wood_pile'},
	}
})

minetest.register_craft({
	output = 'another_charcoal:steel_splitting_axe',
	recipe = {
		{'', 'default:steel_ingot', 'default:steel_ingot'},
		{'', 'group:stick', ''},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'default:torch 4',
	recipe = {
		{'another_charcoal:charcoal_lump'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = "tnt:gunpowder",
	type = "shapeless",
	recipe = {"another_charcoal:charcoal_lump", "default:gravel"}
})


minetest.register_craft({
	type = "fuel",
	recipe = "another_charcoal:split_wood",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "another_charcoal:wood_pile",
	burntime = 90,
})

minetest.register_craft({
	type = "fuel",
	recipe = "another_charcoal:air_dry_wood_pile",
	burntime = 135,
})

minetest.register_craft({
	type = "fuel",
	recipe = "another_charcoal:charcoal_lump",
	burntime = 33,
})

minetest.register_craft({
	type = "fuel",
	recipe = "another_charcoal:charcoalblock",
	burntime = 297,
})


--abm

minetest.register_abm({
	nodenames = {"another_charcoal:wood_pile"},
	neighbors = {"air"},
	interval = 100.0,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "another_charcoal:air_dry_wood_pile"})
	end,
})


minetest.register_abm({
	nodenames = {"another_charcoal:air_dry_wood_pile"},
	neighbors = {"another_charcoal:burning_wood_pile", "fire:basic_flame","default:torch",  "default:lava_source", 		"default:lava_flowing"},
	interval = 2.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "another_charcoal:burning_wood_pile"})
	end,
})


minetest.register_abm({
	nodenames = {"another_charcoal:burning_wood_pile"},
	neighbors = {"air"},
	interval = 10.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "another_charcoal:ash_pile"})
	end,
})

minetest.register_abm({
	nodenames = {"another_charcoal:burning_wood_pile"},
	interval = 100.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "another_charcoal:scorched_wood_pile"})
	end,
})

minetest.register_abm({
	nodenames = {"another_charcoal:ashblock"},
	interval = 60.0,
	chance = 30,
	neighbors = {"default:water_source", "default:water_flowing"},
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "default:dirt"})
	end,
})


