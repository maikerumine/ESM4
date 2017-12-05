--scifi_nodes by D00Med 
--flowergen by maikerumine

-- Minetest 0.4 mod: default
-- See README.txt for licensing and other information.


-- Namespace for functions

scifi_nodes = {}


-- Map Generation

dofile(minetest.get_modpath("scifi_nodes") .. "/mapgen.lua")


--
-- Flowers
--






-- Flower registration

local function add_simple_flower(name, desc, box, f_groups)
	-- Common flowers' groups
	f_groups.snappy = 3
	f_groups.flower = 1
	f_groups.flora = 1
	f_groups.attached_node = 1

	minetest.register_node("scifi_nodes:" .. name, {
		description = desc,
		drawtype = "plantlike",
		waving = 1,
		damage_per_second = 1,
		tiles = {"scifi_nodes_" .. name .. ".png"},
		inventory_image = "scifi_nodes_" .. name .. ".png",
		wield_image = "scifi_nodes_" .. name .. ".png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = false,
		buildable_to = true,
		stack_max = 99,
		groups = f_groups,
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = box
		}
	})
end

scifi_nodes.datas = {
	{
		"flower1",
		"Purring Pythincium",
		{-2 / 16, -0.5, -2 / 16, 2 / 16, 5 / 16, 2 / 16},
		{color_violet = 1, flammable = 1}
	},
	{
		"flower2",
		"Pink Pidapilous Tulip",
		{-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
		{color_pink = 1, flammable = 1}
	},
	{
		"flower3",
		"Red Clawbiter",
		{-2 / 16, -0.5, -2 / 16, 2 / 16, 4 / 16, 2 / 16},
		{color_red = 1, flammable = 1}
	},
	{
		"flower4",
		"Hanging Recumbant",
		{-2 / 16, -0.5, -2 / 16, 2 / 16, 2 / 16, 2 / 16},
		{color_red = 1, flammable = 1}
	},
	{
		"plant1",
		"Blue Tinged Sorkorz Root",
		{-5 / 16, -0.5, -5 / 16, 5 / 16, -1 / 16, 5 / 16},
		{color_blue = 1, flammable = 1}
	},
	{
		"plant2",
		"Cuspid Capture Cup",
		{-5 / 16, -0.5, -5 / 16, 5 / 16, -2 / 16, 5 / 16},
		{color_green = 1, flammable = 1}
	},
	{
		"plant3",
		"Blue Bulb Baxo",
		{-5 / 16, -0.5, -5 / 16, 5 / 16, -2 / 16, 5 / 16},
		{color_blue = 1, flammable = 1}
	},
	{
		"plant4",
		"Vert Bulb Baxo",
		{-5 / 16, -0.5, -5 / 16, 5 / 16, -2 / 16, 5 / 16},
		{color_green = 1, flammable = 1}
	},
	{
		"plant5",
		"Ferocious Fern",
		{-5 / 16, -0.5, -5 / 16, 5 / 16, -2 / 16, 5 / 16},
		{color_light_green = 1, flammable = 1}
	},
	{
		"plant6",
		"Cimitor Day Sprout",
		{-5 / 16, -0.5, -5 / 16, 5 / 16, -2 / 16, 5 / 16},
		{color_magenta = 1, flammable = 1}
	},
	{
		"plant7",
		"Hosk Thistle",
		{-5 / 16, -0.5, -5 / 16, 5 / 16, -2 / 16, 5 / 16},
		{color_orange = 1, flammable = 1}
	},

}

for _,item in pairs(scifi_nodes.datas) do
	add_simple_flower(unpack(item))
end


-- Flower spread
-- Public function to enable override by mods

function flowers.flower_spread(pos, node)
	pos.y = pos.y - 1
	local under = minetest.get_node(pos)
	pos.y = pos.y + 1
	-- Replace flora with dry shrub in desert sand and silver sand,
	-- as this is the only way to generate them.
	-- However, preserve grasses in sand dune biomes.
	if minetest.get_item_group(under.name, "sand") == 1 and
			under.name ~= "default:sand" then
		minetest.set_node(pos, {name = "default:dry_shrub"})
		return
	end

	if minetest.get_item_group(under.name, "soil") == 0 then
		return
	end

	local light = minetest.get_node_light(pos)
	if not light or light < 13 then
		return
	end

	local pos0 = vector.subtract(pos, 4)
	local pos1 = vector.add(pos, 4)
	if #minetest.find_nodes_in_area(pos0, pos1, "group:flora") > 3 then
		return
	end

	local soils = minetest.find_nodes_in_area_under_air(
		pos0, pos1, "group:soil")
	if #soils > 0 then
		local seedling = soils[math.random(#soils)]
		local seedling_above =
			{x = seedling.x, y = seedling.y + 1, z = seedling.z}
		light = minetest.get_node_light(seedling_above)
		if not light or light < 13 or
				-- Desert sand is in the soil group
				minetest.get_node(seedling).name == "default:desert_sand" then
			return
		end

		minetest.set_node(seedling_above, {name = node.name})
	end
end

minetest.register_abm({
	label = "Flower spread",
	nodenames = {"group:flora"},
	interval = 13,
	chance = 96,
	action = function(...)
		flowers.flower_spread(...)
	end,
})


