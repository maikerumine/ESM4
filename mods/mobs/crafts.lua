-- cobweb
minetest.register_node(":mobs:cobweb", {
	description = "Cobweb",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"mobs_cobweb.png"},
	inventory_image = "mobs_cobweb.png",
	paramtype = "light",
	sunlight_propagates = true,
	liquid_viscosity = 11,
	liquidtype = "source",
	liquid_alternative_flowing = "mobs:cobweb",
	liquid_alternative_source = "mobs:cobweb",
	liquid_renewable = false,
	liquid_range = 0,
	walkable = false,
	groups = {snappy = 1},
	drop = "farming:cotton",
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output = "mobs:cobweb",
	recipe = {
		{"farming:string", "", "farming:string"},
		{"", "farming:string", ""},
		{"farming:string", "", "farming:string"},
	}
})

--[[	
-- Cooked Meat, yummy!
minetest.register_craftitem("mobs:meat_raw", {
	description = "Raw Meat",
	inventory_image = "mobs_meat_raw.png",
	
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("mobs:meat_cooked", {
	description = "Cooked Meat",
	inventory_image = "mobs_meat.png",
	
	on_use = minetest.item_eat(5),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:meat_cooked",
	recipe = "mobs:meat_raw",
	cooktime = 5,
})
]]

--[[
-- name tag
minetest.register_craftitem("mobs:nametag", {
	description = "Name Tag",
	inventory_image = "mobs_nametag.png",
	groups = {flammable = 2, nametag = 1}
})

if minetest.get_modpath("dye") and minetest.get_modpath("farming") then
	minetest.register_craft({
		output = "mobs:nametag",
		recipe = {{"default:paper", "dye:black", "farming:string"}}
	})
end
]]
minetest.register_alias("mobs:nametag", "mobs:meat_raw")	
-- leather
minetest.register_craftitem("mobs:leather", {
	description = "Leather",
	inventory_image = "mobs_leather.png",
	groups = {flammable = 2, leather = 1}
})

-- raw meat
minetest.register_craftitem("mobs:meat_raw", {
	description = "Raw Meat",
	inventory_image = "mobs_meat_raw.png",
	on_use = minetest.item_eat(3),
	groups = {food_meat_raw = 1, flammable = 2}
})

-- cooked meat
minetest.register_craftitem("mobs:meat", {
	description = "Meat",
	inventory_image = "mobs_meat.png",
	on_use = minetest.item_eat(8),
	groups = {food_meat = 1, flammable = 2}
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:meat",
	recipe = "mobs:meat_raw",
	cooktime = 5
})
--[[
-- lasso
minetest.register_tool("mobs:lasso", {
	description = "Lasso (right-click animal to put in inventory)",
	inventory_image = "mobs_magic_lasso.png",
	groups = {flammable = 2}
})

if minetest.get_modpath("farming") then
	minetest.register_craft({
		output = "mobs:lasso",
		recipe = {
			{"farming:string", "", "farming:string"},
			{"", "default:diamond", ""},
			{"farming:string", "", "farming:string"}
		}
	})
end

minetest.register_alias("mobs:magic_lasso", "mobs:lasso")

-- net
minetest.register_tool("mobs:net", {
	description = "Net (right-click animal to put in inventory)",
	inventory_image = "mobs_net.png",
	groups = {flammable = 2}
})

if minetest.get_modpath("farming") then
	minetest.register_craft({
		output = "mobs:net",
		recipe = {
			{"group:stick", "", "group:stick"},
			{"group:stick", "", "group:stick"},
			{"farming:string", "group:stick", "farming:string"}
		}
	})
end
]]
minetest.register_alias("mobs:lasso", "mobs:meat_raw")	
minetest.register_alias("mobs:net", "mobs:meat_raw")	
minetest.register_alias("mobs:magic_lasso", "mobs:meat_raw")	
-- shears (right click to shear animal)
minetest.register_tool("mobs:shears", {
	description = "Steel Shears (right-click to shear)",
	inventory_image = "mobs_shears.png",
	groups = {flammable = 2}
})

minetest.register_craft({
	output = "mobs:shears",
	recipe = {
		{"", "default:steel_ingot", ""},
		{"", "group:stick", "default:steel_ingot"}
	}
})

--[[-- protection rune
minetest.register_craftitem("mobs:protector", {
	description = "Mob Protection Rune",
	inventory_image = "mobs_protector.png",
	groups = {flammable = 2}
})

minetest.register_craft({
	output = "mobs:protector",
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "default:goldblock", "default:stone"},
		{"default:stone", "default:stone", "default:stone"}
	}
})

-- level 2 protection rune
minetest.register_craftitem("mobs:protector2", {
	description = "Mob Protection Rune (Level 2)",
	inventory_image = "mobs_protector2.png",
	groups = {flammable = 2}
})

minetest.register_craft({
	output = "mobs:protector2",
	recipe = {
		{"mobs:protector", "default:mese_crystal", "mobs:protector"},
		{"default:mese_crystal", "default:diamondblock", "default:mese_crystal"},
		{"mobs:protector", "default:mese_crystal", "mobs:protector"}
	}
})
]]
minetest.register_alias("mobs:protector", "mobs:meat_raw")	
minetest.register_alias("mobs:protector2", "mobs:meat_raw")	

--[[
-- saddle
minetest.register_craftitem("mobs:saddle", {
	description = "Saddle",
	inventory_image = "mobs_saddle.png",
	groups = {flammable = 2, saddle = 1}
})

minetest.register_craft({
	output = "mobs:saddle",
	recipe = {
		{"mobs:leather", "mobs:leather", "mobs:leather"},
		{"mobs:leather", "default:steel_ingot", "mobs:leather"},
		{"mobs:leather", "default:steel_ingot", "mobs:leather"}
	}
})

]]
minetest.register_alias("mobs:saddle", "mobs:meat_raw")	


-- make sure we can register fences
if minetest.get_modpath("default") and default.register_fence then

-- mob fence (looks like normal fence but collision is 2 high)
default.register_fence("mobs:fence_wood", {
	description = "Mob Fence",
	texture = "default_wood.png",
	--material = "default:fence_wood",
	material = "group:fence",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 1.9, 0.5},
		}
	}
})
end

-- mob fence top (has enlarged collisionbox to stop mobs getting over)
minetest.register_node("mobs:fence_top", {
	description = "Mob Fence Top",
	drawtype = "nodebox",
	tiles = {"default_wood.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.4, -1.5, -0.4, 0.4, 0, 0.4}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -1.5, -0.4, 0.4, 0, 0.4}
	}
})

minetest.register_craft({
	output = "mobs:fence_top 12",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"", "group:fence", ""}
	}
})


-- items that can be used as fuel
minetest.register_craft({
	type = "fuel",
	recipe = "mobs:nametag",
	burntime = 3
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:lasso",
	burntime = 7
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:net",
	burntime = 8
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:leather",
	burntime = 4
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:saddle",
	burntime = 7
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:fence_wood",
	burntime = 7
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:fence_top",
	burntime = 2
})


-- this tool spawns same mob and adds owner, protected, nametag info
-- then removes original entity, this is used for fixing any issues.

local tex_obj

minetest.register_tool(":mobs:mob_reset_stick", {
	description = "Mob Reset Stick",
	inventory_image = "default_stick.png^[colorize:#ff000050",
	stack_max = 1,
	groups = {not_in_creative_inventory = 1},

	on_use = function(itemstack, user, pointed_thing)

		if pointed_thing.type ~= "object" then
			return
		end

		local obj = pointed_thing.ref

		local control = user:get_player_control()
		local sneak = control and control.sneak

		-- spawn same mob with saved stats, with random texture
		if obj and not sneak then

			local self = obj:get_luaentity()
			local obj2 = minetest.add_entity(obj:get_pos(), self.name)

			if obj2 then

				local ent2 = obj2:get_luaentity()

				ent2.protected = self.protected
				ent2.owner = self.owner
				ent2.nametag = self.nametag
				ent2.gotten = self.gotten
				ent2.tamed = self.tamed
				ent2.health = self.health
				ent2.order = self.order

				if self.child then
					obj2:set_velocity({x = 0, y = self.jump_height, z = 0})
				end

				obj2:set_properties({nametag = self.nametag})

				obj:remove()
			end
		end

		-- display form to enter texture name ending in .png
		if obj and sneak then

			tex_obj = obj

			-- get base texture
			local bt = tex_obj:get_luaentity().base_texture[1]

			if type(bt) ~= "string" then
				bt = ""
			end

			local name = user:get_player_name()

			minetest.show_formspec(name, "mobs_texture", "size[8,4]"
			.. "field[0.5,1;7.5,0;name;"
			.. minetest.formspec_escape(S("Enter texture:")) .. ";" .. bt .. "]"
			.. "button_exit[2.5,3.5;3,1;mob_texture_change;"
			.. minetest.formspec_escape(S("Change")) .. "]")
		end
	end
})

minetest.register_on_player_receive_fields(function(player, formname, fields)

	-- right-clicked with nametag and name entered?
	if formname == "mobs_texture"
	and fields.name
	and fields.name ~= "" then

		-- does mob still exist?
		if not tex_obj
		or not tex_obj:get_luaentity() then
			return
		end

		-- make sure nametag is being used to name mob
		local item = player:get_wielded_item()

		if item:get_name() ~= "mobs:mob_reset_stick" then
			return
		end

		-- limit name entered to 64 characters long
		if fields.name:len() > 64 then
			fields.name = fields.name:sub(1, 64)
		end

		-- update texture
		local self = tex_obj:get_luaentity()

		self.base_texture = {fields.name}

		tex_obj:set_properties({textures = {fields.name}})

		-- reset external variable
		tex_obj = nil
	end
end)


-- Meat Block (thanks to painterlypack.net for allowing me to use these textures)
minetest.register_node("mobs:meatblock", {
	description = "Meat Block",
	tiles = {"mobs_meat_top.png", "mobs_meat_bottom.png", "mobs_meat_side.png"},
	paramtype2 = "facedir",
	groups = {choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default and default.node_sound_leaves_defaults(),
	on_place = minetest.rotate_node,
	on_use = minetest.item_eat(20)
})

minetest.register_craft({
	output = "mobs:meatblock",
--	type = "shapeless",
	recipe = {
		{"group:food_meat", "group:food_meat", "group:food_meat"},
		{"group:food_meat", "group:food_meat", "group:food_meat"},
		{"group:food_meat", "group:food_meat", "group:food_meat"}
	}
})


--FAKE TOOLS
minetest.register_craftitem("mobs:sword_aikerum", {
	description = "fake aikerum_sword",
	inventory_image = "es_tool_aikerumsword.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:sword_purpellium", {
	description = "fake purpellium_sword",
	inventory_image = "es_tool_purpelliumsword.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:pick_purpellium", {
	description = "fake purpellium_pick",
	inventory_image = "es_tool_purpelliumpick.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:beedo_hammer", {
	description = "fake beedo_hammer",
	inventory_image = "es_tool_beedo_hammer.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:sword_steel", {
	description = "fake sword_steel",
	inventory_image = "default_tool_steelsword.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:pick_steel", {
	description = "fake pick_steel",
	inventory_image = "default_tool_steelpick.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:axe_steel", {
	description = "fake axe_steel",
	inventory_image = "default_tool_steelaxe.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:shovel_steel", {
	description = "fake shovel_steel",
	inventory_image = "default_tool_steelshovel.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:sword_bronze", {
	description = "fake sword_bronze",
	inventory_image = "default_tool_bronzesword.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:sword_mese", {
	description = "fake sword_mese",
	inventory_image = "default_tool_mesesword.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:pick_mese", {
	description = "fake pick_mese",
	inventory_image = "default_tool_mesepick.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:sword_diamond", {
	description = "fake sword_diamond",
	inventory_image = "default_tool_diamondsword.png",
	groups = {not_in_creative_inventory = 1}
})

minetest.register_craftitem("mobs:pick_diamond", {
	description = "fake pick_diamond",
	inventory_image = "default_tool_diamondpick.png",
	groups = {not_in_creative_inventory = 1}
})