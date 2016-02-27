--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL

--[[
DEPENDS:
default
inventory_plus?
farming?
bones?
intllib?
es?
farorb?
jdukebox?
]]
esmobs={}
--API AND CONFIG
	--dofile(minetest.get_modpath("esmobs").."/config.lua")
	dofile(minetest.get_modpath("esmobs").."/api.lua")
	dofile(minetest.get_modpath("esmobs").."/zmastermoblist.lua")  --All mobs reside in here, the spawning is handles by groups in the mob settings below.   This ensures no unknown nodes during switching.

	--BECAUSE I SUCK AT PROGRAMMING THIS IS THE OVER RIDE TO THE BELOW CODE
		dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
		dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
		dofile(minetest.get_modpath("esmobs").."/mtmonster.lua")
		dofile(minetest.get_modpath("esmobs").."/esbadplayer.lua")
		dofile(minetest.get_modpath("esmobs").."/esmonster.lua")
		dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
		dofile(minetest.get_modpath("esmobs").."/esbadplayer2.lua")

--[[
--MOB SETTINGS leave this alone, use config file to change.
	if (esmobs.MOB_SETTING ==  1) then   --Just Animals.
		dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
	end

	if (esmobs.MOB_SETTING == 2) then	--Animals and good npc's.
		dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
		dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
		if es then
			dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
		end
	end

	if (esmobs.MOB_SETTING == 3) then	--Animals, Good npc, and MT monsters.
		dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
		dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
		dofile(minetest.get_modpath("esmobs").."/mtmonster.lua")
		if es then
			dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
		end
	end

	if (esmobs.MOB_SETTING == 4) then	--Animals, Good npc, and, MT monsters.
		dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
		dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
		dofile(minetest.get_modpath("esmobs").."/mtmonster.lua")
		if es then
			dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
		end
	end

	if (esmobs.MOB_SETTING == 5) then	--Animals, Good npc, MT monsters, ES monsters,  and Bad npc's.   All 76 of them.
		dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
		dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
		dofile(minetest.get_modpath("esmobs").."/mtmonster.lua")
		dofile(minetest.get_modpath("esmobs").."/esbadplayer.lua")
		dofile(minetest.get_modpath("esmobs").."/esmonster.lua")
		if es then
			dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
			dofile(minetest.get_modpath("esmobs").."/esbadplayer2.lua")
		end
	end

	if (esmobs.MOB_SETTING == 6) then	--MT Monsters, Bad npc's.
		dofile(minetest.get_modpath("esmobs").."/mtmonster.lua")
		dofile(minetest.get_modpath("esmobs").."/esbadplayer.lua")
		if es then
			dofile(minetest.get_modpath("esmobs").."/esbadplayer2.lua")
		end
	end

	if (esmobs.MOB_SETTING == 7) then	--Good npc, Bad npc's.
		dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
		dofile(minetest.get_modpath("esmobs").."/esbadplayer.lua")
		if es then
			dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
			dofile(minetest.get_modpath("esmobs").."/esbadplayer2.lua")
		end
	end

	if (esmobs.MOB_SETTING == 8) then	 Animals.
		dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
	end

	if (esmobs.MOB_SETTING == 9) then	--MT monsters and Animals.
		dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
		dofile(minetest.get_modpath("esmobs").."/mtmonster.lua")
	end

	if (esmobs.MOB_SETTING == 10) then	--Good npc's.
		dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
		if es then
			dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
		end
	end

	if (esmobs.MOB_SETTING == 11) then	--MT monsters, ES monsters, and Bad npc's.
		dofile(minetest.get_modpath("esmobs").."/mtmonster.lua")
		dofile(minetest.get_modpath("esmobs").."/esbadplayer.lua")
		dofile(minetest.get_modpath("esmobs").."/esmonster.lua")
		if es then
			dofile(minetest.get_modpath("esmobs").."/esbadplayer2.lua")
		end
	end

	if (esmobs.MOB_SETTING == 12) then	--MT Monsters.
		dofile(minetest.get_modpath("esmobs").."/mtmonster.lua")
	end
]]
--MOBS
	--dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
	--dofile(minetest.get_modpath("esmobs").."/esmonster.lua")
	--dofile(minetest.get_modpath("esmobs").."/mtmonster.lua")
	--dofile(minetest.get_modpath("esmobs").."/esbadplayer.lua")
	--dofile(minetest.get_modpath("esmobs").."/esbadplayer2.lua")
	--dofile(minetest.get_modpath("esmobs").."/esanimal.lua")

--CRAFTS AND MISC
	dofile(minetest.get_modpath("esmobs").."/crafts.lua")
	dofile(minetest.get_modpath("esmobs").."/spawner.lua")

--MOB SEPCS
	if inventory_plus then
		dofile(minetest.get_modpath("esmobs").."/mobspec.lua")
	end

--IF ES IS LOADED YOU WILL SEE OTHER MOBS HOLDING THE SPECIAL TOOLS
	--if es then
		--dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
	--end
	--if es then
		--dofile(minetest.get_modpath("esmobs").."/esbadplayer2.lua")
	--end

--IN CASE BONES IS NOT INSTALLED, THIS OVERRIDES NODES SO YOU HAVE THEM FOR MOBS.
	if not bones then
		dofile(minetest.get_modpath("esmobs").."/bones.lua")
		minetest.register_alias("bones:bones", "esmobs:bones")
	end
		if bones then
		minetest.register_alias("esmobs:bones", "bones:bones")
	end

--IN CASE THROWING IS NOT INSTALLED, THIS DOSEN'T LOAD MCMOBS
--	if not throwing then
		dofile(minetest.get_modpath("esmobs").."/throwing.lua")
		minetest.register_alias("throwing:arrow_entity", "esmobs:throwing_entity")
		minetest.register_alias("throwing:bow", "esmobs:bow")
		minetest.register_alias("throwing:arrow", "esmobs:arrow")
--	end
--	if throwing then
--		minetest.register_alias("esmobs:arrow_entity", "throwing:arrow_entity")
--		minetest.register_alias("esmobs:bow", "throwing:bow")
--		minetest.register_alias("esmobs:arrow", "throwing:arrow")
--	end

	print("[ES-Mobs] Extreme")
	print("[ES-Mobs] Survival")
	print("[ES-Mobs] Mobs")
	print("[ES-Mobs] Loaded!")

	if minetest.setting_get("log_mods") then
		minetest.log("action", "esmobs mobs loaded")
	end
