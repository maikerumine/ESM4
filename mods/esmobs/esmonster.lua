--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL

--REFERENCE
--nssm:spawn_specific("nssm:phoenix", {"air"}, {"air"}, 10, 20, 120, 1200000, 1, 10, 40)
--function bp:spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
bp:register_spawn("esmobs:spider", {"default:stone" ,"default:cobble","group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 6, 0, 24000, 1, 71)
bp:register_spawn("esmobs:applmons", {"default:stone","nether:rack", "esmobs:cursed_stone"}, 6, -1, 4000, 5, -30)
--bp:register_spawn("esmobs:herobrines_bloody_ghost", {"default:stone","default:desert_sand","nether:brick", "bedrock2:bedrock"}, 4, -1, 22000, 1, 10)
--bp:spawn_specific("esmobs:bomber", {"air"},{"air"}, 0, 6, 30, 25000, 1, 90, 20)
bp:register_spawn("esmobs:bone_monster", {"default:stone_with_iron","bones:bones","esmobs:bones", "bedrock2:bedrock","default:stone"},6, -1, 7000, 3, 30)
bp:register_spawn("esmobs:icemon", {"default:ice"}, 5, -1, 4000, 1, 3100)
bp:register_spawn("esmobs:snowmon", {"default:snow","default:snowblock","default:snow_block", "default:dirt_with_snow"}, 5, -1, 24000, 1, 31000)
--bp:register_spawn("esmobs:watermon", {"default:water_source","default:water_flowing"}, 5, -1, 14000, 5, -120)
--bp:spawn_specific("esmobs:bloco", {"default:stone"}, {"default:stone"}, 5, 10, 30, 22000, 1, -31000, -20)
--bp:spawn_specific("esmobs:blocod", {"default:dirt"}, {"default:dirt_with_grass"}, 13, 20, 30, 25000, 1, -31000, 20)
--bp:register_spawn("esmobs:dirt", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 5, 0, 16000, 1, 500)
bp:register_spawn("esmobs:dirt2", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 5, 0, 6000, 2, -100)
bp:register_spawn("esmobs:stone_monster", {"default:stone","bedrock2:bedrock"}, 5, -1, 6000, 2, 500)
bp:register_spawn("esmobs:stone_monster2", {"default:stone","bedrock2:bedrock"}, 5, -1, 4000, 3, -500)
--bp:spawn_specific("esmobs:phoenix", {"air"},{"air"}, 2, 9, 30, 35000, 1, 20, 220)
