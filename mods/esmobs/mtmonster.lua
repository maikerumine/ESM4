--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL

--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)

bp:register_spawn("esmobs:dungeon_master", {"default:stone"}, 2, 0, 7000, 2, -70)
bp:register_spawn("esmobs:tree_monster", {"default:leaves", "default:jungleleaves","default:dirt", "default:jungletree"}, 5, 0, 14000, 1, 31000)
bp:register_spawn("esmobs:sand_monster", {"default:sand", "meru:stone","group:sand"},4, -1, 14000, 1, 31000)
bp:register_spawn("esmobs:stone_monster", {"default:stone", "bedrock2:bedrock"}, 5, 2, 9000, 10, 500)
bp:register_spawn("esmobs:oerkkii", "esmobs:cursed_stone", 4, -1, 2, 10, 500, -500)
bp:register_spawn("esmobs:dirt", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 5, -1, 11000, 2, 500)

