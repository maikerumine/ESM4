
--fish bait
--bait_corn

minetest.register_craftitem("fishing:bait_corn", {
	description = fishing_setting.func.S("Bait Corn"),
	inventory_image = "fishing_bait_corn.png",
})

fishing_setting.baits["fishing:bait_corn"] = { ["bait"] = "fishing:bait_corn", ["bobber"] = "fishing:bobber_fish_entity",["texture"] = "fishing_bait_corn.png", ["hungry"] = 50 }

--bait_bread
minetest.register_craftitem("fishing:bait_bread", {
	description = fishing_setting.func.S("Bait Bread"),
	inventory_image = "fishing_bait_bread.png",
})

fishing_setting.baits["fishing:bait_bread"] = { ["bait"] = "fishing:bait_bread", ["bobber"] = "fishing:bobber_fish_entity",["texture"] = "fishing_bait_bread.png", ["hungry"] = 50 }

--bait_worm
fishing_setting.baits["fishing:bait_worm"] = { ["bait"] = "fishing:bait_worm", ["bobber"] = "fishing:bobber_fish_entity",["texture"] = "fishing_bait_worm.png", ["hungry"] = 50 }

--baitball
fishing_setting.baits["fishing:baitball"] = { ["bait"] = "fishing:baitball_shark", ["bobber"] = "fishing:bobber_fish_entity",["texture"] = "fishing_baitball.png", ["hungry"] = 50 }

--shark bait
fishing_setting.baits["fishing:baitball_shark"] = { ["bait"] = "fishing:baitball_shark", ["bobber"] = "fishing:bobber_shark_entity",["texture"] = "fishing_baitball_shark.png", ["hungry"] = 50 }

--bait_fish
fishing_setting.baits["fishing:fish_raw"] = { ["bait"] = "fishing:fish_raw", ["bobber"] = "fishing:bobber_shark_entity",["texture"] = "fishing_fish_raw.png", ["hungry"] = 50 }

fishing_setting.baits["fishing:clownfish_raw"] = { ["bait"] = "fishing:clownfish_raw", ["bobber"] = "fishing:bobber_shark_entity",["texture"] = "fishing_clownfish_raw.png", ["hungry"] = 50 }

fishing_setting.baits["fishing:bluewhite_raw"] = { ["bait"] = "fishing:bluewhite_raw", ["bobber"] = "fishing:bobber_shark_entity",["texture"] = "fishing_bluewhite_raw.png", ["hungry"] = 50 }

fishing_setting.baits["fishing:exoticfish_raw"] = { ["bait"] = "fishing:exoticfish_raw", ["bobber"] = "fishing:bobber_shark_entity",["texture"] = "fishing_exoticfish_raw.png", ["hungry"] = 50 }

--bait rat
fishing_setting.baits["mobs:rat"] = { ["bait"] = "mobs:rat", ["bobber"] = "fishing:bobber_shark_entity",["texture"] = "mobs_rat_inventory.png", ["hungry"] = 50 }