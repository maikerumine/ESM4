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



--Alias                      "old"--->"new"
--THIS TO FIX MERU
minetest.register_alias("meru:destone", "default:desert_stone")
minetest.register_alias("meru:stone", "default:sandstone")

--THIS TO FIX TECHNIC
minetest.register_alias("technic:diamond_drill_head", "default:glass")
minetest.register_alias("technic:green_energy_crystal", "es:emeraldblock")
minetest.register_alias("technic:blue_energy_crystal", "es:aikerumblock")
minetest.register_alias("technic:red_energy_crystal", "es:rubyblock")
minetest.register_alias("technic:fine_copper_wire", "default:copper_block")
minetest.register_alias("technic:fine_gold_wire", "default:gold_block")
minetest.register_alias("technic:fine_silver_wire", "default:steel_block")
minetest.register_alias("technic:copper_coil", "default:copper_ingot")
minetest.register_alias("technic:motor", "default:steel_block")
minetest.register_alias("technic:lv_transformer", "default:copperblock")
minetest.register_alias("technic:mv_transformer", "default:bronzeblock")
minetest.register_alias("technic:hv_transformer", "default:goldblock")
minetest.register_alias("technic:control_logic_unit", "default:meselamp")
minetest.register_alias("technic:mixed_metal_ingot", "default:steel_block")
minetest.register_alias("technic:carbon_cloth", "default:coalblock")
minetest.register_alias("technic:machine_casing", "default:stone_with_iron")
minetest.register_alias("technic:nothing", "default:glass")

minetest.register_alias("technic:hv_battery_box0", "default:diamondblock")
minetest.register_alias("technic:hv_cable0", "default:mese")
--minetest.register_alias("technic:forcefield_emitter_off", "default:glass")
--minetest.register_alias("technic:forcefield_emitter_on", "default:glass")
minetest.register_alias("technic:forcefield_emitter", "es:infiniumblock")
minetest.register_alias("technic:forcefield", "default:stone_with_diamond")
minetest.register_alias("technic:hv_generator", "es:aikerumblock")
minetest.register_alias("technic:hv_nuclear_reactor_core", "es:infiniumblock")
minetest.register_alias("technic:hv_nuclear_reactor_core_active", "es:infiniumblock")
minetest.register_alias("technic:corium", "es:stone_with_emerald")
minetest.register_alias("technic:corium_source", "default:water_source")
minetest.register_alias("technic:corium_flowing", "default:water_flowing")
minetest.register_alias("technic:bucket_corium", "bucket:bucket_water")
minetest.register_alias("technic:chernobylite_block", "es:stone_with_emerald")
minetest.register_alias("technic:quarry", "default:stone_with_diamond")
minetest.register_alias("technic:solar_array_hv 1", "default:stone_with_diamond")

minetest.register_alias("technic:mv_alloy_furnace", "default:furnace")
minetest.register_alias("technic:mv_battery_box0", "default:stone_with_iron")
minetest.register_alias("technic:mv_cable0", "default:steel_block")
minetest.register_alias("technic:mv_compressor", "default:stone_with_copper")
minetest.register_alias("technic:mv_electric_furnace", "default:furnace")
minetest.register_alias("technic:mv_extractor", "default:diamond_block")
minetest.register_alias("technic:mv_generator", "default:mese")
minetest.register_alias("technic:mv_grinder", "default:furnace")
minetest.register_alias("technic:power_radiator", "default:glass")
minetest.register_alias("technic:power_radiator 1", "default:glass")
minetest.register_alias("technic:solar_array_mv 1", "default:meselamp")
minetest.register_alias("technic:tool_workshop", "default:stone_with_copper")
minetest.register_alias("technic:wind_mill", "default:steel_block")
minetest.register_alias("technic:wind_mill_frame", "default:glass")

minetest.register_alias("technic:lv_alloy_furnace", "default:furnace")
minetest.register_alias("technic:lv_battery_box0", "default:gold_block")
minetest.register_alias("technic:lv_cable0", "default:copper_block")
minetest.register_alias("technic:cnc", "default:goldblock")
minetest.register_alias("technic:cnc_active", "default:goldblock")
minetest.register_alias("technic:coal_alloy_furnace", "default:furnace")
minetest.register_alias("technic:coal_alloy_furnace_active", "default:furnace")
minetest.register_alias("technic:lv_compressor", "default:goldblock")
minetest.register_alias("technic:lv_electric_furnace", "default:furnace")
minetest.register_alias("technic:lv_extractor", "default:diamond_block")
minetest.register_alias("technic:lv_generator", "default:stone_with_diamond")
minetest.register_alias("technic:geothermal", "default:stone_with_diamond")
minetest.register_alias("technic:geothermal_active", "default:stone_with_diamond")
minetest.register_alias("technic:lv_grinder", "default:furnace")
minetest.register_alias("technic:music_player", "default:goldblock")
minetest.register_alias("technic:solar_array_lv 1", "default:meselamp")
minetest.register_alias("technic:solar_panel", "default:meselamp")
minetest.register_alias("technic:water_mill", "es:stone_with_aikerum")
minetest.register_alias("technic:water_mill_active", "es:stone_with_aikerum")

minetest.register_alias("technic:mineral_uranium", "es:depleted_uranium")
minetest.register_alias("technic:mineral_chromium", "es:stone_with_ruby")
minetest.register_alias("technic:mineral_zinc", "es:stone_with_aikerum")
minetest.register_alias("technic:granite", "es:granite")
minetest.register_alias("technic:marble", "es:marble")
minetest.register_alias("technic:marble_bricks", "es:marble_bricks")
minetest.register_alias("technic:uranium_block", "es:boneblock")
minetest.register_alias("technic:chromium_block", "es:boneblock")
minetest.register_alias("technic:zinc_block", "es:messymese")
minetest.register_alias("technic:wrought_iron_block", "default:copper_block")
minetest.register_alias("technic:cast_iron_block", "default:steel_block")
minetest.register_alias("technic:carbon_steel_block", "default:steel_block")
minetest.register_alias("technic:stainless_steel_block", "default:steel_block")
minetest.register_alias("technic:brass_block", "default:bronze_block")
minetest.register_alias("technic:marble_bricks", "es:marble_bricks")

minetest.register_alias("technic:uranium", "es:depleted_uranium_lump")
minetest.register_alias("technic:chromium_lump", "default:copper_lump")
minetest.register_alias("technic:chromium_ingot", "default:copper_ingot")
minetest.register_alias("technic:zinc_lump", "default:bronze_ingot")
minetest.register_alias("technic:zinc_ingot", "default:bronze_lump")
minetest.register_alias("technic:brass_ingot", "default:bronze_ingot")
minetest.register_alias("technic:cast_iron_ingot", "default:steel_ingot")
minetest.register_alias("technic:carbon_steel_ingot", "default:steel_ingot")
minetest.register_alias("technic:stainless_steel_ingot", "default:steel_ingot")

minetest.register_alias("technic:concrete_post0", "default:stone_with_copper")
minetest.register_alias("technic:concrete_post12", "default:stone_with_copper")
minetest.register_alias("technic:concrete_post3", "default:stone_with_copper")
minetest.register_alias("technic:concrete_post28", "default:stone_with_copper")
minetest.register_alias("technic:concrete_post19", "default:stone_with_copper")
minetest.register_alias("technic:concrete", "es:stone_with_infinium")
minetest.register_alias("technic:concrete_post_platform", "es:stone_with_infinium")
minetest.register_alias("technic:rebar", "es:rubyblock")
minetest.register_alias("technic:blast_resistant_concrete", "es:rubyblock")

minetest.register_alias("technic:supply_converter", "es:rubyblock")
minetest.register_alias("technic:switching_station", "es:aikerumblock")

minetest.register_alias("technic:rubber", "default:mese_crystal")
minetest.register_alias("technic:doped_silicon_wafer", "default:mese_crystal")



minetest.register_alias("technic:doped_silicon_wafer", "default:mese_crystal")
minetest.register_alias("technic:doped_silicon_wafer", "default:mese_crystal")
minetest.register_alias("technic:doped_silicon_wafer", "default:mese_crystal")
minetest.register_alias("technic:doped_silicon_wafer", "default:mese_crystal")



--This to fix unneeded craftguide mod
minetest.register_alias("craft_guide:sign_wall","default:torch")
minetest.register_alias("craft_guide:lcd_pc","default:torch")
--minetest.register_alias("quartz:quartz_ore","default:torch")





