--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--version 1.8
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0

es = {}


--MAPFIX CODE  (USE WHEN DARK SHADOWS FORM, TYPE /MAPFIX)
minetest.register_chatcommand("mapfix", {
	params = "<size>",
	description = "Recalculate the flowing liquids of a chunk",
	func = function(name, param)
		local pos = minetest.get_player_by_name(name):getpos()
		local size = tonumber(param) or 40
		if size > 50 and not minetest.check_player_privs(name, {server=true}) then
			return false, "You need the server privilege to exceed the radius of 50 blocks"
		end
		local minp, maxp = {x = math.floor(pos.x - size), y = math.floor(pos.y - size), z = math.floor(pos.z - size)}, {x = math.ceil(pos.x + size), y = math.ceil(pos.y + size), z = math.ceil(pos.z + size)}
		local vm = minetest.get_voxel_manip()
		vm:read_from_map(minp, maxp)
		vm:calc_lighting()
		vm:update_liquids()
		vm:write_to_map()
		vm:update_map()
		return true, "Done."
	end,
})
--[[
--RND CODE
--NO GRIEF WITH liquids
local function disable_placing_above_ground(name)

   local table = minetest.registered_nodes[name]; if not table then return end
   local table2 = {}
   for i,v in pairs(table) do table2[i] = v end
   table2.after_place_node = function(pos, placer, itemstack, pointed_thing)
      if pos.y>=0 then minetest.set_node(pos,{name = "air"}) end
   end
   minetest.register_node(":"..name, table2)
end

minetest.after(0,function()
   disable_placing_above_ground("default:water_source");
   disable_placing_above_ground("default:river_water_source");
   disable_placing_above_ground("default:lava_source");
   disable_placing_above_ground("es:toxic_water_source");
   disable_placing_above_ground("es:mud");
   -- add here all other sources: toxic water, mud ,....
end)
]]


--Killme
minetest.register_chatcommand("killme", {
	description = "Kill yourself to respawn",
	func = function(name)
		local player = minetest.get_player_by_name(name)
		if player then
			if minetest.settings:get_bool("enable_damage") then
				player:set_hp(0)
				return true
			else
				for _, callback in pairs(core.registered_on_respawnplayers) do
					if callback(player) then
						return true
					end
				end

				-- There doesn't seem to be a way to get a default spawn pos from the lua API
				return false, "No static_spawnpoint defined"
			end
		else
			-- Show error message if used when not logged in, eg: from IRC mod
			return false, "You need to be online to be killed!"
		end
	end
})

