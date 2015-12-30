--Node Swapper created by maikerumine
-- Minetest 0.4.13 mod: "Node Swapper"
-- namespace: nodeswapper
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0

nodeswapper = {}
--NOTE:  THIS MOD CHANGES ALIAS FROM TECHNIC TO ELSE TO CLEAN MAP.


local load_start = os.clock()
local modpath = minetest.get_modpath("nodeswapper")
nodeswapper.modpath = modpath


-- Alias
dofile(modpath.."/alias.lua")
