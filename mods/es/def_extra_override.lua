--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

es = {}


--EXAMPLE
--[[
    minetest.clear_craft({
		output = "tnt:tnt_stick 2",
		recipe = {
			{"tnt:gunpowder", "", "tnt:gunpowder"},
			{"tnt:gunpowder", "default:paper", "tnt:gunpowder"},
			{"tnt:gunpowder", "", "tnt:gunpowder"},
		}
	})
	
    minetest.register_craft({
	    output = "tnt:gunpowder",
	    type = "shapeless",
	    recipe = {"default:coal_lump", "default:gravel"}
    })

	minetest.register_craft({
		output = "tnt:tnt",
		recipe = {
			{"tnt:tnt_stick", "tnt:tnt_stick", "tnt:tnt_stick"},
			{"tnt:tnt_stick", "tnt:tnt_stick", "tnt:tnt_stick"},
			{"tnt:tnt_stick", "tnt:tnt_stick", "tnt:tnt_stick"}
		}
	})



    minetest.register_node("default:dirt_with_dry_grass", {
	    description = "Dirt with Dry Grass",
	    tiles = {"default_dry_grass.png",
		    "default_dirt.png",
		    {name = "default_dirt.png^default_dry_grass_side.png",
			    tileable_vertical = false}},
	    groups = {crumbly = 3, soil = 1},
	    drop = 'default:dirt',
	    sounds = default.node_sound_dirt_defaults({
		    footstep = {name = "default_grass_footstep", gain = 0.4},
	    }),
    })


--antigrief

    minetest.override_item("default:sand", {
	    groups = {crumbly = 3, falling_node = 1, sand = 1},
    })
]]

--butter!
    minetest.override_item("default:gold_ingot", {
	    description = "Stick of butter!",
    })
--[[
minetest.register_craftitem("default:gold_ingot", {
	description = S("Gold Ingot"),
	inventory_image = "default_gold_ingot.png"
})
]]	
	
--Cityblock
    minetest.clear_craft({
		output = "city_block:cityblock",
		recipe = {
		{'default:pick_mese', 'farming:hoe_mese', 'default:sword_mese'},
		{'default:sandstone', 'default:goldblock', 'default:sandstone'},
		{'default:stonebrick', 'default:mese', 'default:stonebrick'},
		}
	})

	minetest.register_craft({
		output = 'city_block:cityblock',
		recipe = {
			{'default:pick_mese', 'farming:hoe_mese_green', 'default:sword_mese'},
			{'default:sandstone', 'default:goldblock', 'default:sandstone'},
			{'default:stonebrick', 'default:mese', 'default:stonebrick'},
		}
	})

--=================================================	
--=================================================	
--default
    minetest.clear_craft({
		output = "default:ladder_wood",
		recipe = {
		{"group:stick", "", "group:stick"},
		{"group:stick", "group:stick", "group:stick"},
		{"group:stick", "", "group:stick"},
		}
	})

	minetest.register_craft({
		output = "default:ladder_wood 5",
		recipe = {
		{"group:stick", "hades_core:nails", "group:stick"},
		{"group:stick", "group:stick", "group:stick"},
		{"group:stick", "hades_core:nails", "group:stick"},
		}
	})

    minetest.clear_craft({
		output = "default:ladder_steel",
		recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
		}
	})

	minetest.register_craft({
		output = "default:ladder_steel 15",
		recipe = {
		{"default:steel_ingot", "hades_core:nails", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "hades_core:nails", "default:steel_ingot"},
		}
	})
	


--=================================================	
--=================================================		
	--Doors
    minetest.clear_craft({
		output = "doors:door_wood",
		recipe = {
			{"group:wood", "group:wood"},
			{"group:wood", "group:wood"},
			{"group:wood", "group:wood"},
		}
	})

	minetest.register_craft({
		output = 'doors:door_wood',
		recipe = {
			{"group:wood", "group:wood", "hades_core:nails"},
			{"group:wood", "group:wood", "hades_core:nails"},
			{"group:wood", "group:wood", "hades_core:nails"},
		}
	})


    minetest.clear_craft({
		output = "doors:door_steel",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot"},
			{"default:steel_ingot", "default:steel_ingot"},
			{"default:steel_ingot", "default:steel_ingot"},
		}
	})

	minetest.register_craft({
		output = 'doors:door_steel',
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "hades_core:nails"},
			{"default:steel_ingot", "default:steel_ingot", "hades_core:nails"},
			{"default:steel_ingot", "default:steel_ingot", "hades_core:nails"},
		}
	})
	
	minetest.clear_craft({
		output = "doors:door_glass",
		recipe = {
			{"default:glass", "default:glass"},
			{"default:glass", "default:glass"},
			{"default:glass", "default:glass"},
		}
	})

	minetest.register_craft({
		output = 'doors:door_glass',
		recipe = {
			{"default:glass", "default:glass", "hades_core:nails"},
			{"default:glass", "default:glass", "hades_core:nails"},
			{"default:glass", "default:glass", "hades_core:nails"},
		}
	})
	
	minetest.clear_craft({
		output = "doors:door_obsidian_glass",
		recipe = {
			{"default:obsidian_glass", "default:obsidian_glass"},
			{"default:obsidian_glass", "default:obsidian_glass"},
			{"default:obsidian_glass", "default:obsidian_glass"},
		}
	})

	minetest.register_craft({
		output = 'doors:door_obsidian_glass',
		recipe = {
			{"default:obsidian_glass", "default:obsidian_glass", "hades_core:nails"},
			{"default:obsidian_glass", "default:obsidian_glass", "hades_core:nails"},
			{"default:obsidian_glass", "default:obsidian_glass", "hades_core:nails"},
		}
	})
	
	minetest.clear_craft({
		output = "doors:trapdoor",
		recipe = {
			{"group:wood", "group:wood"},
			{"group:wood", "group:wood"},
		}
	})

	minetest.register_craft({
		output = 'doors:trapdoor',
		recipe = {
			{"group:wood", "group:wood", "hades_core:nails"},
			{"group:wood", "group:wood", "hades_core:nails"},
		}
	})
	
	minetest.clear_craft({
		output = "doors:trapdoor_steel",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot"},
			{"default:steel_ingot", "default:steel_ingot"},
		}
	})

	minetest.register_craft({
		output = 'doors:trapdoor_steel',
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "hades_core:nails"},
			{"default:steel_ingot", "default:steel_ingot", "hades_core:nails"},
		}
	})
	
--wood
	minetest.clear_craft({
		output = "doors:gate_wood_closed",
		recipe = {
			{"group:stick", "default:wood", "group:stick"},
			{"group:stick", "default:wood", "group:stick"}
		}
	})

	minetest.register_craft({
		output = "doors:gate_wood_closed",
		recipe = {
			{"hades_core:nails", "hades_core:nails", "hades_core:nails"},
			{"group:stick", "default:wood", "group:stick"},
			{"group:stick", "default:wood", "group:stick"}
		}
	})
--acacia
	minetest.clear_craft({
		output = "doors:gate_acacia_wood_closed",
		recipe = {
			{"group:stick", "default:acacia_wood", "group:stick"},
			{"group:stick", "default:acacia_wood", "group:stick"}
		}
	})

	minetest.register_craft({
		output = "doors:gate_acacia_wood_closed",
		recipe = {
			{"hades_core:nails", "hades_core:nails", "hades_core:nails"},
			{"group:stick", "default:acacia_wood", "group:stick"},
			{"group:stick", "default:acacia_wood", "group:stick"}
		}
	})
--jungle
	minetest.clear_craft({
		output = "doors:gate_junglewood_closed",
		recipe = {
			{"group:stick", "default:junglewood", "group:stick"},
			{"group:stick", "default:junglewood", "group:stick"}
		}
	})

	minetest.register_craft({
		output = "doors:gate_junglewood_closed",
		recipe = {
			{"hades_core:nails", "hades_core:nails", "hades_core:nails"},
			{"group:stick", "default:junglewood", "group:stick"},
			{"group:stick", "default:junglewood", "group:stick"}
		}
	})
	--pine
	minetest.clear_craft({
		output = "doors:gate_pine_wood_closed",
		recipe = {
			{"group:stick", "default:pine_wood", "group:stick"},
			{"group:stick", "default:pine_wood", "group:stick"}
		}
	})

	minetest.register_craft({
		output = "doors:gate_pine_wood_closed",
		recipe = {
			{"hades_core:nails", "hades_core:nails", "hades_core:nails"},
			{"group:stick", "default:pine_wood", "group:stick"},
			{"group:stick", "default:pine_wood", "group:stick"}
		}
	})
	--aspen
	minetest.clear_craft({
		output = "doors:gate_aspen_wood_closed",
		recipe = {
			{"group:stick", "default:aspen_wood", "group:stick"},
			{"group:stick", "default:aspen_wood", "group:stick"}
		}
	})

	minetest.register_craft({
		output = "doors:gate_aspen_wood_closed",
		recipe = {
			{"hades_core:nails", "hades_core:nails", "hades_core:nails"},
			{"group:stick", "default:aspen_wood", "group:stick"},
			{"group:stick", "default:aspen_wood", "group:stick"}
		}
	})	
	
--[[
	minetest.register_craft({
		output = name .. "_closed",
		recipe = {
			{"group:stick", def.material, "group:stick"},
			{"group:stick", def.material, "group:stick"}
		}
	})
	]]
--=================================================	
--=================================================	
	
--[[
--Farming
	minetest.override_item("farming:flour", {
		description = "Flour  -=Needs to be made with crushing furnace=-",
		inventory_image = "farming_flour.png",
		groups = {food_flour = 1, flammable = 1},
	})

	minetest.override_item("farming:bread", {
		description = "Bread  -=Now needs wheat crushed to make flour=-",
		inventory_image = "farming_bread.png",
		on_use = minetest.item_eat(5),
		groups = {food_bread = 1, flammable = 2},
	})

	minetest.clear_craft({
		type = "shapeless",
		output = "farming:flour",
		recipe = {"farming:wheat", "farming:wheat", "farming:wheat", "farming:wheat"}
	})
]]


--[[
minetest.register_craft({
	output = "default:chest",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "", "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
	}
})

minetest.register_craft({
	output = "default:chest_locked",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "default:steel_ingot", "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
	}
})

minetest.register_craft( {
	type = "shapeless",
	output = "default:chest_locked",
	recipe = {"default:chest", "default:steel_ingot"},
})

]]

