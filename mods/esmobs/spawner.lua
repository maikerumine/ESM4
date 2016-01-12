--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL
--Andrey created mob spawner for his world needs

minetest.register_alias("lagsmobs:cursed_stone", "esmmobs:cursed_stone")
--minetest.register_alias("mobs:cursed_stone", "esmmobs:cursed_stone")

minetest.register_node("esmobs:cursed_stone", {
	description = "Cursed stone",
	tiles = {
		"mobs_cursed_stone_top.png",
		"mobs_cursed_stone_bottom.png",
		"mobs_cursed_stone.png",
		"mobs_cursed_stone.png",
		"mobs_cursed_stone.png",
		"mobs_cursed_stone.png"
	},
	is_ground_content = false,
	groups = {cracky=1, level=2},
	drop = 'default:goldblock',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'esmobs:cursed_stone',
	recipe = {
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
		{'default:obsidian', 'default:goldblock', 'default:obsidian'},
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
	}
})

bp:register_spawn("esmobs:oerkkii", "esmobs:cursed_stone", 4, -1, 2, 2, 7000, -500)  --comment out to disable
--bp:register_spawn("esmobs:herobrines_bloody_ghost", "esmobs:cursed_stone", 4, -1, 2, 1, 500, -500)

-- SPAWN EGGS
bp:register_egg("esmobs:sheep", "Sheep", "wool_white.png", 1)
bp:register_egg("esmobs:chickoboo", "Chickoboo", "mobs_chicken_inv.png", 0)
bp:register_egg("esmobs:chicken", "Chicken", "spawn_egg_chicken.png")
bp:register_egg("esmobs:cow", "Cow", "spawn_egg_cow.png")
bp:register_egg("esmobs:creeper", "Creeper", "spawn_egg_creeper.png")
bp:register_egg("esmobs:pig", "Pig", "spawn_egg_pig.png")
bp:register_egg("esmobs:sheep2", "Sheep2", "spawn_egg_sheep.png")
bp:register_egg("esmobs:skeleton", "Skeleton", "spawn_egg_skeleton.png")
bp:register_egg("esmobs:zombie", "Zombie", "spawn_egg_zombie.png")
bp:register_egg("esmobs:pigman", "Zombie Pigman", "spawn_egg_zombie_pigman.png")

--MT mobs spawn eggs
bp:register_egg("esmobs:tree_monster", "Tree Monster", "default_tree_top.png", 1)
bp:register_egg("esmobs:stone_monster", "Stone Monster", "default_stone.png", 1)
bp:register_egg("esmobs:spider", "Spider", "mobs_cobweb.png", 1)
bp:register_egg("esmobs:oerkki", "Oerkki", "default_obsidian.png", 1)
bp:register_egg("esmobs:dungeon_master", "Dungeon Master", "fire_basic_flame.png", 1)


-- wild horse spawn eggs
bp:register_egg("esmobs:horse", "Brown Horse", "mobs_horse_inv.png", 0)
bp:register_egg("esmobs:horse2", "White Horse", "mobs_horse_peg_inv.png", 0)
bp:register_egg("esmobs:horse3", "Arabic Horse", "mobs_horse_ara_inv.png", 0)
-- tamed horse spawn eggs
bp:register_egg("esmobs:horseh1", "Tamed Brown Horse", "mobs_horse_inv.png", 0)
bp:register_egg("esmobs:horsepegh1", "Tamed White Horse", "mobs_horse_peg_inv.png", 0)
bp:register_egg("esmobs:horsearah1", "Tamed Arabic Horse", "mobs_horse_ara_inv.png", 0)

