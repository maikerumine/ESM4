--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL

--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)
bp:register_spawn("esmobs:rat", {"default:dirt_with_grass", "default:stone"}, 20, -1, 7000, 2, 31000)
bp:register_spawn("esmobs:sheep", {"default:dirt_with_grass", "ethereal:green_dirt"}, 20, 10, 5000, 8, 31000)
bp:register_spawn("esmobs:sheep2", {"default:dirt_with_grass"}, 20, 12, 15000, 2, 31000)
bp:register_spawn("esmobs:pig", {"default:dirt_with_grass"}, 20, 12, 15000, 1, 31000)
bp:register_spawn("esmobs:cow", {"default:dirt_with_grass"}, 20, 8, 17000, 1, 31000)
bp:register_spawn("esmobs:chicken", {"default:dirt_with_grass"}, 20, 8, 17000, 2, 31000)
bp:register_spawn("esmobs:horse", {"default:dirt_with_dry_grass"}, 20, 8, 17000, 1, 31000)
bp:register_spawn("esmobs:horse2", {"default:dirt_with_dry_grass"}, 20, 8, 17000, 1, 31000)
bp:register_spawn("esmobs:horse3", {"default:desert_sand"}, 20, 8, 17000, 1, 31000)
bp:register_spawn("esmobs:chickoboo", {"default:dirt_with_grass", "ethereal:bamboo_dirt"}, 15, 10, 32000, 1, 31000)


