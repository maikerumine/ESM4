local S = minetest.get_translator("hade_core")

-- mods/default/tools.lua


-- The hand
minetest.register_item(":", {
	type = "none",
	wield_image = "wieldhand.png",
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=4.00, [3]=2.20}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=5.50,[2]=4.00,[3]=1.70}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})

local tt_pick = S("Digs hard, cracky blocks")
local tt_shovel = S("Digs soft, crumbly blocks")
local tt_axe = S("Chops wood")
local tt_sword = S("Melee weapon")

--
-- Picks
--

--[[
minetest.register_tool("hades_core:pick_wood", {
	description = S("Wooden Pickaxe"),
	_tt_help = tt_pick,
	inventory_image = "default_tool_woodpick.png",
	groups = { pickaxe = 1, },
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[3]=2.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
})
minetest.register_tool("hades_core:pick_stone", {
	description = S("Stone Pickaxe"),
	_tt_help = tt_pick,
	inventory_image = "default_tool_stonepick.png",
	groups = { pickaxe = 1, },
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=3.00, [3]=1.80}, uses=15, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_tool("hades_core:pick_steel", {
	description = S("Steel Pickaxe"),
	_tt_help = tt_pick,
	inventory_image = "default_tool_steelpick.png",
	groups = { pickaxe = 1, },
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("hades_core:pick_bronze", {
	description = S("Bronze Pickaxe"),
	_tt_help = tt_pick,
	inventory_image = "default_tool_bronzepick.png",
	groups = { pickaxe = 1, },
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=3.00, [2]=1.60, [3]=0.80}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("hades_core:pick_mese", {
	description = S("Mese Pickaxe"),
	_tt_help = tt_pick,
	inventory_image = "default_tool_mesepick.png",
	groups = { pickaxe = 1, },
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.40, [2]=1.20, [3]=0.60}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})
]]
minetest.register_tool("hades_core:pick_prism", {
	description = S("Prism Pickaxe"),
	_tt_help = tt_pick,
	inventory_image = "default_tool_prismpick.png",
	groups = { pickaxe = 1, },
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.00, [2]=1.00, [3]=0.50}, uses=90, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})


--
-- Shovels
--

--[[
minetest.register_tool("hades_core:shovel_wood", {
	description = S("Wooden Shovel"),
	_tt_help = tt_shovel,
	inventory_image = "default_tool_woodshovel.png",
	groups = { shovel = 1, },
	wield_image = "default_tool_woodshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=4.00, [2]=2.60, [3]=1.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
})
minetest.register_tool("hades_core:shovel_stone", {
	description = S("Stone Shovel"),
	_tt_help = tt_shovel,
	inventory_image = "default_tool_stoneshovel.png",
	groups = { shovel = 1, },
	wield_image = "default_tool_stoneshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=2.80, [2]=1.60, [3]=1.00}, uses=15, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
})
minetest.register_tool("hades_core:shovel_steel", {
	description = S("Steel Shovel"),
	_tt_help = tt_shovel,
	inventory_image = "default_tool_steelshovel.png",
	groups = { shovel = 1, },
	wield_image = "default_tool_steelshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.00, [2]=1.00, [3]=0.50}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_tool("hades_core:shovel_bronze", {
	description = S("Bronze Shovel"),
	_tt_help = tt_shovel,
	inventory_image = "default_tool_bronzeshovel.png",
	groups = { shovel = 1, },
	wield_image = "default_tool_bronzeshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.70, [2]=0.90, [3]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_tool("hades_core:shovel_mese", {
	description = S("Mese Shovel"),
	_tt_help = tt_shovel,
	inventory_image = "default_tool_meseshovel.png",
	groups = { shovel = 1, },
	wield_image = "default_tool_meseshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.20, [2]=0.60, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})
]]
minetest.register_tool("hades_core:shovel_prism", {
	description = S("Prism Shovel"),
	_tt_help = tt_shovel,
	inventory_image = "default_tool_prismshovel.png",
	groups = { shovel = 1, },
	wield_image = "default_tool_prismshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.90, [2]=0.40, [3]=0.25}, uses=90, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

--[[
--
-- Axes
--


minetest.register_tool("hades_core:axe_wood", {
	description = S("Wooden Axe"),
	_tt_help = tt_axe,
	inventory_image = "default_tool_woodaxe.png",
	groups = { axe = 1, },
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			choppy = {times={[2]=4.00, [3]=3.00}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
})
minetest.register_tool("hades_core:axe_stone", {
	description = S("Stone Axe"),
	_tt_help = tt_axe,
	inventory_image = "default_tool_stoneaxe.png",
	groups = { axe = 1, },
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.50, [2]=2.50, [3]=2.00}, uses=15, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_tool("hades_core:axe_steel", {
	description = S("Steel Axe"),
	_tt_help = tt_axe,
	inventory_image = "default_tool_steelaxe.png",
	groups = { axe = 1, },
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.60, [3]=1.50}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("hades_core:axe_bronze", {
	description = S("Bronze Axe"),
	_tt_help = tt_axe,
	inventory_image = "default_tool_bronzeaxe.png",
	groups = { axe = 1, },
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.20, [2]=1.40, [3]=1.20}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("hades_core:axe_mese", {
	description = S("Mese Axe"),
	_tt_help = tt_axe,
	inventory_image = "default_tool_meseaxe.png",
	groups = { axe = 1, },
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.90, [2]=1.10, [3]=0.80}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})
]]
minetest.register_tool("hades_core:axe_prism", {
	description = S("Prism Axe"),
	_tt_help = tt_axe,
	inventory_image = "default_tool_prismaxe.png",
	groups = { axe = 1, },
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.50, [2]=0.90, [3]=0.50}, uses=90, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

--[[
--
-- Swords
--


minetest.register_tool("hades_core:sword_wood", {
	description = S("Wooden Sword"),
	_tt_help = tt_sword,
	inventory_image = "default_tool_woodsword.png",
	groups = { sword = 1, },
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.6, [3]=0.40}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	}
})
minetest.register_tool("hades_core:sword_stone", {
	description = S("Stone Sword"),
	_tt_help = tt_sword,
	inventory_image = "default_tool_stonesword.png",
	groups = { sword = 1, },
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=15, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	}
})
minetest.register_tool("hades_core:sword_steel", {
	description = S("Steel Sword"),
	_tt_help = tt_sword,
	inventory_image = "default_tool_steelsword.png",
	groups = { sword = 1, },
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	}
})
minetest.register_tool("hades_core:sword_bronze", {
	description = S("Bronze Sword"),
	_tt_help = tt_sword,
	inventory_image = "default_tool_bronzesword.png",
	groups = { sword = 1, },
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	}
})
minetest.register_tool("hades_core:sword_mese", {
	description = S("Mese Sword"),
	_tt_help = tt_sword,
	inventory_image = "default_tool_mesesword.png",
	groups = { sword = 1, },
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=35, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})
]]
minetest.register_tool("hades_core:sword_prism", {
	description = S("Prism Sword"),
	_tt_help = tt_sword,
	inventory_image = "default_tool_prismsword.png",
	groups = { sword = 1, },
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	}
})
