
local modpath = minetest.get_modpath("es")
es.modpath = modpath

--MAP GENERATION SELECTION SWITCH
es.MAP_SETTING = 5;	--Enter a number between 0 and 5 to choose map style.  See line 83 for details.

--(CURRENTLY YOU NEED TO REPLACE THE DEFAULT WITH
--the one that says stone IF YOU WANT AN ALL STONE WORLD.)
--MAP GENERATION SELECTION SWITCH
--ES OVERRIDE  SETTINGS IN INIT FILE IN ES FOLDER

	if es.MAP_SETTING == 0 then	--DEFAULT MAPGEN
		dofile(minetest.get_modpath("default").."/mapgen.lua")
	end
	if es.MAP_SETTING == 1 then	--ALL STONE LIKE JUST TEST
		dofile(modpath.."/mapgen-stone.lua")
	end
	if es.MAP_SETTING == 2 then	--ALL DESERT -STONE STARTS AT -413
		dofile(modpath.."/mapgen-desert.lua")
	end
	if es.MAP_SETTING == 3 then	--STONE, DESERT, ALPINE CLIMATE
		dofile(modpath.."/mapgen-es.lua")
	end
	if es.MAP_SETTING == 4 then	--NO DESERT OR COLD CLIMATE
		dofile(modpath.."/mapgen-v7green.lua")
	end
	if es.MAP_SETTING == 5 then	--CUSTOM ES
		--dofile(modpath.."/mapgen-v7es_custom.lua")
		dofile(modpath.."/mapgen.lua")
	end
	
	
	--Due to complexity it is best to put map choice in default and rename to mapgen.lua