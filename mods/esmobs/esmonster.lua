--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL

--REFERENCE
--nssm:spawn_specific("nssm:phoenix", {"air"}, {"air"}, 10, 20, 120, 1200000, 1, 10, 40)
--function mobs:spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
mobs:register_spawn("esmobs:spider", {"default:stone" ,"default:cobble","group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 6, -1, 24000, 1, 71)
mobs:register_spawn("esmobs:applmons", {"default:stone","nether:rack", "esmobs:cursed_stone"}, 6, -1, 4000, 5, -30)
mobs:register_spawn("esmobs:herobrines_bloody_ghost", {"default:stone","default:desert_sand","nether:brick", "bedrock2:bedrock"}, 4, -1, 22000, 1, 10)
--mobs:spawn_specific("esmobs:bomber", {"air"},{"air"}, 0, 6, 30, 25000, 1, 90, 20)
mobs:register_spawn("esmobs:bone_monster", {"default:stone_with_iron","bones:bones","esmobs:bones", "bedrock2:bedrock","default:stone"},6, -1, 7000, 3, 30)
mobs:register_spawn("esmobs:icemon", {"default:ice"}, 5, -1, 4000, 1, 3100)
mobs:register_spawn("esmobs:snowmon", {"default:snow","default:snowblock","default:snow_block", "default:dirt_with_snow"}, 5, -1, 4000, 12, 31000)
mobs:register_spawn("esmobs:watermon", {"default:water_source","default:water_flowing"}, 5, -1, 14000, 5, -120)
mobs:register_spawn("esmobs:dirt2", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 5, -1, 6000, 2, -100)
mobs:register_spawn("esmobs:stone_monster2", {"default:stone","bedrock2:bedrock"}, 5, -1, 4000, 3, -500)
mobs:spawn_specific("esmobs:phoenix", {"air"},{"air"}, 2, -1, 30, 35000, 1, 15, 40)
