--[[

   Hidden Doors main.lua

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

hidden_doors = {}

local description_1 = S("Concealed ")
local description_2 = S(" Door")

-- Hidden Doors' sounds
local hidden_doors_vol = tonumber(minetest.settings:get("hidden_doors_vol"))

if not hidden_doors_vol then
   hidden_doors_vol = 5.0
   minetest.settings:set("hidden_doors_vol", hidden_doors_vol)
end

stone_default = default.node_sound_stone_defaults()
stone_open = {name = "hidden_doors_stone_door_open", gain = hidden_doors_vol}
stone_close = {name = "hidden_doors_stone_door_close", gain = hidden_doors_vol}

wood_default = default.node_sound_wood_defaults()
wood_open = "doors_door_open"
wood_close = "doors_door_close"

metal_default = default.node_sound_metal_defaults()
metal_open = "doors_steel_door_open"
metal_close = "doors_steel_door_close"

gem_default = default.node_sound_glass_defaults()
gem_open = "doors_glass_door_open"
gem_close = "doors_glass_door_close"

-- Hidden door's base recipe item
recipeItem1 = "doors:door_wood"

-- Hidden door's texture variables
local pixels = 16   local width = 0   local height = 0

local image_size = ""

local Y1 = 0   local X1 = 0
local Y2 = 0   local X2 = 0
local Y3 = 0   local X3 = 0
local Y4 = 0   local X4 = 0

local hidden_doors_res = tonumber(minetest.settings:get("hidden_doors_res"))


if not hidden_doors_res then

   hidden_doors_res = pixels
   minetest.settings:set("hidden_doors_res", hidden_doors_res)

end


if hidden_doors_res == 16 then

   -- Item's inventory texture dimensions
   inv_w = pixels * 2   inv_h = pixels * 2
   inv_size = inv_w.."x"..inv_h

   -- Node's texture dimensions
   width = (pixels * 2) + 6   height = pixels * 2
   image_size = width.."x"..height

   -- Composed texture's dimensions
   Y1 = pixels    X1 = 8
   Y2 = 6         X2 = 6
   Y3 = pixels    X3 = pixels
   Y4 = pixels    X4 = 22


elseif hidden_doors_res == 32 then

   -- Item's inventory texture dimensions
   inv_w = pixels * 4   inv_h = pixels * 4
   inv_size = inv_w.."x"..inv_h

   -- Node's texture dimensions
   width = ((pixels * 2) + 6) * 2   height = pixels * 4
   image_size = width.."x"..height

   -- Composed texture's dimensions
   Y1 = 32           X1 = 16
   Y2 = 12           X2 = 12
   Y3 = pixels * 2   X3 = pixels * 2
   Y4 = pixels * 2   X4 = 44


elseif hidden_doors_res == 64 then

   -- Item's inventory texture dimensions
   inv_w = pixels * 8   inv_h = pixels * 8
   inv_size = inv_w.."x"..inv_h

   -- Node's texture dimensions
   width = ((pixels * 2) + 6) * 4   height = pixels * 8
   image_size = width .. "x" .. height

   -- Composed texture's dimensions
   Y1 = 64           X1 = 32
   Y2 = 24           X2 = 24
   Y3 = pixels * 4   X3 = pixels * 4
   Y4 = pixels * 4   X4 = 88


elseif hidden_doors_res == 128 then

   -- Item's inventory texture dimensions
   inv_w = pixels * 16   inv_h = pixels * 16
   inv_size = inv_w.."x"..inv_h

   -- Node's texture dimensions dimensions
   width = ((pixels * 2) + 6) * 8   height = pixels * 16
   image_size = width .. "x" .. height

   -- Composed texture's dimensions
   Y1 = 128          X1 = 64
   Y2 = 48           X2 = 48
   Y3 = pixels * 8   X3 = pixels * 8
   Y4 = pixels * 8   X4 = 176


else

   -- If the setting is not valid then set it to 16px and use that resolution

   hidden_doors_res = pixels
   minetest.settings:set("hidden_doors_res", hidden_doors_res)

   -- Item's inventory texture dimensions
   inv_w = pixels * 2   inv_h = pixels * 2
   inv_size = inv_w.."x"..inv_h

   -- Node's texture dimensions
   width = (pixels * 2) + 6   height = pixels * 2
   image_size = width.."x"..height

   -- Composed texture's dimensions
   Y1 = pixels    X1 = 8
   Y2 = 6         X2 = 6
   Y3 = pixels    X3 = pixels
   Y4 = pixels    X4 = 22

end


function hidden_doors.register_hidden_doors(modname, subname, recipeItem1,
   recipeItem2, recipeItem3, desc, sounds, sound_open, sound_close)

   local texture_name = modname .. "_" .. subname .. ".png"

   -- If the door uses textures from Darkage then use the default 16px res.
   -- Do the same for Moreblocks.
   if (modname ~= "darkage") and (modname ~= "moreblocks") then

      local new_texture = "[combine:" .. image_size .. ": 0," ..
         "0=" .. texture_name .. ": 0," ..
         Y3 .. "=" .. texture_name .. ":" .. X2 .. "," ..
         "0=" .. texture_name .. ":" .. X2 .. "," ..
         Y3 .. "=" .. texture_name .. ":" .. X4 .. "," ..
         "0=" .. texture_name .. ":" .. X4 .. "," ..
         Y3 .. "=" .. texture_name

      doors.register("hidden_door_" .. subname, {

         description = description_1 .. desc .. description_2,

         tiles = {{ name = "(" .. new_texture ..
            "^[transformFX)^[combine:" .. image_size.. ":" ..X3.. "," ..
            "0=" .. texture_name .. ":" .. X3 .. "," ..
            Y3 .. "=" .. texture_name , backface_culling = true }},

         inventory_image = "[combine:" .. inv_size .. ":" .. X1 .. "," ..
            "0=" .. texture_name .. ":" .. X1 .. "," ..
            Y1 .. "=" ..texture_name,

         groups = {cracky = 1, level = 2},
         sounds = sounds,
         sound_open = sound_open,
         sound_close = sound_close,

         recipe = { {recipeItem1, recipeItem2, recipeItem3}, }}
      )

   else

      local new_texture = "[combine:" .. "38x32" .. ": 0," ..
         "0=" .. texture_name .. ": 0," ..
         "16=" .. texture_name .. ": 6," ..
         "0=" .. texture_name .. ": 6," ..
         "16=" .. texture_name .. ": 22," ..
         "0=" .. texture_name .. ": 22," ..
         "16=" .. texture_name

      doors.register("hidden_door_" .. subname, {

         description = description_1 .. desc .. description_2,

         tiles = {{ name = "(" .. new_texture ..
            "^[transformFX)^[combine:" .. "38x32" .. ": 16," ..
            "0=" .. texture_name .. ": 16," ..
            "16=" .. texture_name , backface_culling = true }},

         inventory_image = "[combine:" .. "32x32" .. ": 8," ..
            "0=" .. texture_name .. ": 8," ..
            "16=" .. texture_name,

         groups = {cracky = 1, level = 2},
         sounds = sounds,
         sound_open = sound_open,
         sound_close = sound_close,

         recipe = { {recipeItem1, recipeItem2, recipeItem3}, }}
      )

   end

end

--
-- Minetest Game's based hidden doors
--

dofile(MP .. "/minetest_game.lua")


--
-- Compatible modules' based hidden doors
--
--[[
if minetest.get_modpath("darkage") then

   dofile(MP .. "/darkage.lua")

end

if minetest.get_modpath("moreblocks") then

   dofile(MP .. "/moreblocks.lua")

end
]]

if minetest.settings:get("log_mods") then
   minetest.log("action", S("[Mod] Hidden Doors loaded"))
end
