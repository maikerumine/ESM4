--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL

--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
mobs:register_spawn("esmobs:rat", {"default:dirt_with_grass", "default:stone"}, 20, -1, 10000, 2, 31000)
mobs:register_spawn("esmobs:sheep_white", {"default:dirt_with_grass", "ethereal:green_dirt"}, 20, 10, 15000, 1, 31000)
mobs:register_spawn("esmobs:pumba", {"default:dirt_with_grass","default:dirt_with_dry_grass"}, 20, 10, 18000, 1, 31000)
mobs:register_spawn("esmobs:cow", {"default:dirt_with_grass"}, 20, 10, 11000, 1, 31000)
mobs:register_spawn("esmobs:chicken", {"default:dirt_with_grass"}, 20, 12, 17000, 2, 31000)
mobs:register_spawn("esmobs:horse", {"default:dirt_with_dry_grass"}, 20, 12, 17000, 1, 31000)
mobs:register_spawn("esmobs:horse2", {"default:dirt_with_dry_grass"}, 20, 12, 17000, 1, 31000)
mobs:register_spawn("esmobs:horse3", {"default:desert_sand"}, 20, 8, 17000, 1, 31000)
mobs:register_spawn("esmobs:chickoboo", {"default:dirt_with_grass", "ethereal:bamboo_dirt"}, 15, 10, 12000, 1, 31000)


