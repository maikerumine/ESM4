--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL

--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
bp:register_spawn("esmobs:spider", {"default:stone" ,"default:cobble","group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 6, 0, 14000, 1, 71)
bp:register_spawn("esmobs:applmons", {"default:stone","nether:rack"}, 6, -1, 14000, 1, -30)
bp:register_spawn("esmobs:herobrines_bloody_ghost", {"default:stone","default:desert_sand","nether:brick"}, 6, -1, 12000, 1, 10)
bp:spawn_specific("esmobs:bomber", {"air"}, {"air"}, 10, -1, 120, 29000, 1, 15, 40)
bp:register_spawn("esmobs:bone_monster", {"default:stone_with_iron","bones:bones","esmobs:bones"},4, -1, 10400, 1, -30)
bp:register_spawn("esmobs:icemon", {"default:ice"}, 8, -1, 14000, 1, 310010)
bp:register_spawn("esmobs:snowmon", {"default:snow","default:snowblock","default:snow_block", "default:dirt_with_snow"}, 5, -1, 14000, 1, 31000)
bp:register_spawn("esmobs:watermon", {"default:water_source","default:water_flowing"}, 5, -1, 14000, 5, -120)
bp:spawn_specific("esmobs:bloco", {"default:stone"}, {"default:stone"}, 0, 20, 30, 12000, 3, -31000, -20)
bp:spawn_specific("esmobs:blocod", {"default:dirt"}, {"default:dirt_with_grass"}, 3, 20, 30, 15000, 3, -31000, 20)
bp:register_spawn("esmobs:dirt", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 5, -1, 11000, 2, 500)
bp:register_spawn("esmobs:dirt2", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 4, -1, 5000, 7, -102)
bp:register_spawn("esmobs:stone_monster", {"default:stone"}, 5, 0, 6000, 10, 500)
