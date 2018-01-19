--Extreme Survival created by maikerumine
-- Minetest 0.5.0 mod: "Extreme Survival"
-- namespace: es
--version 3.1
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2017 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2017) maikerumine; CC-BY-SA 3.0

es = {}
--NOTE:  THIS--v  v--MUST BE FIRST IN THE INIT FOR EVERYTHING TO WORK
enable_stairsplus = true


local modpath = minetest.get_modpath("es")
es.modpath = modpath

dofile(modpath.."/alias.lua")

dofile(modpath.."/biome.lua")
--dofile(modpath.."/oregen.lua")  --moved to biomes
dofile(modpath.."/nodes.lua")
dofile(modpath.."/crushingfurnace.lua")
dofile(modpath.."/crafting.lua")
dofile(modpath.."/tools.lua")

--builtin stuff
dofile(modpath.."/extra.lua")
dofile(modpath.."/builtin_flowlib.lua")
dofile(modpath.."/flowlib.lua")





--[[
--CONFIG SWITCHES
--PASTE IN YOUR CONFIG FILE
								#--=============================
								#--=============================
es_biome = 1					#--1 is on 0 is off
es_armor = 1					#--1 is on 0 is off
es_shields = 1					#--1 is on 0 is off
es_radioactive = 1				#--1 is on 0 is off
es_climate_freeze = 0			#--1 is on 0 is off
es_climate_snow = 0				#--1 is on 0 is off
es_climate_thaw = 0				#--1 is on 0 is off
es_hard_tool_craft = 1			#--1 is on 0 is off
es_server = 0					#--1 is on 0 is off
es_anticheat = 0				#--1 is on 0 is off
es_antigrief = 0				#--1 is on 0 is off
es_kill_command = 1				#--1 is on 0 is off
es_itemdrop = 1					#--1 is on 0 is off
es_musicmod = 1					#--1 is on 0 is off
es_skybox_space = 1				#--1 is on 0 is off
es_hud_clock = 1				#--1 is on 0 is off
es_invisible_tool = 0			#--1 is on 0 is off
								#--=============================
								#--=============================
]]

--====================================
--====================================


local es_armor = tonumber(minetest.settings:get("es_armor"))
if not es_armor then
   es_armor = 1
   minetest.settings:set("es_armor",
   es_armor)
end

local es_shields = tonumber(minetest.settings:get("es_shields"))
if not es_shields then
   es_shields = 1
   minetest.settings:set("es_shields",
   es_shields)
end

local es_radioactive = tonumber(minetest.settings:get("es_radioactive"))
if not es_radioactive then
   es_radioactive = 1
   minetest.settings:set("es_radioactive",
   es_radioactive)
end

local es_climate_freeze = tonumber(minetest.settings:get("es_climate_freeze"))
if not es_climate_freeze then
   es_climate_freeze = 0
   minetest.settings:set("es_climate_freeze",
   es_climate_freeze)
end

local es_climate_snow = tonumber(minetest.settings:get("es_climate_snow"))
if not es_climate_snow then
   es_climate_snow = 0
   minetest.settings:set("es_climate_snow",
   es_climate_snow)
end

local es_climate_thaw = tonumber(minetest.settings:get("es_climate_thaw"))
if not es_climate_thaw then
   es_climate_thaw = 0
   minetest.settings:set("es_climate_thaw",
   es_climate_thaw)
end

local es_hard_tool_craft = tonumber(minetest.settings:get("es_hard_tool_craft"))
if not es_hard_tool_craft then
   es_hard_tool_craft = 1
   minetest.settings:set("es_hard_tool_craft",
   es_hard_tool_craft)
end

local es_server = tonumber(minetest.settings:get("es_server"))
if not es_server then
   es_server = 1
   minetest.settings:set("es_server",
   es_server)
end

local es_anticheat = tonumber(minetest.settings:get("es_anticheat"))
if not es_anticheat then
   es_anticheat = 0
   minetest.settings:set("es_anticheat",
   es_anticheat)
end

local es_antigrief = tonumber(minetest.settings:get("es_antigrief"))
if not es_antigrief then
   es_antigrief = 0
   minetest.settings:set("es_antigrief",
   es_antigrief)
end

local es_kill_command = tonumber(minetest.settings:get("es_kill_command"))
if not es_kill_command then
   es_kill_command = 1
   minetest.settings:set("es_kill_command",
   es_kill_command)
end

local es_itemdrop = tonumber(minetest.settings:get("es_itemdrop"))
if not es_itemdrop then
   es_itemdrop = 1
   minetest.settings:set("es_itemdrop",
   es_itemdrop)
end

local es_musicmod = tonumber(minetest.settings:get("es_musicmod"))
if not es_musicmod then
   es_musicmod = 1
   minetest.settings:set("es_musicmod",
   es_musicmod)
end

local es_skybox_space = tonumber(minetest.settings:get("es_skybox_space"))
if not es_skybox_space then
   es_skybox_space = 1
   minetest.settings:set("es_skybox_space",
   es_skybox_space)
end

local es_hud_clock = tonumber(minetest.settings:get("es_hud_clock"))
if not es_skybox_space then
   es_hud_clock = 1
   minetest.settings:set("es_hud_clock",
   es_hud_clock)
end

local es_invisible_tool = tonumber(minetest.settings:get("es_invisible_tool"))
if not es_skybox_space then
   es_invisible_tool = 0
   minetest.settings:set("es_invisible_tool",
   es_invisible_tool)
end




--====================================================================
--====================================================================
if es_radioactive == 1 then	--add radiation
	dofile(modpath.."/radiation.lua")
end
if es_climate_freeze == 1 then	--add freezing water and thickening ice
	dofile(minetest.get_modpath("es").."/freeze.lua")
end
if es_climate_snow == 1 then	--add snow spread effect to grasses then to pure snowblock
	dofile(minetest.get_modpath("es").."/snow.lua")
end
if es_climate_thaw == 1 then	--add thawing ice (caution, it will melt most ice if light is above)
	dofile(minetest.get_modpath("es").."/thaw.lua")
end
if es_server == 1 then	--server shutdown script and spawning function
	dofile(minetest.get_modpath("es").."/shutdown.lua")
	dofile(minetest.get_modpath("es").."/spawn.lua")
end
if es_anticheat == 1 then	--add anti cheating.  noclip and fly caught by rnd code
	dofile(minetest.get_modpath("es").."/antigrief.lua")
end
if es_antigrief == 1 then	--add anti griefing.  no add liquid above 0
	dofile(minetest.get_modpath("es").."/antigrief.lua")
end
if es_kill_command == 1 then	--add self kill command type /killme
	dofile(minetest.get_modpath("es").."/kill.lua")
end
if es_itemdrop == 1 then	--add item drop
	dofile(minetest.get_modpath("es").."/itemdrop.lua")
end
if es_musicmod == 1 then	--add music for times of day
	dofile(minetest.get_modpath("es").."/musicmod.lua")
end
if es_skybox_space == 1 then	--add space realm and pure dark in caves
	dofile(minetest.get_modpath("es").."/cavespace.lua")
end
if es_hud_clock == 1 then	--add clock to your hud
	dofile(minetest.get_modpath("es").."/hudclock.lua")
end
if es_invisible_tool == 1 then	--add invisibility command type /i
	dofile(minetest.get_modpath("es").."/invis.lua")
end


--ARMOR
if armor then
	if es_armor == 1 then	--add 3d_armor
		dofile(minetest.get_modpath("es").."/armor.lua")
	end
	if es_shields == 1 then	--add Shields
		dofile(minetest.get_modpath("es").."/shields.lua")
	end
end


--farming redo
if farming and redo then
	dofile(modpath.."/farming.lua")
end

--flowers on es nodes
if flowers then
	dofile(modpath.."/flowers.lua")
end

--MOREBLOCKS / STAIRSPLUS SUPPORT
if moreblocks then
	dofile(modpath.."/mostair.lua")
end

--STAIR SUPPORT
if stairs then
	dofile(modpath.."/stair.lua")
end
