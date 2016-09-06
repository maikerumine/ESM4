--mobs_badplayer v1.4
--maikerumine
--made for Extreme Survival game
--License for code WTFPL


local path = minetest.get_modpath("mobs_badplayer")

--npc good
dofile(path .. "/es_npc_nice.lua") -- 
--npc bad
dofile(path .. "/es_npc_bad.lua") -- 


--crafts, weapons, etc
dofile(path .. "/crafts.lua")
dofile(path .. "/throwing.lua")


print("[ES-Mobs] Extreme")
print("[ES-Mobs] Survival")
print("[ES-Mobs] Mobs")
print("[ES-Mobs] Loaded!")
