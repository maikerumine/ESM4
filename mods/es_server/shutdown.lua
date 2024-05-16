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
   if ((t.hour == H or t.hour == X) and (t.min == M) and (t.sec <= 0)
         and ((D == nil) or (t.wday == D))) then
		 --minetest.sound_play("SummertimeSadness")
		 --minetest.sound_play("mcl_jukebox_track_8")
		 minetest.sound_play("psycastria")
      minetest.chat_send_all("Scheduled shutdown.  0000 ZULU "
            .."Shutting down in FIVE minutes.  Enjoy the break")
	          minetest.chat_send_all("Find safety. "
            .."Never forget ESM.     ")
			
      --minetest.after(2, minetest.request_shutdown)
   end
      if ((t.hour == Y or t.hour == Z) and (t.min ==N) and (t.sec <= 0)
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
	          minetest.chat_send_all("   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-----up. ")
	          minetest.chat_send_all("   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-----up. ")
	          minetest.chat_send_all("R   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-----up. ")
	          minetest.chat_send_all("E   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-----up. ")
	          minetest.chat_send_all("V   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-----up. ")
	          minetest.chat_send_all("!   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-----up. ")
	          minetest.chat_send_all("V   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-----up. ")
	          minetest.chat_send_all("A   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-----up. ")
	          minetest.chat_send_all("L   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few while map is backed-----up. ")			
	          minetest.chat_send_all("2020 ESM Back to the basics revival tour! "
            .."  Please come back in a few while map is backed-----up. ")
		minetest.sound_play("hohoho")	
		minetest.chat_send_all("!   SHUTTING SERVER DOWN NOW! "
            .."  Please come back in a few moments while the server undergoes it's daily maintenance.  Have a cup of tea and enjoy perhaps Just Test, @test@ JT2, Must Test,  or browse the forum for fun reading in the meantime.  Helmet: In The Mean time!")
      minetest.after(5, minetest.request_shutdown)
   end
end)



