--alias for my server world created by maikerumine
-- Minetest 0.4.14 mod: "alias"
-- namespace: alias
--version null
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.


alias = {}
--NOTE:  THIS--v  v--MUST BE FIRST IN THE INIT FOR EVERYTHING TO WORK

local modpath = minetest.get_modpath("alias")
alias.modpath = modpath

dofile(modpath.."/alias.lua")
dofile(modpath.."/moreorerem.lua")
dofile(modpath.."/pathv6rem.lua")
dofile(modpath.."/technodrem.lua")
dofile(modpath.."/villrem.lua")
dofile(modpath.."/esorerem.lua")
dofile(modpath.."/moreblocksrem.lua")
dofile(modpath.."/moresnowrem.lua")
dofile(modpath.."/moretreesrem.lua")
