--[[

   Hidden Doors init.lua

   Copyright 2017 Hamlet <h4mlet@riseup.net>, Napiophelios

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.

]]--


-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
S, NS = dofile(MP.."/intllib.lua")


-- Hidden Doors' operation mode
local hidden_doors_remover = minetest.settings:get_bool("hidden_doors_remover")

if not hidden_doors_remover then
   hidden_doors_remover = false
   minetest.settings:set_bool("hidden_doors_remover", hidden_doors_remover)
end

if (hidden_doors_remover == false) then
   dofile(minetest.get_modpath("hidden_doors") .. "/main.lua")
end

if (hidden_doors_remover == true) then
   dofile(minetest.get_modpath("hidden_doors") .. "/remover.lua")
end


if minetest.settings:get("log_mods") then
   minetest.log("action", S("[Mod] Hidden Doors loaded"))
end
