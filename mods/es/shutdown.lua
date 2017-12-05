--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0

es = {}



--Fixer's code--v
--Modified by maikerumine
-- Time to shut down server.
-- Default is twice a day: at 06:05 and 18:05
local H = 19
local X = 19
local Y = 20
local Z = 20

local M = 55
local N = 00

-- Day to shut down server.
-- Default is daily shutdown
-- 1=Sunday, ..., 7=Saturday, nil=Shutdown daily
local D = nil

local timer = 0
minetest.register_globalstep(function(dtime)
   timer = timer + dtime
   if timer < 1 then return end
   timer = 0
   local t = os.date("*t")
   if ((t.hour == H or t.hour == X) and (t.min == M) and (t.sec <= 2)
         and ((D == nil) or (t.wday == D))) then
      minetest.chat_send_all("Scheduled shutdown.  2000 Eastern Time Zone DST  0000 ZULU "
            .."Shutting down in FIVE minutes.  Enjoy the break")
	          minetest.chat_send_all("Find safety. "
            .."Never forget ESM.")
      --minetest.after(2, minetest.request_shutdown)
   end
      if ((t.hour == Y or t.hour == Z) and (t.min ==N) and (t.sec <= 2)
         and ((D == nil) or (t.wday == D))) then
      minetest.chat_send_all("SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-up. ")
	          minetest.chat_send_all("E   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed--up. ")
	          minetest.chat_send_all("S   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed---up. ")
	          minetest.chat_send_all("M   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed----up. ")
	          minetest.chat_send_all("!   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-----up. ")	         
		minetest.chat_send_all("!   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed------up. ")
      minetest.after(2, minetest.request_shutdown)
   end
end)

--[[
minetest.register_globalstep(function(dtime)
   timer = timer + dtime
   if timer < 1 then return end
   timer = 0
   local t = os.date("*t")
   if ((t.hour == H or t.hour == X or t.hour == Y or t.hour == Z) and (t.min ==N) and (t.sec <= 2)
         and ((D == nil) or (t.wday == D))) then
      minetest.chat_send_all("SHUTTING SERVER DOWN NOW!"
            .."  Please come back in a minute.")
	          minetest.chat_send_all("SHUTTING SERVER DOWN NOW!"
            .."  Please come back in a minute.")
	          minetest.chat_send_all("SHUTTING SERVER DOWN NOW!"
            .."  Please come back in a minute.")
	          minetest.chat_send_all("SHUTTING SERVER DOWN NOW!"
            .."  Please come back in a minute.")
	          minetest.chat_send_all("SHUTTING SERVER DOWN NOW!"
            .."  Please come back in a minute.")
      minetest.after(2, minetest.request_shutdown)
   end
end)
]]


--MAPFIX CODE
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


