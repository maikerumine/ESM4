--esmobs v0.0.9
--maikerumine
--made for Extreme Survival game


--dofile(minetest.get_modpath("esmobs").."/esconfig.lua")

dofile(minetest.get_modpath("esmobs").."/api.lua")
dofile(minetest.get_modpath("esmobs").."/chickoboo.lua")
dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
dofile(minetest.get_modpath("esmobs").."/esmonster.lua")
dofile(minetest.get_modpath("esmobs").."/esbadplayer.lua")
dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
dofile(minetest.get_modpath("esmobs").."/crafts.lua")

dofile(minetest.get_modpath("esmobs").."/dirt.lua")
dofile(minetest.get_modpath("esmobs").."/icemob.lua")
dofile(minetest.get_modpath("esmobs").."/nicemob.lua")
dofile(minetest.get_modpath("esmobs").."/crossfire.lua")
dofile(minetest.get_modpath("esmobs").."/bloco.lua")
dofile(minetest.get_modpath("esmobs").."/mcmobs.lua")

dofile(minetest.get_modpath("esmobs").."/spawner.lua")


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
	
--TNT HACK
	dofile(minetest.get_modpath("esmobs").."/tnt.lua")
	
	
if minetest.setting_get("log_mods") then
	minetest.log("action", "esmobs mobs loaded")
end
