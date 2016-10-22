--esmobs v1.3
--maikerumine
--made for Extreme Survival game
--License for code WTFPL


local path = minetest.get_modpath("mobs_esmobs")

--dofile(minetest.get_modpath("mobs_redo").."/api.lua")
dofile(path .. "/es_monster.lua")



	print("[ES-Mobs] Extreme")
	print("[ES-Mobs] Survival")
	print("[ES-Mobs] Mobs")
	print("[ES-Mobs] Loaded!")

	if minetest.setting_get("log_mods") then
		minetest.log("action", "esmobs mobs loaded")
	end
