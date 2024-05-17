--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine

--[[
local function register_plant(name, min, max, spawnby, num)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"es:strange_grass","es:aiden_grass","default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 70, y = 70, z = 70},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		y_min = min,
		y_max = max,
		decoration = "farming:" .. name,
		spawn_by = spawnby,
		num_spawn_by = num,
	})
end







function farming.register_mgv6_decorations()
	register_plant("potato_3", 15, 40, "", -1)
	register_plant("tomato_7", 5, 20, "", -1)
	register_plant("carrot_8", 1, 30, "group:water", 1)
	register_plant("cucumber_4", 1, 20, "group:water", 1)
	register_plant("corn_7", 12, 22, "", -1)
	register_plant("corn_8", 10, 20, "", -1)
	register_plant("coffee_5", 20, 45, "", -1)
	register_plant("melon_8", 1, 20, "group:water", 1)
	register_plant("pumpkin_8", 1, 20, "group:water", 1)
	register_plant("raspberry_4", 3, 10, "", -1)
	register_plant("rhubarb_3", 3, 15, "", -1)
	register_plant("blueberry_4", 3, 10, "", -1)
	register_plant("beanbush", 18, 35, "", -1)
	register_plant("grapebush", 25, 45, "", -1)
end

-- v7 maps have a beach so plants growing near water is limited to 6 high
function farming.register_mgv7_decorations()
	register_plant("potato_3", 15, 40, "", -1)
	register_plant("tomato_7", 5, 20, "", -1)
	register_plant("carrot_8", 1, 6, "", -1)
	register_plant("cucumber_4", 1, 6, "", -1)
	register_plant("corn_7", 12, 22, "", -1)
	register_plant("corn_8", 10, 20, "", -1)
	register_plant("coffee_5", 20, 45, "", -1)
	register_plant("melon_8", 1, 6, "", -1)
	register_plant("pumpkin_8", 1, 6, "", -1)
	register_plant("raspberry_4", 3, 10, "", -1)
	register_plant("rhubarb_3", 3, 15, "", -1)
	register_plant("blueberry_4", 3, 10, "", -1)
	register_plant("beanbush", 18, 35, "", -1)
	register_plant("grapebush", 25, 45, "", -1)
end

-- detect mapgen
if minetest.get_mapgen_params().mgname == "v6" then
	farming.register_mgv6_decorations()
else
	farming.register_mgv7_decorations()
end

]]

local mud_correspondences = {
	["es:dry_dirt"] = "default:dirt",
	["stairs:slab_dry_dirt"] = "stairs:slab_dirt",
	["stairs:stair_dry_dirt"] = "stairs:stair_dirt",
	["stairs:stair_inner_dry_dirt"] = "stairs:stair_inner_dirt",
	["stairs:stair_outer_dry_dirt"] = "stairs:stair_outer_dirt",
	["walls:dry_dirt"] = "walls:dirt",
}
minetest.register_abm({
	label = "Dirt growth",
	nodenames = {"es:dry_dirt", "stairs:slab_dry_dirt", "stairs:stair_dry_dirt",
		"stairs:stair_inner_dry_dirt", "stairs:stair_outer_dry_dirt",
		"walls:dry_dirt"},
	neighbors = {"group:water"},
	interval = 16,
	chance = 200,
	catch_up = false,
	action = function(pos, node)
		node.name = mud_correspondences[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})