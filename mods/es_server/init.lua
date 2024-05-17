-- Minetest mod "ES Server"
-- ES Server disables old removed mods to help fix your game

-- WARNING:  USE OF THIS MOD COULD PERMANTLY REMOVE NODES IN YOUR GAME AND SET TO DEFAULT NODES.
-- AUTHOR ASSUMES NO RESPONBSIBILITY FOR YOUR ACTIONS.
-- PLEASE BACKUP YOUR MAP BEFORE EXPERIMENTING WITH THIS MOD.

--This library is free software; you can redistribute it and/or
--modify it under the terms of the GNU Lesser General Public
--License as published by the Free Software Foundation; either
--version 2.1 of the License, or (at your option) any later version.

es_server={}
local modpath = minetest.get_modpath("es_server")
es_server.modpath = modpath

--builtin stuff
dofile(modpath.."/extra.lua")
dofile(modpath.."/esnews.lua")
dofile(modpath.."/esradio.lua")
dofile(modpath.."/radioinfo.lua")
dofile(modpath.."/beerarchy_welcome.lua")
--dofile(modpath.."/builtin_flowlib.lua")
--dofile(modpath.."/flowlib.lua")
--dofile(modpath.."/mtvig.lua")		--tempmap
--dofile(modpath.."/christmas.lua")

--if es_server == 1 then	--server shutdown script and spawning function
	dofile(minetest.get_modpath("es_server").."/shutdown.lua")
	dofile(minetest.get_modpath("es_server").."/spawn.lua")
--	dofile(minetest.get_modpath("es_server").."/spawn_space.lua")  --esr-049-530
	dofile(minetest.get_modpath("es_server").."/spawn_space_10k.lua")  --esm1
	dofile(minetest.get_modpath("es_server").."/spawn_6k.lua")  --esm1
	dofile(minetest.get_modpath("es_server").."/spawn_19k.lua")  --esm1
--end
--if es_anticheat == 1 then	--add anti cheating.  noclip and fly caught by rnd code
--	dofile(minetest.get_modpath("es_server").."/anticheat.lua")
--end
--if es_antigrief == 1 then	--add anti griefing.  no add liquid above 0
	dofile(minetest.get_modpath("es_server").."/antigrief.lua")
--end
--if es_kill_command == 1 then	--add self kill command type /killme
	dofile(minetest.get_modpath("es_server").."/kill.lua")
--end
--if es_itemdrop == 1 then	--add item drop
--	dofile(minetest.get_modpath("es_server").."/itemdrop.lua")
--end
--if es_musicmod == 1 then	--add music for times of day
--	dofile(minetest.get_modpath("es_server").."/musicmod.lua")
--end
--if es_skybox_space == 1 then	--add space realm and pure dark in caves
	dofile(minetest.get_modpath("es_server").."/cavespace.lua")
--end
--if es_hud_clock == 1 then	--add clock to your hud
	dofile(minetest.get_modpath("es_server").."/hudclock.lua")		--lag?
--end
--if es_invisible_tool == 1 then	--add invisibility command type /i
--	dofile(minetest.get_modpath("es_server").."/invis.lua")

minetest.log("action", "ES: [ES SERVER] loaded.")

