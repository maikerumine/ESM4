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


-- See README.txt for licensing and other information.
--maikerumine


es = {}


--toxic potion special use
minetest.register_node("es:toxic_container", {
	description = "Poison.  Place in front of enemies.",
	drawtype = "plantlike",
	tiles = {"es_toxic_container.png"},
	inventory_image = "es_toxic_container.png",
	wield_image = "es_toxic_container.png",
	sunlight_propagates = true,
	paramtype = "light",
	paramtype = "light",
	light_source = 14,
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:toxic_water_flowing"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1,radioactive =8},
	sounds = default.node_sound_glass_defaults(),
})

--purpellium potion give endurance
minetest.register_node("es:unobtainium_container", {
	description = "Fix your tools!  (repairs some tools.)",
	tiles = { "es_unobtainium_container.png"},
	inventory_image =  "es_unobtainium_container.png",
	wield_image = "es_unobtainium_container.png",
	drawtype = "plantlike",
	--on_use = minetest.item_eat(50),
		paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:steel_bottle"},
			},
			{
			items = {"es:unobtainium_lump"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_metal_defaults(),
})


--purpellium potion give endurance
minetest.register_node("es:purpellium_container", {
	description = "Potion to do wonders!  (gives 50+ hunger for extra endurance mining.)",
	tiles = { "es_purpellium_container.png"},
	inventory_image =  "es_purpellium_container.png",
	wield_image = "es_purpellium_container.png",
	drawtype = "plantlike",
	on_use = minetest.item_eat(50),
		paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:purpellium_dust"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_glass_defaults(),
})


--infinium gives ingots for best armour
minetest.register_node("es:infinium_container", {
	description = "Cook for Infinium Ingots  (gives ingot to craft armour)",
	tiles = {"es_infinium_container.png"},
	inventory_image = "es_infinium_container.png",
	wield_image = "es_infinium_container.png",
	drawtype = "plantlike",
	--on_use = minetest.item_eat(50),
		paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:infinium_goo"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_glass_defaults(),
})

-- HEAL HP in hunger hud
--place inhunger inhunger
--	if minetest.get_modpath("es") ~= nil then
--overwrite("es:purpellium_container", 50,"vessels:glass_bottle",nil,50)
--end

--aikerum potion special use
minetest.register_node("es:aikerum_container", {
	description = "Convert diamond tool into aikerum tool!  (Put diamond tool and this potion in crafting to get aikerum tool.)",
	tiles = {"es_aikerum_container.png"},
	inventory_image = "es_aikerum_container.png",
	wield_image = "es_aikerum_container.png",
	drawtype = "plantlike",
	paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:aikerum_dust"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_glass_defaults(),
})

--ruby potion special use heal armor
minetest.register_node("es:ruby_container", {
	description = "Fix your armour!  (Put bad armour and this potion in crafting to fix.)",
	tiles = {"es_ruby_container.png"},
	inventory_image = "es_ruby_container.png",
	wield_image = "es_ruby_container.png",
	drawtype = "plantlike",
	paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:ruby_dust"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_glass_defaults(),
})

--emerald potion special use
minetest.register_node("es:emerald_container", {
	description = "TBD",
	tiles = {"es_emerald_container.png"},
	inventory_image = "es_emerald_container.png",
	wield_image = "es_emerald_container.png",
	drawtype = "plantlike",
	paramtype = "light",
	is_ground_content = false,
	drop ={
		items = {
			{
			items = {"vessels:glass_fragments"},
			},
			{
			items = {"es:emerald_dust"},
			}
		}
	},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
	sounds = default.node_sound_glass_defaults(),
})
