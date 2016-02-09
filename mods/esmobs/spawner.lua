--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL
--Andrey created mob spawner for his world needs

--minetest.register_alias("lagsmobs:cursed_stone", "esmmobs:cursed_stone")
--minetest.register_alias("mobs:cursed_stone", "esmmobs:cursed_stone")

minetest.register_node("esmobs:cursed_stone", {
	description = "Cursed stone",
	tiles = {
		"bones_front.png",
		"default_obsidian.png^mobs_cobweb.png",
		"default_obsidian.png^mobs_cobweb.png",
		"default_obsidian.png^mobs_cobweb.png",
		"default_obsidian.png^mobs_cobweb.png",
		"default_obsidian.png^mobs_cobweb.png"
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

--NPC SPAWNER
minetest.register_node("esmobs:blessed_stone", {
	description = "Blessed Stone",
	tiles = {
		"default_diamond_block.png^tnt_smoke.png",
		"default_diamond_block.png^tnt_smoke.png",
		"default_diamond_block.png^tnt_smoke.png",
		"default_diamond_block.png^tnt_smoke.png",
		"default_diamond_block.png^tnt_smoke.png",
		"default_diamond_block.png^tnt_smoke.png"
	},
	is_ground_content = false,
	groups = {cracky=1, level=2},
	drop = 'default:diamondblock',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'esmobs:blessed_stone',
	recipe = {
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
		{'default:obsidian', 'default:diamondblock', 'default:obsidian'},
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
	}
})

--mobs:register_spawn("esmobs:dirt2", "esmobs:cursed_stone", 4, -1, 2, 40, 500, -500)  --comment out to disable
--mobs:register_spawn("esmobs:stone_monster2", "esmobs:cursed_stone", 4, -1, 2, 40, 500, -500)  --comment out to disable
mobs:register_spawn("esmobs:Jasmine", {"esmobs:cursed_stone"}, 5, -1, 2, 10, 500, -500)  --comment out to disable

--mobs:register_spawn("esmobs:SepiaSam", "esmobs:blessed_stone", 4, -1, 2, 40, 500, -500)  --comment out to disable
--mobs:register_spawn("esmobs:Maikerumine", "esmobs:blessed_stone", 4, -1, 2, 40, 500, -500)  --comment out to disable
mobs:register_spawn("esmobs:Candy", {"esmobs:blessed_stone"}, 5, -1, 2, 10, 500, -500)  --comment out to disable




--mobs:register_spawn("esmobs:oerkkii", "esmobs:cursed_stone", 4, -1, 2, 2, 22, -500)  --comment out to disable
--mobs:register_spawn("esmobs:herobrines_bloody_ghost", "esmobs:cursed_stone", 4, -1, 2, 1, 500, -500)

-- SPAWN EGGS
mobs:register_egg("esmobs:sheep", "Sheep", "wool_white.png", 1)
mobs:register_egg("esmobs:chickoboo", "Chickoboo", "mobs_chicken_inv.png", 0)
mobs:register_egg("esmobs:chicken", "Chicken", "spawn_egg_chicken.png")
mobs:register_egg("esmobs:cow", "Cow", "spawn_egg_cow.png")
mobs:register_egg("esmobs:pumba", "Pumba", "spawn_egg_pig.png")


--MT mobs spawn eggs
mobs:register_egg("esmobs:tree_monster", "Tree Monster", "default_tree_top.png", 1)
mobs:register_egg("esmobs:stone_monster", "Stone Monster", "default_stone.png", 1)
mobs:register_egg("esmobs:spider", "Spider", "mobs_cobweb.png", 1)
mobs:register_egg("esmobs:oerkki", "Oerkki", "default_obsidian.png", 1)
mobs:register_egg("esmobs:dungeon_master", "Dungeon Master", "fire_basic_flame.png", 1)


-- wild horse spawn eggs
mobs:register_egg("esmobs:horse", "Brown Horse", "mobs_horse_inv.png", 0)
mobs:register_egg("esmobs:horse2", "White Horse", "mobs_horse_peg_inv.png", 0)
mobs:register_egg("esmobs:horse3", "Arabic Horse", "mobs_horse_ara_inv.png", 0)
-- tamed horse spawn eggs
mobs:register_egg("esmobs:horseh1", "Tamed Brown Horse", "mobs_horse_inv.png", 0)
mobs:register_egg("esmobs:horsepegh1", "Tamed White Horse", "mobs_horse_peg_inv.png", 0)
mobs:register_egg("esmobs:horsearah1", "Tamed Arabic Horse", "mobs_horse_ara_inv.png", 0)

