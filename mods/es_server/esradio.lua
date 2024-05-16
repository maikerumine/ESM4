--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2020) maikerumine; CC-BY-SA 3.0

es_server = {}

-- if you add new sheets, you should change frequency value accordingly


frequency = 3

-- register es RADIO nodes

for i = 1, frequency do

	local x = i + 1
	local y = i - 1
	if x > frequency then x = 1 end
	if y < 1 then y = frequency end

	minetest.register_node("es_server:es_radio_"..i, {
		description = "ES Radio "..i,
		drawtype = "signlike",
	    tiles = {"es_radio_"..i.."_page.png"},
	    inventory_image = "es_radio_"..i.."_page.png",
	    wield_image = "es_radio_"..i.."_page.png",
	    paramtype = "light",
	    paramtype2 = "wallmounted",
	    walkable = false,
	    --climbable = true,
		sunlight_propagates = true,
		selection_box = {
			type = "wallmounted",
		},
		groups = {snappy=1, oddly_breakable_by_hand=2, flammable=3},
		sounds = default.node_sound_leaves_defaults(),
		drop = "es_server:es_radio_"..i,
		--[[]]
		on_rightclick = function(pos, node, clicker)
			node.name = "es_server:es_radio_"..x
			minetest.set_node(pos, node)
			--if math.random(1, 3) == 1 then
				minetest.sound_play("ham_radio_tuning1", {pos = pos})
			--end
		end,
		on_punch = function(pos, node, puncher)
			node.name = "es_server:es_radio_"..y
			minetest.set_node(pos, node)
			--if math.random(1, 3) == 1 then
				minetest.sound_play("ham_radio_tuning2", {pos = pos})
			--end
		end,--[[]]
	})

end

-- register es news craft

minetest.register_craft({
	output = "es_server:es_radio_1",
		type = "shapeless",
			recipe = {"default:copper_lump", "default:paper"}
})
minetest.register_craft({
	output = "es_server:es_radio_1",
		type = "shapeless",
			recipe = {"default:copper_ingot", "default:paper"}
})


--[[
Bring Me The Head Mod

by thefamilygrog66
]]
