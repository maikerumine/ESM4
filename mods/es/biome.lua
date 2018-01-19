--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine
es = {}
local modpath = minetest.get_modpath("es")
es.modpath = modpath
--minetest.clear_registered_biomes()

local es_biome = tonumber(minetest.settings:get("es_biome"))
if not es_biome then
   es_biome = 1
   minetest.settings:set("es_biome",
   es_biome)
end


if es_biome == 0 then	--add an all stone world
	dofile(modpath.."/biome_stone.lua")
end

if es_biome == 1 then	--add default extreme survival biome
	dofile(modpath.."/biome_es.lua")
end

if es_biome == 3 then	--add fallout themes wasteland
	dofile(modpath.."/biome_aftermath.lua")
	dofile(modpath.."/biome_aftermath_node.lua")
end

if es_biome == 4 then	--add cobbleworld
	dofile(modpath.."/biome_cobble.lua")
end

if es_biome == 5 then	--add iceworld
	dofile(modpath.."/biome_ice.lua")
end