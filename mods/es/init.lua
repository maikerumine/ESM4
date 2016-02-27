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

es = {}
--NOTE:  THIS--v  v--MUST BE FIRST IN THE INIT FOR EVERYTHING TO WORK
enable_stairsplus = true

local load_start = os.clock()
local modpath = minetest.get_modpath("es")
es.modpath = modpath

-- REMOVE NODES DO NOT USE IN YOUR WORLD
-- Alias
--dofile(modpath.."/technodrem.lua")
--dofile(modpath.."/moreorerem.lua")
--dofile(modpath.."/alias.lua")

-- Anticheat by RND
dofile(modpath.."/anticheat.lua")
-- Armor [abort migration]
dofile(modpath.."/armor.lua")
-- Craft recipes for items
dofile(modpath.."/crafting.lua")

-- Shutdown
dofile(modpath.."/shutdown.lua")

--Spawn
dofile(modpath.."/spawn.lua")

-- Nodes
dofile(modpath.."/nodes.lua")



-- Ore Generation
dofile(modpath.."/oregen.lua")
-- Tools
dofile(modpath.."/tools.lua")
--dofile(modpath.."/hoes.lua")

-- Climate  very laggy
--dofile(minetest.get_modpath("es").."/freeze.lua")
--dofile(minetest.get_modpath("es").."/snow.lua")
--dofile(minetest.get_modpath("es").."/thaw.lua")

--MOREBLOCKS / STAIRSPLUS SUPPORT
if moreblocks then
dofile(modpath.."/mostair.lua")
end

--STAIR SUPPORT
if stairs then
dofile(modpath.."/stair.lua")
end


-- Map Generation
--(CURRENTLY YOU NEED TO REPLACE THE DEFAULT WITH
--the one that says stone IF YOU WANT AN ALL STONE WORLD.)




--MAPFIX CODE
minetest.register_chatcommand("mapfix", {
	params = "<size>",
	description = "Recalculate the flowing liquids of a chunk",
	func = function(name, param)
		local pos = minetest.get_player_by_name(name):getpos()
		local size = tonumber(param) or 40
		if size > 50 and not minetest.check_player_privs(name, {server=true}) then
			return false, "You need the server privilege to exceed the radius of 50 blocks"
		end
		local minp, maxp = {x = math.floor(pos.x - size), y = math.floor(pos.y - size), z = math.floor(pos.z - size)}, {x = math.ceil(pos.x + size), y = math.ceil(pos.y + size), z = math.ceil(pos.z + size)}
		local vm = minetest.get_voxel_manip()
		vm:read_from_map(minp, maxp)
		vm:calc_lighting()
		vm:update_liquids()
		vm:write_to_map()
		vm:update_map()
		return true, "Done."
	end,
})





