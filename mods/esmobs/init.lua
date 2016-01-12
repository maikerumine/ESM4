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


--dofile(minetest.get_modpath("esmobs").."/esconfig.lua")

	dofile(minetest.get_modpath("esmobs").."/api.lua")
	dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
	dofile(minetest.get_modpath("esmobs").."/esmonster.lua")
	dofile(minetest.get_modpath("esmobs").."/esbadplayer.lua")
	dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
	dofile(minetest.get_modpath("esmobs").."/crafts.lua")
	dofile(minetest.get_modpath("esmobs").."/mcmobs.lua")
	dofile(minetest.get_modpath("esmobs").."/spawner.lua")

--MOB SEPCS
	if inventory_plus then
		dofile(minetest.get_modpath("esmobs").."/mobspec.lua")
	end

--IF ES IS LOADED YOU WILL SEE OTHER MOBS HOLDING THE SPECIAL TOOLS
	if es then
		dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
	end

--IN CASE BONES IS NOT INSTALLED, THIS OVERRIDES NODES SO YOU HAVE THEM FOR MOBS.
	if not bones then
		dofile(minetest.get_modpath("esmobs").."/bones.lua")
		minetest.register_alias("bones:bones", "esmobs:bones")
	end
		if bones then
		minetest.register_alias("esmobs:bones", "bones:bones")
	end

--IN CASE THROWING IS NOT INSTALLED, THIS DOSEN'T LOAD MCMOBS
	if not throwing then
		dofile(minetest.get_modpath("esmobs").."/throwing.lua")
		minetest.register_alias("throwing:arrow_entity", "esmobs:throwing_entity")
		minetest.register_alias("throwing:bow", "esmobs:bow")
		minetest.register_alias("throwing:arrow", "esmobs:arrow")
	end
	if throwing then
		minetest.register_alias("esmobs:arrow_entity", "throwing:arrow_entity")
		minetest.register_alias("esmobs:bow", "throwing:bow")
		minetest.register_alias("esmobs:arrow", "throwing:arrow")
	end

	print("[ES-Mobs] Extreme")
	print("[ES-Mobs] Survival")
	print("[ES-Mobs] Mobs")
	print("[ES-Mobs] Loaded!")

	if minetest.setting_get("log_mods") then
		minetest.log("action", "esmobs mobs loaded")
	end
