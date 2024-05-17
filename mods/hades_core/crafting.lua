-- mods/default/crafting.lua


--[[
minetest.register_craft({
	output = 'hades_core:stick 4',
	recipe = {
		{'group:wood'},
	}
})


minetest.register_craft({
	output = 'hades_core:pick_wood',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})


minetest.register_craft({
	output = 'hades_core:pick_stone',
	recipe = {
		{'group:stone', 'group:stone', 'group:stone'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})


minetest.register_craft({
	output = 'hades_core:pick_steel',
	recipe = {
		{'hades_core:steel_ingot', 'hades_core:steel_ingot', 'hades_core:steel_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})


minetest.register_craft({
	output = 'hades_core:pick_bronze',
	recipe = {
		{'hades_core:bronze_ingot', 'hades_core:bronze_ingot', 'hades_core:bronze_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})


minetest.register_craft({
	output = 'hades_core:pick_mese',
	recipe = {
		{'hades_core:mese_crystal', 'hades_core:mese_crystal', 'hades_core:mese_crystal'},
		{'', 'hades_core:steel_ingot', ''},
		{'', 'hades_core:steel_ingot', ''},
	}
})

]]
minetest.register_craft({
	output = 'hades_core:pick_prism',
	recipe = {
		{'hades_core:prismatic_gem', 'hades_core:prismatic_gem', 'hades_core:prismatic_gem'},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

--[[
minetest.register_craft({
	output = 'hades_core:shovel_wood',
	recipe = {
		{'group:wood'},
		{'group:stick'},
		{'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:shovel_stone',
	recipe = {
		{'group:stone'},
		{'group:stick'},
		{'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:shovel_steel',
	recipe = {
		{'hades_core:steel_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:shovel_bronze',
	recipe = {
		{'hades_core:bronze_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:shovel_mese',
	recipe = {
		{'hades_core:mese_crystal'},
		{'hades_core:steel_ingot'},
		{'hades_core:steel_ingot'},
	}
})

]]
minetest.register_craft({
	output = 'hades_core:shovel_prism',
	recipe = {
		{'hades_core:prismatic_gem'},
		{'default:steel_ingot'},
		{'default:steel_ingot'},
	}
})

--[[
minetest.register_craft({
	output = 'hades_core:axe_wood',
	recipe = {
		{'group:wood', 'group:wood'},
		{'group:wood', 'group:stick'},
		{'', 'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:axe_stone',
	recipe = {
		{'group:stone', 'group:stone'},
		{'group:stone', 'group:stick'},
		{'', 'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:axe_steel',
	recipe = {
		{'hades_core:steel_ingot', 'hades_core:steel_ingot'},
		{'hades_core:steel_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:axe_bronze',
	recipe = {
		{'hades_core:bronze_ingot', 'hades_core:bronze_ingot'},
		{'hades_core:bronze_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:axe_mese',
	recipe = {
		{'hades_core:mese_crystal', 'hades_core:mese_crystal'},
		{'hades_core:mese_crystal', 'hades_core:steel_ingot'},
		{'', 'hades_core:steel_ingot'},
	}
})

]]
minetest.register_craft({
	output = 'hades_core:axe_prism',
	recipe = {
		{'hades_core:prismatic_gem', 'hades_core:prismatic_gem'},
		{'hades_core:prismatic_gem', 'default:steel_ingot'},
		{'', 'default:steel_ingot'},
	}
})

--[[
minetest.register_craft({
	output = 'hades_core:sword_wood',
	recipe = {
		{'group:wood'},
		{'group:wood'},
		{'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:sword_stone',
	recipe = {
		{'group:stone'},
		{'group:stone'},
		{'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:sword_steel',
	recipe = {
		{'hades_core:steel_ingot'},
		{'hades_core:steel_ingot'},
		{'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:sword_bronze',
	recipe = {
		{'hades_core:bronze_ingot'},
		{'hades_core:bronze_ingot'},
		{'group:stick'},
	}
})


minetest.register_craft({
	output = 'hades_core:sword_mese',
	recipe = {
		{'hades_core:mese_crystal'},
		{'hades_core:mese_crystal'},
		{'hades_core:steel_ingot'},
	}
})

]]
minetest.register_craft({
	output = 'hades_core:sword_prism',
	recipe = {
		{'hades_core:prismatic_gem'},
		{'hades_core:prismatic_gem'},
		{'default:steel_ingot'},
	}
})

--[[
minetest.register_craft({
	output = 'hades_core:cobble_block',
	recipe = {
		{'hades_core:cobble', 'hades_core:cobble', 'hades_core:cobble'},
		{'hades_core:cobble', 'hades_core:cobble', 'hades_core:cobble'},
		{'hades_core:cobble', 'hades_core:cobble', 'hades_core:cobble'},
	}
})

minetest.register_craft({
	output = 'hades_core:cobble_baked 9',
	recipe = {
		{'hades_core:cobble_block_baked'},
	}
})

minetest.register_craft({
	output = 'hades_core:cobble_block_baked',
	recipe = {
		{'hades_core:cobble_baked', 'hades_core:cobble_baked', 'hades_core:cobble_baked'},
		{'hades_core:cobble_baked', 'hades_core:cobble_baked', 'hades_core:cobble_baked'},
		{'hades_core:cobble_baked', 'hades_core:cobble_baked', 'hades_core:cobble_baked'},
	}
})

minetest.register_craft({
	output = 'hades_core:cobble 9',
	recipe = {
		{'hades_core:cobble_block'},
	}
})



minetest.register_craft({
	output = 'hades_core:coalblock',
	recipe = {
		{'hades_core:coal_lump', 'hades_core:coal_lump', 'hades_core:coal_lump'},
		{'hades_core:coal_lump', 'hades_core:coal_lump', 'hades_core:coal_lump'},
		{'hades_core:coal_lump', 'hades_core:coal_lump', 'hades_core:coal_lump'},
	}
})


minetest.register_craft({
	output = 'hades_core:coal_lump 9',
	recipe = {
		{'hades_core:coalblock'},
	}
})


minetest.register_craft({
	output = 'hades_core:steelblock',
	recipe = {
		{'hades_core:steel_ingot', 'hades_core:steel_ingot', 'hades_core:steel_ingot'},
		{'hades_core:steel_ingot', 'hades_core:steel_ingot', 'hades_core:steel_ingot'},
		{'hades_core:steel_ingot', 'hades_core:steel_ingot', 'hades_core:steel_ingot'},
	}
})


minetest.register_craft({
	output = 'hades_core:steel_ingot 9',
	recipe = {
		{'hades_core:steelblock'},
	}
})


minetest.register_craft({
	output = 'hades_core:tinblock',
	recipe = {
		{'hades_core:tin_ingot', 'hades_core:tin_ingot', 'hades_core:tin_ingot'},
		{'hades_core:tin_ingot', 'hades_core:tin_ingot', 'hades_core:tin_ingot'},
		{'hades_core:tin_ingot', 'hades_core:tin_ingot', 'hades_core:tin_ingot'},
	}
})


minetest.register_craft({
	output = 'hades_core:tin_ingot 9',
	recipe = {
		{'hades_core:tinblock'},
	}
})

minetest.register_craft({
	output = 'hades_core:copperblock',
	recipe = {
		{'hades_core:copper_ingot', 'hades_core:copper_ingot', 'hades_core:copper_ingot'},
		{'hades_core:copper_ingot', 'hades_core:copper_ingot', 'hades_core:copper_ingot'},
		{'hades_core:copper_ingot', 'hades_core:copper_ingot', 'hades_core:copper_ingot'},
	}
})


minetest.register_craft({
	output = 'hades_core:copper_ingot 9',
	recipe = {
		{'hades_core:copperblock'},
	}
})


minetest.register_craft({
	output = 'hades_core:bronzeblock',
	recipe = {
		{'hades_core:bronze_ingot', 'hades_core:bronze_ingot', 'hades_core:bronze_ingot'},
		{'hades_core:bronze_ingot', 'hades_core:bronze_ingot', 'hades_core:bronze_ingot'},
		{'hades_core:bronze_ingot', 'hades_core:bronze_ingot', 'hades_core:bronze_ingot'},
	}
})


minetest.register_craft({
	output = 'hades_core:bronze_ingot 9',
	recipe = {
		{'hades_core:bronzeblock'},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "hades_core:bronze_ingot 2",
	recipe = {"hades_core:copper_ingot", "hades_core:tin_ingot"},
})

minetest.register_craft({
	output = 'hades_core:goldblock',
	recipe = {
		{'hades_core:gold_ingot', 'hades_core:gold_ingot', 'hades_core:gold_ingot'},
		{'hades_core:gold_ingot', 'hades_core:gold_ingot', 'hades_core:gold_ingot'},
		{'hades_core:gold_ingot', 'hades_core:gold_ingot', 'hades_core:gold_ingot'},
	}
})


minetest.register_craft({
	output = 'hades_core:gold_ingot 9',
	recipe = {
		{'hades_core:goldblock'},
	}
})

minetest.register_craft({
	output = 'hades_core:emerald_block',
	recipe = {
		{'hades_core:emerald', 'hades_core:emerald', 'hades_core:emerald'},
		{'hades_core:emerald', 'hades_core:emerald', 'hades_core:emerald'},
		{'hades_core:emerald', 'hades_core:emerald', 'hades_core:emerald'},
	}
})


minetest.register_craft({
	output = 'hades_core:emerald 9',
	recipe = {
		{'hades_core:emerald_block'},
	}
})

minetest.register_craft({
	output = 'hades_core:sapphire_block',
	recipe = {
		{'hades_core:sapphire', 'hades_core:sapphire', 'hades_core:sapphire'},
		{'hades_core:sapphire', 'hades_core:sapphire', 'hades_core:sapphire'},
		{'hades_core:sapphire', 'hades_core:sapphire', 'hades_core:sapphire'},
	}
})


minetest.register_craft({
	output = 'hades_core:sapphire 9',
	recipe = {
		{'hades_core:sapphire_block'},
	}
})

minetest.register_craft({
	output = 'hades_core:ruby_block',
	recipe = {
		{'hades_core:ruby', 'hades_core:ruby', 'hades_core:ruby'},
		{'hades_core:ruby', 'hades_core:ruby', 'hades_core:ruby'},
		{'hades_core:ruby', 'hades_core:ruby', 'hades_core:ruby'},
	}
})


minetest.register_craft({
	output = 'hades_core:ruby 9',
	recipe = {
		{'hades_core:ruby_block'},
	}
})

minetest.register_craft({
	output = 'hades_core:diamondblock',
	recipe = {
		{'hades_core:diamond', 'hades_core:diamond', 'hades_core:diamond'},
		{'hades_core:diamond', 'hades_core:diamond', 'hades_core:diamond'},
		{'hades_core:diamond', 'hades_core:diamond', 'hades_core:diamond'},
	}
})

minetest.register_craft({
	output = 'hades_core:diamond 9',
	recipe = {
		{'hades_core:diamondblock'},
	}
})


minetest.register_craft({
	output = 'hades_core:sandstone',
	recipe = {
		{'hades_core:fertile_sand', 'hades_core:fertile_sand'},
		{'hades_core:fertile_sand', 'hades_core:fertile_sand'},
	}
})
]]

minetest.register_craft({
	output = 'hades_core:fertile_sand 4',
	recipe = {
		{'default:sandstone'},
	}
})
--[[

minetest.register_craft({
	output = 'hades_core:sandstonebrick 4',
	recipe = {
		{'hades_core:sandstone', 'hades_core:sandstone'},
		{'hades_core:sandstone', 'hades_core:sandstone'},
	}
})


minetest.register_craft({
	output = 'hades_core:clay',
	recipe = {
		{'hades_core:clay_lump', 'hades_core:clay_lump'},
		{'hades_core:clay_lump', 'hades_core:clay_lump'},
	}
})


minetest.register_craft({
	output = 'hades_core:brick',
	recipe = {
		{'hades_core:clay_brick', 'hades_core:clay_brick'},
		{'hades_core:clay_brick', 'hades_core:clay_brick'},
	}
})


minetest.register_craft({
	output = 'hades_core:clay_brick 4',
	recipe = {
		{'hades_core:brick'},
	}
})


minetest.register_craft({
	output = 'hades_core:paper',
	recipe = {
		{'hades_core:papyrus', 'hades_core:papyrus', 'hades_core:papyrus'},
	}
})


minetest.register_craft({
	output = 'hades_core:book',
	recipe = {
		{'hades_core:paper'},
		{'hades_core:paper'},
		{'hades_core:paper'},
	}
})


minetest.register_craft({
	output = 'hades_core:bookshelf',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'hades_core:book', 'hades_core:book', 'hades_core:book'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})


minetest.register_craft({
	output = 'hades_core:ladder 2',
	recipe = {
		{'group:stick', 'hades_core:nails', 'group:stick'},
		{'group:stick', 'group:stick', 'group:stick'},
		{'group:stick', 'hades_core:nails', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'hades_core:ladder_bronze 24',
	recipe = {
		{'hades_core:bronze_ingot', 'hades_core:steel_ingot', 'hades_core:bronze_ingot'},
		{'hades_core:bronze_ingot', 'hades_core:bronze_ingot', 'hades_core:bronze_ingot'},
		{'hades_core:bronze_ingot', 'hades_core:steel_ingot', 'hades_core:bronze_ingot'},
	}
})


minetest.register_craft({
	output = 'hades_core:mese',
	recipe = {
		{'hades_core:mese_crystal', 'hades_core:mese_crystal', 'hades_core:mese_crystal'},
		{'hades_core:mese_crystal', 'hades_core:mese_crystal', 'hades_core:mese_crystal'},
		{'hades_core:mese_crystal', 'hades_core:mese_crystal', 'hades_core:mese_crystal'},
	}
})


minetest.register_craft({
	output = 'hades_core:mese_crystal 9',
	recipe = {
		{'hades_core:mese'},
	}
})


minetest.register_craft({
	output = 'hades_core:mese_crystal_fragment 9',
	recipe = {
		{'hades_core:mese_crystal'},
	}
})

-- 9 mese crystal fragments = 1 mese crystal
minetest.register_craft({
	output = "hades_core:mese_crystal",
	recipe = {
		{"hades_core:mese_crystal_fragment", "hades_core:mese_crystal_fragment", "hades_core:mese_crystal_fragment"},
		{"hades_core:mese_crystal_fragment", "hades_core:mese_crystal_fragment", "hades_core:mese_crystal_fragment"},
		{"hades_core:mese_crystal_fragment", "hades_core:mese_crystal_fragment", "hades_core:mese_crystal_fragment"},
	}
})

minetest.register_craft({
	output = 'hades_core:obsidian_shard 9',
	recipe = {
		{'hades_core:obsidian'}
	}
})


minetest.register_craft({
	output = 'hades_core:obsidian_block',
	recipe = {
		{'hades_core:obsidian', 'hades_core:obsidian', 'hades_core:obsidian'},
		{'hades_core:obsidian', 'hades_core:obsidian', 'hades_core:obsidian'},
		{'hades_core:obsidian', 'hades_core:obsidian', 'hades_core:obsidian'},
	}
})

minetest.register_craft({
	output = 'hades_core:obsidian 9',
	recipe = {
		{'hades_core:obsidian_block'}
	}
})

minetest.register_craft({
	output = 'hades_core:obsidian',
	recipe = {
		{'hades_core:obsidian_shard', 'hades_core:obsidian_shard', 'hades_core:obsidian_shard'},
		{'hades_core:obsidian_shard', 'hades_core:obsidian_shard', 'hades_core:obsidian_shard'},
		{'hades_core:obsidian_shard', 'hades_core:obsidian_shard', 'hades_core:obsidian_shard'},
	}
})
]]
minetest.register_craft({
	output = 'hades_core:stone_block_baked',
	recipe = {
		{'hades_core:stone_baked', 'hades_core:stone_baked', 'hades_core:stone_baked'},
		{'hades_core:stone_baked', 'hades_core:stone_baked', 'hades_core:stone_baked'},
		{'hades_core:stone_baked', 'hades_core:stone_baked', 'hades_core:stone_baked'},
	}
})

minetest.register_craft({
	output = 'hades_core:stone_baked 9',
	recipe = {
		{'hades_core:stone_block_baked'}
	}
})

minetest.register_craft({
	output = 'hades_core:essexite_block',
	recipe = {
		{'hades_core:essexite', 'hades_core:essexite', 'hades_core:essexite'},
		{'hades_core:essexite', 'hades_core:essexite', 'hades_core:essexite'},
		{'hades_core:essexite', 'hades_core:essexite', 'hades_core:essexite'},
	}
})

minetest.register_craft({
	output = 'hades_core:essexite 9',
	recipe = {
		{'hades_core:essexite_block'}
	}
})

minetest.register_craft({
	output = 'hades_core:marble_block',
	recipe = {
		{'hades_core:marble', 'hades_core:marble', 'hades_core:marble'},
		{'hades_core:marble', 'hades_core:marble', 'hades_core:marble'},
		{'hades_core:marble', 'hades_core:marble', 'hades_core:marble'},
	}
})

minetest.register_craft({
	output = 'hades_core:marble 9',
	recipe = {
		{'hades_core:marble_block'}
	}
})

minetest.register_craft({
	output = 'hades_core:tuff_block',
	recipe = {
		{'hades_core:tuff', 'hades_core:tuff', 'hades_core:tuff'},
		{'hades_core:tuff', 'hades_core:tuff', 'hades_core:tuff'},
		{'hades_core:tuff', 'hades_core:tuff', 'hades_core:tuff'},
	}
})

minetest.register_craft({
	output = 'hades_core:tuff 9',
	recipe = {
		{'hades_core:tuff_block'}
	}
})

minetest.register_craft({
	output = 'hades_core:tuff_baked_block',
	recipe = {
		{'hades_core:tuff_baked', 'hades_core:tuff_baked', 'hades_core:tuff_baked'},
		{'hades_core:tuff_baked', 'hades_core:tuff_baked', 'hades_core:tuff_baked'},
		{'hades_core:tuff_baked', 'hades_core:tuff_baked', 'hades_core:tuff_baked'},
	}
})

minetest.register_craft({
	output = 'hades_core:tuff_baked 9',
	recipe = {
		{'hades_core:tuff_baked_block'}
	}
})

minetest.register_craft({
	output = 'hades_core:chondrite_block',
	recipe = {
		{'hades_core:chondrite', 'hades_core:chondrite', 'hades_core:chondrite'},
		{'hades_core:chondrite', 'hades_core:chondrite', 'hades_core:chondrite'},
		{'hades_core:chondrite', 'hades_core:chondrite', 'hades_core:chondrite'},
	}
})

minetest.register_craft({
	output = 'hades_core:chondrite 9',
	recipe = {
		{'hades_core:chondrite_block'}
	}
})

minetest.register_craft({
	output = 'hades_core:ash_block',
	recipe = {
		{'hades_core:ash', 'hades_core:ash', 'hades_core:ash'},
		{'hades_core:ash', 'hades_core:ash', 'hades_core:ash'},
		{'hades_core:ash', 'hades_core:ash', 'hades_core:ash'},
	}
})

minetest.register_craft({
	output = 'hades_core:ash 9',
	recipe = {
		{'hades_core:ash_block'}
	}
})
--
minetest.register_craft({
	output = 'hades_core:gravel_block',
	recipe = {
		{'default:gravel', 'default:gravel', 'default:gravel'},
		{'default:gravel', 'default:gravel', 'default:gravel'},
		{'default:gravel', 'default:gravel', 'default:gravel'},
	}
})

minetest.register_craft({
	output = 'default:gravel 9',
	recipe = {
		{'hades_core:gravel_block'}
	}
})

minetest.register_craft({
	output = 'hades_core:gravel_volcanic_block',
	recipe = {
		{'hades_core:gravel_volcanic', 'hades_core:gravel_volcanic', 'hades_core:gravel_volcanic'},
		{'hades_core:gravel_volcanic', 'hades_core:gravel_volcanic', 'hades_core:gravel_volcanic'},
		{'hades_core:gravel_volcanic', 'hades_core:gravel_volcanic', 'hades_core:gravel_volcanic'},
	}
})

minetest.register_craft({
	output = 'hades_core:gravel_volcanic 9',
	recipe = {
		{'hades_core:gravel_volcanic_block'}
	}
})


--[[
minetest.register_craft({
	output = 'hades_core:stonebrick 4',
	recipe = {
		{'hades_core:stone', 'hades_core:stone'},
		{'hades_core:stone', 'hades_core:stone'},
	}
})


minetest.register_craft({
	output = 'hades_core:stonebrick_baked 4',
	recipe = {
		{'hades_core:stone_baked', 'hades_core:stone_baked'},
		{'hades_core:stone_baked', 'hades_core:stone_baked'},
	}
})
]]

--[[
--
-- Crafting (tool repair)
--
minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.02,
})
]]

--
-- Cooking recipes
--


minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "default:glass",
	recipe = "hades_core:fertile_sand",
})

--[[
minetest.register_craft({
	type = "cooking",
	cooktime = 25,
	output = "hades_core:obsidian_glass",
	recipe = "hades_core:obsidian_shard",
})


minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "hades_core:stone",
	recipe = "hades_core:cobble",
})
]]
minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "hades_core:stone_baked",
	recipe = "hades_core:cobble_baked",
})
--[[
minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "hades_core:cobble",
	recipe = "hades_core:mossycobble",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "hades_core:steel_ingot",
	recipe = "hades_core:iron_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "hades_core:tin_ingot",
	recipe = "hades_core:tin_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "hades_core:copper_ingot",
	recipe = "hades_core:copper_lump",
})


minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "hades_core:gold_ingot",
	recipe = "hades_core:gold_lump",
})


minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "hades_core:clay_brick",
	recipe = "hades_core:clay_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "hades_core:coal_lump 2",
	recipe = "group:tree",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "hades_core:stone_baked",
	recipe = "hades_core:stone",
})
]]
minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "hades_core:ash",
	recipe = "hades_core:stone_baked",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "hades_core:ash",
	recipe = "hades_core:tuff_baked",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "hades_core:tuff_baked",
	recipe = "hades_core:tuff",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "hades_core:tuff",
	recipe = "hades_core:mossytuff",
})
--[[

--
-- Fuels
--



minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:junglegrass",
	burntime = 2,
})



minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:cactus",
	burntime = 25,
})


minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:papyrus",
	burntime = 1,
})


minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:bookshelf",
	burntime = 20,
})


minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:ladder",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:lava_source",
	burntime = 60,
})



minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:coal_lump",
	burntime = 35,
})


minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:coalblock",
	burntime = 350,
})


minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:grass_1",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:axe_wood",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:sword_wood",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:pick_wood",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "hades_core:shovel_wood",
	burntime = 10,
})
]]
minetest.register_craft({
	output = 'hades_core:nails 24',
	recipe = {{'default:steel_ingot'},}
})
--[[
-- gemtransform
minetest.register_craft({
	output = 'hades_core:emerald 2',
	recipe = {{'hades_core:sapphire'},}
})

minetest.register_craft({
    type = "shapeless",
	output = 'hades_core:sapphire',
	recipe = {'hades_core:emerald', 'hades_core:emerald'},
})

minetest.register_craft({
	output = 'hades_core:sapphire 2',
	recipe = {{'hades_core:ruby'},}
})

minetest.register_craft({
	output = 'hades_core:ruby 2',
	recipe = {{'hades_core:diamond'},}
})

minetest.register_craft({
	output = 'hades_core:diamond',
	recipe = {{'hades_core:ruby', 'hades_core:ruby'},}
})

minetest.register_craft({
    type = "shapeless",
	output = 'hades_core:ruby',
	recipe = {'hades_core:sapphire', 'hades_core:sapphire'},
})
]]
minetest.register_craft({
	output = 'hades_core:prismatic_gem 2',
	recipe = {
		{'default:glass', 'es:emerald_crystal', 'default:glass'},
		{'default:diamond', 'es:aikerum_crystal', 'default:diamond'},
		{'default:glass', 'es:ruby_crystal', 'default:glass'},
	}
})
--[[
minetest.register_craft({
	output = 'hades_core:dirt 3',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
	}
})
]]
minetest.register_craft({
    type = "shapeless",
	output = 'default:sand 2',
	recipe = {'default:cobble', 'hades_core:ash'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:sand 2',
	recipe = {'default:mossycobble', 'hades_core:ash'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:sand 2',
	recipe = {'hades_core:tuff', 'hades_core:ash'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:sand 2',
	recipe = {'hades_core:mossytuff', 'hades_core:ash'},
})
--[[
minetest.register_craft({
	output = 'hades_core:grass_1',
	recipe = {
		{'hades_core:mossycobble', '', ''},
		{'hades_core:mossycobble', '', ''},
		{'hades_core:dirt', '', ''},
	}
})

minetest.register_craft({
	output = 'hades_core:grass_1',
	recipe = {
		{'hades_core:mossytuff', '', ''},
		{'hades_core:mossytuff', '', ''},
		{'hades_core:dirt', '', ''},
	}
})

minetest.register_craft({
	output = 'hades_core:junglegrass',
	recipe = {
		{'hades_core:grass_1', '', ''},
		{'hades_core:dirt', '', ''},
	}
})

minetest.register_craft({
	output = 'hades_core:papyrus',
	recipe = {
		{'hades_core:junglegrass', '', ''},
		{'hades_core:dirt', '', ''},
	}
})

minetest.register_craft({
	output = 'hades_core:sugar',
	recipe = {
		{'hades_core:sugarcane', 'hades_core:sugarcane', 'hades_core:sugarcane'},
	}
})
]]
-- New Bricks

minetest.register_craft({
	output = 'default:cactus 9',
	recipe = {
		{'hades_core:cactus_block'},
	}
})

minetest.register_craft({
	output = 'default:cactus',
	recipe = {
		{'', 'default:papyrus', ''},
		{'hades_core:ash', 'default:dirt', 'hades_core:ash'},
	}
})

minetest.register_craft({
	output = 'hades_core:cactus_block',
	recipe = {
		{'default:cactus', 'default:cactus', 'default:cactus'},
		{'default:cactus', 'default:cactus', 'default:cactus'},
		{'default:cactus', 'default:cactus', 'default:cactus'},
	}
})

minetest.register_craft({
	output = 'hades_core:glowing_cactus_block',
	recipe = {
		{'default:cactus', 'default:cactus', 'default:cactus'},
		{'default:cactus', 'default:meselamp', 'default:cactus'},
		{'default:cactus', 'default:cactus', 'default:cactus'},
	}
})

minetest.register_craft({
	output = 'hades_core:cactus_brick 4',
	recipe = {
		{'default:cactus', 'default:cactus'},
		{'default:cactus', 'default:cactus'},
	}
})
--[[
minetest.register_craft({
	output = 'hades_core:obsidianbrick 4',
	recipe = {
		{'hades_core:obsidian', 'hades_core:obsidian'},
		{'hades_core:obsidian', 'hades_core:obsidian'}
	}
})
]]

minetest.register_craft({
	output = 'hades_core:chondrite_brick 4',
	recipe = {
		{'hades_core:chondrite', 'hades_core:chondrite'},
		{'hades_core:chondrite', 'hades_core:chondrite'},
	}
})

minetest.register_craft({
	output = 'hades_core:essexite_brick 4',
	recipe = {
		{'hades_core:essexite', 'hades_core:essexite'},
		{'hades_core:essexite', 'hades_core:essexite'},
	}
})

minetest.register_craft({
	output = 'hades_core:marble_brick 4',
	recipe = {
		{'hades_core:marble', 'hades_core:marble'},
		{'hades_core:marble', 'hades_core:marble'},
	}
})

minetest.register_craft({
	output = 'hades_core:tuff_brick 4',
	recipe = {
		{'hades_core:tuff', 'hades_core:tuff'},
		{'hades_core:tuff', 'hades_core:tuff'},
	}
})

minetest.register_craft({
	output = 'hades_core:tuff_baked_brick 4',
	recipe = {
		{'hades_core:tuff_baked', 'hades_core:tuff_baked'},
		{'hades_core:tuff_baked', 'hades_core:tuff_baked'},
	}
})
-- floors

minetest.register_craft({
	output = 'hades_core:floor_chondrite_stone 9',
	recipe = {
		{'hades_core:chondrite', 'default:stone', 'hades_core:chondrite'},
		{'default:stone', 'hades_core:chondrite', 'default:stone'},
		{'hades_core:chondrite', 'default:stone', 'hades_core:chondrite'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_chondrite_stone2 4',
	recipe = {
		{'hades_core:chondrite', 'default:stone'},
		{'default:stone', 'hades_core:chondrite'},
	}
})
minetest.register_craft({
	output = 'hades_core:floor_chondrite_stone2 4',
	recipe = {
		{'default:stone', 'hades_core:chondrite'},
		{'hades_core:chondrite', 'default:stone'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_bstone_stone 4',
	recipe = {
		{'hades_core:stone_baked', 'default:stone'},
		{'default:stone', 'hades_core:stone_baked'},
	}
})
minetest.register_craft({
	output = 'hades_core:floor_bstone_stone 4',
	recipe = {
		{'default:stone', 'hades_core:stone_baked'},
		{'hades_core:stone_baked', 'default:stone'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_btuff_tuff 4',
	recipe = {
		{'hades_core:tuff_baked', 'hades_core:tuff'},
		{'hades_core:tuff', 'hades_core:tuff_baked'},
	}
})
minetest.register_craft({
	output = 'hades_core:floor_btuff_tuff 4',
	recipe = {
		{'hades_core:tuff', 'hades_core:tuff_baked'},
		{'hades_core:tuff_baked', 'hades_core:tuff'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_bstone_sandstone 9',
	recipe = {
		{'default:sandstone', 'hades_core:stone_baked', 'default:sandstone'},
		{'hades_core:stone_baked', 'default:sandstone', 'hades_core:stone_baked'},
		{'default:sandstone', 'hades_core:stone_baked', 'default:sandstone'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_bstone_sandstone2 4',
	recipe = {
		{'hades_core:stone_baked', 'default:sandstone'},
		{'default:sandstone', 'hades_core:stone_baked'},
	}
})
minetest.register_craft({
	output = 'hades_core:floor_bstone_sandstone2 4',
	recipe = {
		{'default:sandstone', 'hades_core:stone_baked'},
		{'hades_core:stone_baked', 'default:sandstone'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_marble_essexite 4',
	recipe = {
		{'hades_core:marble', 'hades_core:essexite'},
		{'hades_core:essexite', 'hades_core:marble'},
	}
})
minetest.register_craft({
	output = 'hades_core:floor_marble_essexite 4',
	recipe = {
		{'hades_core:essexite', 'hades_core:marble'},
		{'hades_core:marble', 'hades_core:essexite'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_marble_essexite2 9',
	recipe = {
		{'hades_core:marble', 'hades_core:essexite', 'hades_core:marble'},
		{'hades_core:essexite', 'hades_core:marble', 'hades_core:essexite'},
		{'hades_core:marble', 'hades_core:essexite', 'hades_core:marble'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_essexite_gold 3',
	recipe = {
		{'hades_core:essexite', 'hades_core:essexite'},
		{'hades_core:essexite', 'default:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_essexite_gold2 3',
	recipe = {
		{'default:gold_ingot', 'hades_core:essexite'},
		{'hades_core:essexite', 'hades_core:essexite'},
	}
})

-- Color Bricks
--[[
minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_black',
	recipe = {'group:claybricks', 'dye:black'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_blue',
	recipe = {'group:claybricks', 'dye:blue'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_brown',
	recipe = {'group:claybricks', 'dye:brown'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_cyan',
	recipe = {'group:claybricks', 'dye:cyan'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_dark_green',
	recipe = {'group:claybricks', 'dye:dark_green'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_dark_grey',
	recipe = {'group:claybricks', 'dye:dark_grey'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_green',
	recipe = {'group:claybricks', 'dye:green'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_grey',
	recipe = {'group:claybricks', 'dye:grey'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_magenta',
	recipe = {'group:claybricks', 'dye:magenta'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_orange',
	recipe = {'group:claybricks', 'dye:orange'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_pink',
	recipe = {'group:claybricks', 'dye:pink'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_red',
	recipe = {'group:claybricks', 'dye:red'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_violet',
	recipe = {'group:claybricks', 'dye:violet'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_white',
	recipe = {'group:claybricks', 'dye:white'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'hades_core:brick_yellow',
	recipe = {'group:claybricks', 'dye:yellow'},
})
]]

