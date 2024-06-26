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
--[[
--CRUSHING FUNACE COOKING RECIPIES
minetest.register_craft({
	type = "cf_cooking",
	cooktime = 8,
	output = "es:gravel 1",
	recipe = "es:cobble",
})
]]

--COOKING RECIPIES
minetest.register_craft({
	type = "cooking",
	cooktime = 30,
	output = "es:emerald_ingot 1",
	recipe = "es:cookable_emerald_ingot",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 30,
	output = "es:ruby_ingot 1",
	recipe = "es:cookable_ruby_ingot",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 30,
	output = "es:aikerum_ingot 1",
	recipe = "es:cookable_aikerum_ingot",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 30,
	output = "es:purpellium_ingot 1",
	recipe = "es:cookable_purpellium_ingot",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 30,
	output = "default:water_flowing 9",
	recipe = "default:ice",
})


minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "default:water_flowing",
	recipe = "default:snowblock",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "es:dry_dirt",
	recipe = "default:dirt",
})

minetest.register_craft({
	type = "cooking",
	replacements = {{"es:infinium_container", "vessels:glass_bottle"}},
	output = "es:infinium_ingot 1",
	recipe = "es:infinium_container",
})
--[[
minetest.register_craft({
	type = "cooking",
	cooktime = 30,
	output = "es:purpellium_ingot 1",
	recipe = "es:purpellium_lump",
})
]]
minetest.register_craft({
	type = "cooking",
	cooktime = 30,
	output = "es:depleted_uranium_ingot",
	recipe = "es:depleted_uranium_lump",
})

minetest.register_craft({
	type = "cooking",
	--cooktime = 12000,
	--cooktime = 11080,
	cooktime = 5540,
	output = "es:unobtainium_ingot",
	recipe = "es:unobtainium_lump",
})

--[[
minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "default:mese_crystal",
	recipe = "es:mesecook_crystal",
})
]]

--Dust cooking
minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "es:purpellium_lump",
	recipe = "es:purpellium_dust",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "es:aikerum_crystal",
	recipe = "es:aikerum_dust",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "es:ruby_crystal",
	recipe = "es:ruby_dust",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "es:emerald_crystal",
	recipe = "es:emerald_dust",
})
--[[
minetest.register_craft({
	type = "cooking",
	cooktime = 90,
	output = "es:rubber",
	recipe = "es:rubber_dust",
})	
]]	

minetest.register_craft({
	type = "cooking",
--	cooktime = 9,
	--output = "default:gravel",
	output = "default:stone",
	recipe = "default:cobble",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 9,
	output = "default:gravel",
	recipe = "default:stone",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 5,
	output = "default:sand",
	recipe = "default:gravel",
})	
--[[
minetest.register_craft({
	type = "cooking",
	cooktime = 5,
	output = "default:dirt",
	recipe = "default:sand",
})	
]]

minetest.register_craft({
	type = "cooking",
	cooktime = 33,
	output = "es:aikerum_dust",
	recipe = "es:aikerum_crystal",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 23,
	output = "es:ruby_dust",
	recipe = "es:ruby_crystal",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 13,
	output = "es:emerald_dust",
	recipe = "es:emerald_crystal",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	output = "es:purpellium_dust",
	recipe = "es:purpellium_lump",
})	

--TOOLS
--steel
minetest.register_craft({
	type = "cooking",
	cooktime = 13,
	output = "default:steel_ingot",
	recipe = "default:pick_steel",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 13,
	output = "default:steel_ingot",
	recipe = "default:sword_steel",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 13,
	output = "default:steel_ingot",
	recipe = "default:axe_steel",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 13,
	output = "default:steel_ingot",
	recipe = "default:shovel_steel",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 13,
	output = "default:steel_ingot",
	recipe = "farming:hoe_steel",
})	

--bronze
minetest.register_craft({
	type = "cooking",
	cooktime = 19,
	output = "default:bronze_ingot",
	recipe = "default:pick_bronze",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 19,
	output = "default:bronze_ingot",
	recipe = "default:sword_bronze",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 19,
	output = "default:bronze_ingot",
	recipe = "default:axe_bronze",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 19,
	output = "default:bronze_ingot",
	recipe = "default:shovel_bronze",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 19,
	output = "default:bronze_ingot",
	recipe = "farming:hoe_bronze",
})	

--mese_crystal
minetest.register_craft({
	type = "cooking",
	cooktime = 22,
	output = "default:mese_crystal",
	recipe = "default:pick_mese",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 22,
	output = "default:mese_crystal",
	recipe = "default:sword_mese",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 22,
	output = "default:mese_crystal",
	recipe = "default:axe_mese",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 22,
	output = "default:mese_crystal",
	recipe = "default:shovel_mese",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 22,
	output = "default:mese_crystal",
	recipe = "farming:hoe_mese",
})	

--diamond
minetest.register_craft({
	type = "cooking",
	cooktime = 29,
	output = "default:diamond",
	recipe = "default:pick_diamond",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 29,
	output = "default:diamond",
	recipe = "default:sword_diamond",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 29,
	output = "default:diamond",
	recipe = "default:axe_diamond",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 29,
	output = "default:diamond",
	recipe = "default:shovel_diamond",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 29,
	output = "default:diamond",
	recipe = "farming:hoe_diamond",
})	


--cblocks
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:black",
	recipe = "cblocks:stone_black",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:blue",
	recipe = "cblocks:stone_blue",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:brown",
	recipe = "cblocks:stone_brown",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:cyan",
	recipe = "cblocks:stone_cyan",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:dark_green",
	recipe = "cblocks:stone_dark_green",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:dark_grey",
	recipe = "cblocks:stone_dark_grey",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:green",
	recipe = "cblocks:stone_green",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:grey",
	recipe = "cblocks:stone_grey",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:magenta",
	recipe = "cblocks:stone_magenta",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:orange",
	recipe = "cblocks:stone_orange",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:pink",
	recipe = "cblocks:stone_pink",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:red",
	recipe = "cblocks:stone_red",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:violet",
	recipe = "cblocks:stone_violet",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:white",
	recipe = "cblocks:stone_white",
})	
minetest.register_craft({
	type = "cooking",
	cooktime = 12,
	output = "dye:yellow",
	recipe = "cblocks:stone_yellow",
})	



--FUEL
--rnd code
-- 7*24*60*60 = 604800 real time 1 week burn time
--Changed to 3 minutes 20151223
--Changed to 400 seconds, too quick before 20200914
minetest.register_craft({
	type = "fuel",
	recipe = "es:depleted_uranium_ingot",
	burntime = 400,
})

minetest.register_craft({
	type = "fuel",
	recipe = "es:depleted_uraniumblock",
	burntime = 3600,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:pick_wood",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:shovel_wood",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:axe_wood",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:sword_wood",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:hoe_wood",
	burntime = 4,
})
