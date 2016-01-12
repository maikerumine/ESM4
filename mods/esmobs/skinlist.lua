esmobs.list = {}
esmobs.add = function(skin)
	table.insert(esmobs.list,skin)
end

local id

id = 1
while true do
	local f = io.open(minetest.get_modpath("esmobs").."/textures/player_"..id..".png")
	if (not f) then break end
	f:close()
	esmobs.add("player_"..id)
	id = id +1
end

id = 1
while true do
	local f = io.open(minetest.get_modpath("esmobs").."/textures/character_"..id..".png")
	if (not f) then break end
	f:close()
	esmobs.add("character_"..id)
	id = id +1
end

id = 1
while true do
	local f = io.open(minetest.get_modpath("esmobs").."/textures/badplayer_"..id..".png")
	if (not f) then break end
	f:close()
	esmobs.add("badplayer_"..id)
	id = id +1
end

id = 1
while true do
	local f = io.open(minetest.get_modpath("esmobs").."/textures/mobs_"..id..".png")
	if (not f) then break end
	f:close()
	esmobs.add("mobs_"..id)
	id = id +1
end

id = 1
while true do
	local f = io.open(minetest.get_modpath("esmobs").."/textures/mcmobs_"..id..".png")
	if (not f) then break end
	f:close()
	esmobs.add("mcmobs_"..id)
	id = id +1
end