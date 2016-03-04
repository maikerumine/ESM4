--esmobs v01.8
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
]]
esmobs={}
--API AND CONFIG
	--dofile(minetest.get_modpath("esmobs").."/config.lua")
	dofile(minetest.get_modpath("esmobs").."/api.lua")

--MOB SELECTION
		dofile(minetest.get_modpath("esmobs").."/es_animal.lua")
		dofile(minetest.get_modpath("esmobs").."/es_npc_nice.lua")
		dofile(minetest.get_modpath("esmobs").."/es_npc_bad.lua")
		dofile(minetest.get_modpath("esmobs").."/es_monster.lua")

--CRAFTS AND MISC
	dofile(minetest.get_modpath("esmobs").."/crafts.lua")
	dofile(minetest.get_modpath("esmobs").."/spawner.lua")

--MOB SPECS
	if inventory_plus then
		dofile(minetest.get_modpath("esmobs").."/mobspec.lua")
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
--	if not throwing then
		dofile(minetest.get_modpath("esmobs").."/throwing.lua")
		minetest.register_alias("throwing:arrow_entity", "esmobs:throwing_entity")
		minetest.register_alias("throwing:bow", "esmobs:bow")
		minetest.register_alias("throwing:arrow", "esmobs:arrow")
--	end

	print("[ES-Mobs] Extreme")
	print("[ES-Mobs] Survival")
	print("[ES-Mobs] Mobs")
	print("[ES-Mobs] Loaded!")

	if minetest.setting_get("log_mods") then
		minetest.log("action", "esmobs mobs loaded")
	end
