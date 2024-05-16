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
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0

--es = {}



--
-- Es Lavacooling
--
--[[
es.cool_fakelava = function(pos, node)
	if node.name == "es:lava_source" then
		minetest.set_node(pos, {name = "default:obsidian"})
	else -- Lava flowing
		minetest.set_node(pos, {name = "es:oremagicinator"})
	end
	minetest.sound_play("default_cool_lava",
		{pos = pos, max_hear_distance = 16, gain = 0.25}, true)
end
]]
--[[
if minetest.settings:get_bool("enable_lavacooling") ~= false then
	minetest.register_abm({
		label = "Fake Lava cooling",
		nodenames = {"es:lava_source", "es:lava_flowing"},
		neighbors = {"es:fake_water_source", "es:fake_water_flowing"},
		interval = 2,
		chance = 2,
		catch_up = false,
		action = function(...)
			es.cool_fakelava(...)
		end,
	})	
end
]]
minetest.register_abm{
        label = "lava cooling",
	nodenames = {"group:fakelava"},
	neighbors = {"group:fakewater"},
	interval = 1,
	chance = 1,
	action = function(pos)
		minetest.set_node(pos, {name = "es:oremagicinator"})
			minetest.sound_play("default_cool_lava",
		{pos = pos, max_hear_distance = 16, gain = 0.25}, true)
	end,
}
