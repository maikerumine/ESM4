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


-- Alias
dofile(modpath.."/alias.lua")
-- Armor [abort migration]
dofile(modpath.."/armor.lua")
-- Craft recipes for items
dofile(modpath.."/crafting.lua")

-- Mapgen?
--dofile(modpath.."/mapgen.lua")

-- Nodes
dofile(modpath.."/nodes.lua")
-- Ore Generation
dofile(modpath.."/oregen.lua")
-- Tools
dofile(modpath.."/tools.lua")

-- Climate
--dofile(minetest.get_modpath("es").."/freeze.lua")
--dofile(minetest.get_modpath("es").."/snow.lua")



--THESE ARE BROKEN AND STORED IN THE nodes.lua
--Something about global is nil...
--MOREBLOCKS / STAIRSPLUS SUPPORT
if moreblocks then
dofile(modpath.."/mostair.lua")
--enable_stairsplus = true
end

--STAIR SUPPORT
if stairs then
dofile(modpath.."/stair.lua")
end


--TECHNIC SUPPORT
if technic then
dofile(modpath.."/tech.lua")
end


-- Map Generation (CURRENTLY YOU NEED TO REPLACE THE DEFAULT WITH the one that says stone IF YOU WANT AN ALL STONE WORLD.)




--Fixer's code--v
-- Time to shut down server.
-- Default is twice a day: at 06:05 and 18:05
local H, M = 06, 05
local Z = 18

-- Day to shut down server.
-- Default is daily shutdown
-- 1=Sunday, ..., 7=Saturday, nil=Shutdown daily
local D = nil

local timer = 0
minetest.register_globalstep(function(dtime)
   timer = timer + dtime
   if timer < 1 then return end
   timer = 0
   local t = os.date("*t")
   if ((t.hour == H or t.hour == Z) and (t.min == M) and (t.sec <= 2)
         and ((D == nil) or (t.wday == D))) then
      minetest.chat_send_all("Scheduled shutdown.  6 and 6 Eastern Time Zone "
            .."Please come back in a minute.")
      minetest.after(2, minetest.request_shutdown)
   end
end)

