
--esmobs v0.0.7

--Andrey created mob for his world needs
--made for Extreme Survival game by maikerumine

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

bp:register_spawn("esmobs:oerkkii", "esmobs:cursed_stone", 4, -1, 2, 20, 500, -500)  --comment out to disable


-- SPAWN EGGS

--bp:register_egg("esmobs:chicken", "Chicken", "spawn_egg_chicken.png")
--bp:register_egg("esmobs:cow", "Cow", "spawn_egg_cow.png")
--bp:register_egg("esmobs:creeper", "Creeper", "spawn_egg_creeper.png")
--bp:register_egg("esmobs:pig", "Pig", "spawn_egg_pig.png")
--bps:register_egg("esmobs:sheep", "Sheep", "spawn_egg_sheep.png")
--bp:register_egg("esmobs:skeleton", "Skeleton", "spawn_egg_skeleton.png")
--bp:register_egg("esmobs:zombie", "Zombie", "spawn_egg_zombie.png")
--bp:register_egg("esmobs:pigman", "Zombie Pigman", "spawn_egg_zombie_pigman.png")


--bp:register_egg("esmobs:tree_monster", "Tree Monster", "default_tree_top.png", 1)
--bp:register_egg("esmobs:stone_monster", "Stone Monster", "default_stone.png", 1)
--bp:register_egg("esmobs:spider", "Spider", "mobs_cobweb.png", 1)
--bp:register_egg("esmobs:oerkki", "Oerkki", "default_obsidian.png", 1)
--bp:register_spawn("esmobs:herobrines_bloody_ghost", "esmobs:cursed_stone", 4, -1, 2, 1, 500, -500)



