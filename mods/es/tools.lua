--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0

es.colors = {
  grey = minetest.get_color_escape_sequence("#9d9d9d"),
  green = minetest.get_color_escape_sequence("#1eff00"),
  gold = minetest.get_color_escape_sequence("#ffdf00"),
  white = minetest.get_color_escape_sequence("#ffffff")
}


--========================
--Default Override Tools
--========================
--[[
-- The hand
minetest.register_item(":", {
	type = "none",
	wield_image = "wieldhand.png",
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})
]]

--
-- Hoes
--
farming.register_hoe(":farming:hoe_mese_green", {
	description = "Green Mese Hoe  -=Long lasting hoe",
	inventory_image = "es_tool_green_mese_hoe.png",
	--max_uses = 500,
	max_uses = 700,
	groups = {hoe = 1},
})



--
-- Picks
--

minetest.register_tool(":default:pick_wood", {
	--description = "Wooden Pickaxe [Use:10 HP:2 FPI:1.2]",
		description = 
					es.colors.green .. 	"Wooden Pickaxe \n" ..
					es.colors.gold .. 	"Level:		2   \n" ..
					es.colors.gold .. 	"Uses:		10   \n" ..
					es.colors.gold .. 	"Max Drop Level:		0   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.2   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		1.60  max level: 1\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for keeping warm. \nNot long lasting.",
	inventory_image = "default_tool_woodpick.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[3]=1.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1, flammable = 2}
})

minetest.register_tool(":default:pick_stone", {
	--description = "Stone Pickaxe [Use:20 HP:3 FPI:1.3]",
		description = 
					es.colors.green .. 	"Stone Pickaxe \n" ..
					es.colors.gold .. 	"Level:		3   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		0   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.3   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		1.00  max level: 1\n" ..
					es.colors.grey .. 	"Cracky: 2		2.00  max level: 1\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for digging at a slow \nand relaxed pace. \nNot able to dig better ore.",
	inventory_image = "default_tool_stonepick.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.0, [3]=1.00}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool(":default:pick_bronze", {
	--description = "Bronze Pickaxe [Use:20 HP:4 FPI:1.0]",
			description = 
					es.colors.green .. 	"Bronze Pickaxe \n" ..
					es.colors.gold .. 	"Level:		4   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.90  max level: 2\n" ..
					es.colors.grey .. 	"Cracky: 2		1.00  max level: 2\n" ..
					es.colors.grey .. 	"Cracky: 1		4.50  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Good basic tool.  You are better off saving \ntin and copper for other uses.",
	inventory_image = "default_tool_bronzepick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.80, [3]=0.90}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool(":default:pick_steel", {
	--description = "Steel Pickaxe [Use:20 HP:4 FPI:1.0]",
		description = 
					es.colors.green .. 	"Steel Pickaxe \n" ..
					es.colors.gold .. 	"Level:		4   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.80  max level: 2\n" ..
					es.colors.grey .. 	"Cracky: 2		1.60  max level: 2\n" ..
					es.colors.grey .. 	"Cracky: 1		4.00  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Best basic tool.  Get the job done for cheap.",
	inventory_image = "default_tool_steelpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool(":default:pick_mese", {
	--description = "Mese Pickaxe [Use:20 HP:5 FPI:0.9]",
		description = 
					es.colors.green .. 	"Mese Pickaxe \n" ..
					es.colors.gold .. 	"Level:		5   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.9   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.60  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		1.20  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		2.40  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Save mese for lamps and protectors.",
	inventory_image = "default_tool_mesepick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool(":default:pick_diamond", {
	--description = "Diamond Pickaxe [Use:30 HP:5 FPI:0.9]",
		description = 
					es.colors.green .. 	"Diamond Pickaxe \n" ..
					es.colors.gold .. 	"Level:		5   \n" ..
					es.colors.gold .. 	"Uses:		30   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.9   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.50  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		1.00  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		2.00  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Easy way to make a better pick with potion!",
	inventory_image = "default_tool_diamondpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

--
-- Shovels
--

minetest.register_tool(":default:shovel_wood", {
	--description = "Wooden Shovel [Use:10 HP:2 FPI:1.2]",
		description = 
					es.colors.green .. 	"Wooden Shovel \n" ..
					es.colors.gold .. 	"Level:		2   \n" ..
					es.colors.gold .. 	"Uses:		10   \n" ..
					es.colors.gold .. 	"Max Drop Level:		0   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.2   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Crumbly: 3		0.60  max level: 1\n" ..
					es.colors.grey .. 	"Crumbly: 2		1.60  max level: 1\n" ..
					es.colors.grey .. 	"Crumbly: 1		3.00  max level: 1\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Stay warm and burn in a furnace.",
	inventory_image = "default_tool_woodshovel.png",
	wield_image = "default_tool_woodshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1, flammable = 2}
})

minetest.register_tool(":default:shovel_stone", {
	--description = "Stone Shovel [Use:20 HP:2 FPI:1.4]",
		description = 
					es.colors.green .. 	"Stone Shovel \n" ..
					es.colors.gold .. 	"Level:		2   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		0   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.4   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Crumbly: 3		0.50  max level: 1\n" ..
					es.colors.grey .. 	"Crumbly: 2		1.20  max level: 1\n" ..
					es.colors.grey .. 	"Crumbly: 1		1.80  max level: 1\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Stone is ok.",
	inventory_image = "default_tool_stoneshovel.png",
	wield_image = "default_tool_stoneshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool(":default:shovel_bronze", {
	--description = "Bronze Shovel [Use:25 HP:3 FPI:1.1]",
		description = 
					es.colors.green .. 	"Bronze Shovel \n" ..
					es.colors.gold .. 	"Level:		3   \n" ..
					es.colors.gold .. 	"Uses:		25   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.1   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Crumbly: 3		0.45  max level: 2\n" ..
					es.colors.grey .. 	"Crumbly: 2		1.05  max level: 2\n" ..
					es.colors.grey .. 	"Crumbly: 1		1.65  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Who actually makes a bronze shovel?",
	inventory_image = "default_tool_bronzeshovel.png",
	wield_image = "default_tool_bronzeshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.65, [2]=1.05, [3]=0.45}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool(":default:shovel_steel", {
	--description = "Steel Shovel [Use:30 HP:3 FPI:1.1]",
		description = 
					es.colors.green .. 	"Steel Shovel \n" ..
					es.colors.gold .. 	"Level:		3   \n" ..
					es.colors.gold .. 	"Uses:		30   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.1   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Crumbly: 3		0.40  max level: 2\n" ..
					es.colors.grey .. 	"Crumbly: 2		0.90  max level: 2\n" ..
					es.colors.grey .. 	"Crumbly: 1		1.50  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Get real with steel! \nOutlasts bronze...",
	inventory_image = "default_tool_steelshovel.png",
	wield_image = "default_tool_steelshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool(":default:shovel_mese", {
	--description = "Mese Shovel [Use:20 HP:4 FPI:1.0]",
		description = 
					es.colors.green .. 	"Mese Shovel \n" ..
					es.colors.gold .. 	"Level:		4   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Crumbly: 3		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Crumbly: 2		0.60  max level: 3\n" ..
					es.colors.grey .. 	"Crumbly: 1		1.20  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Can use in special craft.",
	inventory_image = "default_tool_meseshovel.png",
	wield_image = "default_tool_meseshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.20, [2]=0.60, [3]=0.30}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool(":default:shovel_diamond", {
	--description = "Diamond Shovel [Use:30 HP:4 FPI:1.0]",
		description = 
					es.colors.green .. 	"Diamond Shovel \n" ..
					es.colors.gold .. 	"Level:		4   \n" ..
					es.colors.gold .. 	"Uses:		30   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Crumbly: 3		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Crumbly: 2		0.50  max level: 3\n" ..
					es.colors.grey .. 	"Crumbly: 1		1.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Upgrade with a splash of luck!",
	inventory_image = "default_tool_diamondshovel.png",
	wield_image = "default_tool_diamondshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

--
-- Axes
--

minetest.register_tool(":default:axe_wood", {
	--description = "Wooden Axe [Use:10 HP:2 FPI:1.0]",
		description = 
					es.colors.green .. 	"Wooden Axe \n" ..
					es.colors.gold .. 	"Level:		2   \n" ..
					es.colors.gold .. 	"Uses:		10   \n" ..
					es.colors.gold .. 	"Max Drop Level:		0   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Choppy: 3		1.60  max level: 1\n" ..
					es.colors.grey .. 	"Choppy: 2		3.00  max level: 1\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Save your wood for a door.",
	inventory_image = "default_tool_woodaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			choppy = {times={[2]=3.00, [3]=1.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1, flammable = 2}
})

minetest.register_tool(":default:axe_stone", {
	--description = "Stone Axe [Use:20 HP:3 FPI:1.2]",
		description = 
					es.colors.green .. 	"Stone Axe \n" ..
					es.colors.gold .. 	"Level:		3   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		0   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.2   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Choppy: 3		1.30  max level: 1\n" ..
					es.colors.grey .. 	"Choppy: 2		2.00  max level: 1\n" ..
					es.colors.grey .. 	"Choppy: 1		3.00  max level: 1\n" ..
					es.colors.white ..	"Description:   \n" ..
										"The BEST cheap axe on the market!.",
	inventory_image = "default_tool_stoneaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.00, [2]=2.00, [3]=1.30}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool(":default:axe_bronze", {
	--description = "Bronze Axe [Use:20 HP:4 FPI:1.0]",
		description = 
					es.colors.green .. 	"Bronze Axe \n" ..
					es.colors.gold .. 	"Level:		4   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Choppy: 3		1.15  max level: 2\n" ..
					es.colors.grey .. 	"Choppy: 2		1.70  max level: 2\n" ..
					es.colors.grey .. 	"Choppy: 1		2.75  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"It looks cool.",
	inventory_image = "default_tool_bronzeaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool(":default:axe_steel", {
	--description = "Steel Axe [Use:20 HP:4 FPI:1.0]",
			description = 
					es.colors.green .. 	"Steel Axe \n" ..
					es.colors.gold .. 	"Level:		4   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Choppy: 3		1.00  max level: 2\n" ..
					es.colors.grey .. 	"Choppy: 2		1.40  max level: 2\n" ..
					es.colors.grey .. 	"Choppy: 1		2.50  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Steel is real.",
	inventory_image = "default_tool_steelaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool(":default:axe_mese", {
	--description = "Mese Axe [Use:20 HP:6 FPI:0.9]",
			description = 
					es.colors.green .. 	"Mese Axe \n" ..
					es.colors.gold .. 	"Level:		6   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.9   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Choppy: 3		0.60  max level: 3\n" ..
					es.colors.grey .. 	"Choppy: 2		1.00  max level: 3\n" ..
					es.colors.grey .. 	"Choppy: 1		2.20  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Mese for protector not for axe.",
	inventory_image = "default_tool_meseaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.20, [2]=1.00, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool(":default:axe_diamond", {
	--description = "Diamond Axe [Use:30 HP:7 FPI:0.9]",
			description = 
					es.colors.green .. 	"Diamond Axe \n" ..
					es.colors.gold .. 	"Level:		7   \n" ..
					es.colors.gold .. 	"Uses:		30   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.9   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Choppy: 3		0.50  max level: 3\n" ..
					es.colors.grey .. 	"Choppy: 2		0.90  max level: 3\n" ..
					es.colors.grey .. 	"Choppy: 1		2.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Just a drop will do.",
	inventory_image = "default_tool_diamondaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

--
-- Swords
--

minetest.register_tool(":default:sword_wood", {
	--description = "Wooden Sword [Use:10 HP:2 FPI:1.0]",
			description = 
					es.colors.green .. 	"Wooden Sword \n" ..
					es.colors.gold .. 	"Level:		2   \n" ..
					es.colors.gold .. 	"Uses:		10   \n" ..
					es.colors.gold .. 	"Max Drop Level:		0   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Snappy: 3		0.40  max level: 1\n" ..
					es.colors.grey .. 	"Snappy: 2		1.60  max level: 1\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Burn Baby Burn!!!.",
	inventory_image = "default_tool_woodsword.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.6, [3]=0.40}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1, flammable = 2}
})

minetest.register_tool(":default:sword_stone", {
	--description = "Stone Sword [Use:20 HP:4 FPI:1.2]",
			description = 
					es.colors.green .. 	"Stone Sword \n" ..
					es.colors.gold .. 	"Level:		4   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		0   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.2   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Snappy: 3		0.40  max level: 1\n" ..
					es.colors.grey .. 	"Snappy: 2		1.40  max level: 1\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Not useful.",
	inventory_image = "default_tool_stonesword.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool(":default:sword_bronze", {
	--description = "Bronze Sword [Use:25 HP:6 FPI:0.8]",
			description = 
					es.colors.green .. 	"Bronze Sword \n" ..
					es.colors.gold .. 	"Level:		6   \n" ..
					es.colors.gold .. 	"Uses:		25   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.8   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Snappy: 3		0.375  max level: 2\n" ..
					es.colors.grey .. 	"Snappy: 2		1.30  max level: 2\n" ..
					es.colors.grey .. 	"Snappy: 1		2.75  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Good enough.",
	inventory_image = "default_tool_bronzesword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.75, [2]=1.30, [3]=0.375}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool(":default:sword_steel", {
	--description = "Steel Sword [Use:30 HP:6 FPI:0.8]",
			description = 
					es.colors.green .. 	"Steel Sword \n" ..
					es.colors.gold .. 	"Level:		6   \n" ..
					es.colors.gold .. 	"Uses:		30   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.8   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Snappy: 3		0.35  max level: 2\n" ..
					es.colors.grey .. 	"Snappy: 2		1.20  max level: 2\n" ..
					es.colors.grey .. 	"Snappy: 1		2.5  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Better than Bronze, and cheaper too.",
	inventory_image = "default_tool_steelsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool(":default:sword_mese", {
	--description = "Mese Sword [Use:30 HP:7 FPI:0.7]",
			description = 
					es.colors.green .. 	"Mese Sword \n" ..
					es.colors.gold .. 	"Level:		7   \n" ..
					es.colors.gold .. 	"Uses:		30   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.7   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Snappy: 3		0.35  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 2		1.00  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 1		2.0  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Mese lamps are pretty.",
	inventory_image = "default_tool_mesesword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool(":default:sword_diamond", {
	--description = "Diamond Sword [Use:40 HP:8 FPI:0.7]",
			description = 
					es.colors.green .. 	"Diamond Sword \n" ..
					es.colors.gold .. 	"Level:		8   \n" ..
					es.colors.gold .. 	"Uses:		40   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.7   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Snappy: 3		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 2		0.90  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 1		1.90  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"One craft away from an Aikerum sword today.",
	inventory_image = "default_tool_diamondsword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

--========================


--========================
--Default Override Tools
--========================

--SWORDS
minetest.register_tool("es:sword_emerald", {
	--description = "Extreme Survival Emerald Sword [Use:50 HP:9 FPI:0.5]",
			description = 
					es.colors.green .. 	"Emerald Sword \n" ..
					es.colors.gold .. 	"Level:		9   \n" ..
					es.colors.gold .. 	"Uses:		50   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.5   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Snappy: 3		0.10  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 2		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 1		1.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Great for farming.",
	inventory_image = "es_tool_emeraldsword.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.10, [2]=0.30, [3]=0.10}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("es:sword_ruby", {
	--description = "Extreme Survival Ruby Sword [Use:60 HP:9 FPI:0.4]",
			description = 
					es.colors.green .. 	"Ruby Sword \n" ..
					es.colors.gold .. 	"Level:		9   \n" ..
					es.colors.gold .. 	"Uses:		60   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.4   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Snappy: 3		0.10  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 2		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 1		0.90  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Greater for farming.",
	inventory_image = "es_tool_rubysword.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=3,
		groupcaps={
			snappy={times={[1]=0.90, [2]=0.30, [3]=0.10}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("es:sword_aikerum", {
	--description = "Extreme Survival Aikerum Sword [Use:80 HP:12 FPI:0.3]",
			description = 
					es.colors.green .. 	"Aikerum Sword \n" ..
					es.colors.gold .. 	"Level:		12   \n" ..
					es.colors.gold .. 	"Uses:		80   \n" ..
					es.colors.gold .. 	"Max Drop Level:		4   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.3   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Snappy: 3		0.10  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 2		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 1		0.50  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Greatest for farming.",
	inventory_image = "es_tool_aikerumsword.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=4,
		groupcaps={
			snappy={times={[1]=0.50, [2]=0.30, [3]=0.10}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("es:sword_purpellium", {
	--description = "Extreme Survival Purpellium Sword [Use:500 HP:10 FPI:0.5]",
				description = 
					es.colors.green .. 	"Purpellium Sword \n" ..
					es.colors.gold .. 	"Level:		10   \n" ..
					es.colors.gold .. 	"Uses:		500   \n" ..
					es.colors.gold .. 	"Max Drop Level:		4   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.5   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Snappy: 3		0.10  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 2		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 1		1.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Very long lasting sword.",
	inventory_image = "es_tool_purpelliumsword.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=4,
		groupcaps={
			snappy={times={[1]=1.10, [2]=0.30, [3]=0.10}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})





--PICKS
minetest.register_tool("es:pick_emerald", {
	--description = "Extreme Survival Emerald Pickaxe [Use:50 HP:5 FPI:1.0]",
			description = 
					es.colors.green .. 	"Emerald Pickaxe \n" ..
					es.colors.gold .. 	"Level:		5   \n" ..
					es.colors.gold .. 	"Uses:		50   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.70  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		1.30  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		2.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Really gooder pickaxe. \nLike a mese axe but faster \nand a bit longer lasting.",
	inventory_image = "es_tool_emeraldpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.10, [2]=1.30, [3]=0.70}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("es:pick_ruby", {
	--description = "Extreme Survival Ruby Pickaxe [Use:60 HP:5 FPI:0.7]",
				description = 
					es.colors.green .. 	"Ruby Pickaxe \n" ..
					es.colors.gold .. 	"Level:		5   \n" ..
					es.colors.gold .. 	"Uses:		60   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.7   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.50  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		1.00  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		2.00  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Long lasting and fast pickaxe.",
	inventory_image = "es_tool_rubypick.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.00, [2]=1.00, [3]=0.50}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("es:pick_aikerum", {
	--description = "Extreme Survival Aikerum Pickaxe [Use:80 HP:6 FPI:0.25]",
					description = 
					es.colors.green .. 	"Aikerum Pickaxe \n" ..
					es.colors.gold .. 	"Level:		6   \n" ..
					es.colors.gold .. 	"Uses:		80   \n" ..
					es.colors.gold .. 	"Max Drop Level:		4   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.25   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		1.10  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		1.40  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"A very fast pickaxe.",
	inventory_image = "es_tool_aikerumpick.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=4,
		groupcaps={
			cracky = {times={[1]=1.4, [2]=1.10, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("es:pick_purpellium", {
	--description = "Extreme Survival Purpellium Pickaxe [Use:500 HP:6 FPI:1.0]",
				description = 
					es.colors.green .. 	"Purpellium Pickaxe \n" ..
					es.colors.gold .. 	"Level:		6   \n" ..
					es.colors.gold .. 	"Uses:		500   \n" ..
					es.colors.gold .. 	"Max Drop Level:		4   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.00   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.70  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		1.30  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		2.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Longest lasting pickaxe.  Almost a super tool.",
	inventory_image = "es_tool_purpelliumpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=4,
		groupcaps={
			cracky = {times={[1]=2.10, [2]=1.30, [3]=0.70}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("es:pick_unobtainium", {
	--description = "Extreme Survival Unobtainium Pickswordshovelaxe [Use:700 HP:13 FPI:0.1]",
				description = 
					es.colors.green .. 	"Unobtainium Pickaxe \n" ..
					es.colors.gold .. 	"Level:		13   \n" ..
					es.colors.gold .. 	"Uses:		400   \n" ..
					es.colors.gold .. 	"Max Drop Level:		4   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.00   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.01  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		0.05  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		0.10  max level: 3\n" ..
					
					es.colors.grey .. 	"Choppy: 3		0.01  max level: 3\n" ..
					es.colors.grey .. 	"Choppy: 2		0.05  max level: 3\n" ..
					es.colors.grey .. 	"Choppy: 1		0.10  max level: 3\n" ..
					
					es.colors.grey .. 	"Crumbly: 3		0.01  max level: 3\n" ..
					es.colors.grey .. 	"Crumbly: 2		0.05  max level: 3\n" ..
					es.colors.grey .. 	"Crumbly: 1		0.10  max level: 3\n" ..
					
					es.colors.grey .. 	"Snappy: 3		0.01  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 2		0.05  max level: 3\n" ..
					es.colors.grey .. 	"Snappy: 1		0.10  max level: 3\n" ..
					
					es.colors.grey .. 	"OBBH: 3		0.01  max level: 3\n" ..
					es.colors.grey .. 	"OBBH: 2		0.05  max level: 3\n" ..
					es.colors.grey .. 	"OBBH: 1		0.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Fastest tool in the \nhistory of Minetest \nNot as long lasting as Purpellium \ndue to it's extreme speeds.",
	inventory_image = "es_tool_unobtainiumpick.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=4,
		groupcaps={
			cracky = {times={[1]=0.1, [2]=0.05, [3]=0.01}, uses=400, maxlevel=3},
			choppy = {times={[1]=0.1, [2]=0.05, [3]=0.01}, uses=400, maxlevel=3},
			crumbly = {times={[1]=0.1, [2]=0.05, [3]=0.01}, uses=400, maxlevel=3},
			snappy= {times={[1]=0.1, [2]=0.05, [3]=0.01}, uses=400, maxlevel=3},
			oddly_breakable_by_hand = {times={[1]=0.1, [2]=0.05, [3]=0.01}, uses=400, maxlevel=3},
		},
		damage_groups = {fleshy=13},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1, shovel = 1, axe = 1, sword = 1}
})

minetest.register_tool("es:pick_mese_green", {
	--description = "Mese Pickaxe [Use:20 HP:5 FPI:0.9]",
		description = 
					es.colors.green .. 	"Mese Green Pickaxe \n" ..
					es.colors.gold .. 	"Level:		5   \n" ..
					es.colors.gold .. 	"Uses:		20   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.9   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.60  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		1.20  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		2.40  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Same as mese tools.",
	inventory_image = "es_tool_mese_greenpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("es:pick_beedo_hammer", {
	--description = "Mese Pickaxe [Use:20 HP:5 FPI:0.9]",
		description = 
					es.colors.green .. 	"Beedo Hammer Pickaxe \n" ..
					es.colors.gold .. 	"Level:		5   \n" ..
					es.colors.gold .. 	"Uses:		300   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.9   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.60  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		1.20  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		2.40  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Same as mese tools - lasts a long time.",
	inventory_image = "es_tool_beedo_hammer.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=300, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

--AXES
minetest.register_tool("es:axe_emerald", {
	--description = "Extreme Survival Emerald Axe [Use:50 HP:7 FPI:1.0]",
			description = 
					es.colors.green .. 	"Emerald Axe \n" ..
					es.colors.gold .. 	"Level:		7   \n" ..
					es.colors.gold .. 	"Uses:		50   \n" ..
					es.colors.gold .. 	"Max Drop Level:		2   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Choppy: 3		1.60  max level: 2\n" ..
					es.colors.grey .. 	"Choppy: 2		3.00  max level: 2\n" ..
					es.colors.grey .. 	"Choppy: 1		0.00  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"A decent axe.",
	inventory_image = "es_tool_emeraldaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=2,
		groupcaps={
			choppy = {times={[2]=3.00, [3]=1.60}, uses=50, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("es:axe_ruby", {
	--description = "Extreme Survival Ruby Axe [Use:60 HP:8 FPI:0.7]",
			description = 
					es.colors.green .. 	"Ruby Axe \n" ..
					es.colors.gold .. 	"Level:		8   \n" ..
					es.colors.gold .. 	"Uses:		60   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.7   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Choppy: 3		1.30  max level: 2\n" ..
					es.colors.grey .. 	"Choppy: 2		2.00  max level: 2\n" ..
					es.colors.grey .. 	"Choppy: 1		3.00  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"A slow, yet decent axe.",
	inventory_image = "es_tool_rubyaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=3.00, [2]=2.00, [3]=1.30}, uses=60, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("es:axe_aikerum", {
	--description = "Extreme Survival Aikerum Axe [Use:80 HP:9 FPI:0.25]",
			description = 
					es.colors.green .. 	"Aikerum Axe \n" ..
					es.colors.gold .. 	"Level:		9   \n" ..
					es.colors.gold .. 	"Uses:		80   \n" ..
					es.colors.gold .. 	"Max Drop Level:		4   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.25   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Choppy: 3		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Choppy: 2		0.50  max level: 3\n" ..
					es.colors.grey .. 	"Choppy: 1		1.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"A very fast axe.",
	inventory_image = "es_tool_aikerumaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=4,
		groupcaps={
			choppy = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1,}
})

minetest.register_tool("es:axe_purpellium", {
	--description = "Extreme Survival Purpellium Axe [Use:80 HP:9 FPI:0.25]",
			description = 
					es.colors.green .. 	"Purpellium Axe \n" ..
					es.colors.gold .. 	"Level:		9   \n" ..
					es.colors.gold .. 	"Uses:		160   \n" ..
					es.colors.gold .. 	"Max Drop Level:		4   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.25   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Choppy: 3		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Choppy: 2		0.50  max level: 3\n" ..
					es.colors.grey .. 	"Choppy: 1		1.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Identical to aikerum axe. \nLasts twice as long.",
	inventory_image = "es_tool_purpelliumaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=4,
		groupcaps={
			choppy = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=160, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

--SHOVELS
minetest.register_tool("es:shovel_emerald", {
	--description = "Extreme Survival Emerald Shovel [Use:50 HP:4 FPI:1.0]",
		description = 
					es.colors.green .. 	"Emerald Shovel \n" ..
					es.colors.gold .. 	"Level:		4   \n" ..
					es.colors.gold .. 	"Uses:		50   \n" ..
					es.colors.gold .. 	"Max Drop Level:		2   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Crumbly: 3		0.60  max level: 2\n" ..
					es.colors.grey .. 	"Crumbly: 2		1.60  max level: 2\n" ..
					es.colors.grey .. 	"Crumbly: 1		3.00  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Looks great on a wall.",
	inventory_image = "es_tool_emeraldshovel.png",
	wield_image = "es_tool_emeraldshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=2,
		groupcaps={
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.60}, uses=50, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("es:shovel_ruby", {
	--description = "Extreme Survival Ruby Shovel [Use:60 HP:4 FPI:0.7]",
		description = 
					es.colors.green .. 	"Ruby Shovel \n" ..
					es.colors.gold .. 	"Level:		4   \n" ..
					es.colors.gold .. 	"Uses:		60   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.7   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Crumbly: 3		0.50  max level: 2\n" ..
					es.colors.grey .. 	"Crumbly: 2		1.20  max level: 2\n" ..
					es.colors.grey .. 	"Crumbly: 1		1.80  max level: 2\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Very nice Shovel.",
	inventory_image = "es_tool_rubyshovel.png",
	wield_image = "es_tool_rubyshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=60, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("es:shovel_aikerum", {
	--description = "Extreme Survival Aikerum Shovel [Use:80 HP:5 FPI:0.25]",
		description = 
					es.colors.green .. 	"Aikerum Shovel \n" ..
					es.colors.gold .. 	"Level:		5   \n" ..
					es.colors.gold .. 	"Uses:		80   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.25   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Crumbly: 3		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Crumbly: 2		0.50  max level: 3\n" ..
					es.colors.grey .. 	"Crumbly: 1		1.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Fastest Shovel.",
	inventory_image = "es_tool_aikerumshovel.png",
	wield_image = "es_tool_aikerumshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=4,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("es:shovel_purpellium", {
	--description = "Extreme Survival Purpellium Shovel [Use:80 HP:5 FPI:0.25]",
		description = 
					es.colors.green .. 	"Purpellium Shovel \n" ..
					es.colors.gold .. 	"Level:		5   \n" ..
					es.colors.gold .. 	"Uses:		160   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.25   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Crumbly: 3		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Crumbly: 2		0.50  max level: 3\n" ..
					es.colors.grey .. 	"Crumbly: 1		1.10  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Same as Aikerum shovel, yet longer lasting.",
	inventory_image = "es_tool_purpelliumshovel.png",
	wield_image = "es_tool_purpelliumshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=4,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=160, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})



--hades
minetest.register_tool(":hades_core:pick_prism", {
	--description = "Extreme Survival Emerald Pickaxe [Use:50 HP:5 FPI:1.0]",
			description = 
					es.colors.green .. 	"Prism Pickaxe \n" ..
					es.colors.gold .. 	"Level:		5   \n" ..
					es.colors.gold .. 	"Uses:		90   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.9   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.50  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		1.00  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		2.00  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Really gooder pickaxe. \nLike a mese axe but faster \nand a bit longer lasting.",
	inventory_image = "default_tool_prismpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.00, [2]=1.00, [3]=0.50}, uses=90, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool(":hades_core:shovel_prism", {
	--description = "Extreme Survival Emerald Pickaxe [Use:50 HP:5 FPI:1.0]",
			description = 
					es.colors.green .. 	"Prism Shovel \n" ..
					es.colors.gold .. 	"Level:		4   \n" ..
					es.colors.gold .. 	"Uses:		90   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		1.0   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.25  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		0.40  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		0.90  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Really gooder shovel. \nLike a mese shovel.",
	inventory_image = "default_tool_prismshovel.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=0.90, [2]=0.40, [3]=0.25}, uses=90, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool(":hades_core:axe_prism", {
	--description = "Extreme Survival Emerald Pickaxe [Use:50 HP:5 FPI:1.0]",
			description = 
					es.colors.green .. 	"Prism Axe \n" ..
					es.colors.gold .. 	"Level:		7   \n" ..
					es.colors.gold .. 	"Uses:		90   \n" ..
					es.colors.gold .. 	"Max Drop Level:		3   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.9   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.50  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		0.90  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		1.50  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Really gooder axe. \nLike a mese axe.",
	inventory_image = "default_tool_prismaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.50, [2]=0.90, [3]=0.50}, uses=90, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool(":hades_core:sword_prism", {
	--description = "Extreme Survival Emerald Pickaxe [Use:50 HP:5 FPI:1.0]",
			description = 
					es.colors.green .. 	"Prism Axe \n" ..
					es.colors.gold .. 	"Level:		9   \n" ..
					es.colors.gold .. 	"Uses:		60   \n" ..
					es.colors.gold .. 	"Max Drop Level:		1   \n" ..
					es.colors.gold .. 	"Full Punch Interval:		0.7   \n" ..
					es.colors.white ..	"Group Caps:   \n" ..
					es.colors.grey .. 	"Cracky: 3		0.30  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 2		0.90  max level: 3\n" ..
					es.colors.grey .. 	"Cracky: 1		1.50  max level: 3\n" ..
					es.colors.white ..	"Description:   \n" ..
										"Really gooder sword. \nLike a mese sword.",
	inventory_image = "default_tool_prismaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})





if minetest.get_modpath("toolranks") then
--emerald
  minetest.override_item("es:pick_emerald", {
    original_description = "Extreme Survival Emerald Pickaxe",
    description = toolranks.create_description("Extreme Survival Emerald Pickaxe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:axe_emerald", {
    original_description = "Extreme Survival Emerald Axe",
    description = toolranks.create_description("Extreme Survival Emerald Axe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:shovel_emerald", {
    original_description = "Extreme Survival Emerald Shovel",
    description = toolranks.create_description("Extreme Survival Emerald Shovel", 0, 1),
    after_use = toolranks.new_afteruse})
	
  minetest.override_item("es:sword_emerald", {
    original_description = "Extreme Survival Emerald Sword",
    description = toolranks.create_description("Extreme Survival Emerald Sword", 0, 1),
    after_use = toolranks.new_afteruse})
--ruby
  minetest.override_item("es:pick_ruby", {
    original_description = "Extreme Survival Ruby Pickaxe",
    description = toolranks.create_description("Extreme Survival Ruby Pickaxe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:axe_ruby", {
    original_description = "Extreme Survival Ruby Axe",
    description = toolranks.create_description("Extreme Survival Ruby Axe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:shovel_ruby", {
    original_description = "Extreme Survival Ruby Shovel",
    description = toolranks.create_description("Extreme Survival Ruby Shovel", 0, 1),
    after_use = toolranks.new_afteruse})
	
  minetest.override_item("es:sword_ruby", {
    original_description = "Extreme Survival Ruby Sword",
    description = toolranks.create_description("Extreme Survival Ruby Sword", 0, 1),
    after_use = toolranks.new_afteruse})
--aikerum	
  minetest.override_item("es:pick_aikerum", {
    original_description = "Extreme Survival Aikerum Pickaxe",
    description = toolranks.create_description("Extreme Survival Aikerum Pickaxe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:axe_aikerum", {
    original_description = "Extreme Survival Aikerum Axe",
    description = toolranks.create_description("Extreme Survival Aikerum Axe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:shovel_aikerum", {
    original_description = "Extreme Survival Aikerum Shovel",
    description = toolranks.create_description("Extreme Survival Aikerum Shovel", 0, 1),
    after_use = toolranks.new_afteruse})
	
  minetest.override_item("es:sword_aikerum", {
    original_description = "Extreme Survival Aikerum Sword",
    description = toolranks.create_description("Extreme Survival Aikerum Sword", 0, 1),
    after_use = toolranks.new_afteruse})
--purpellium	
  minetest.override_item("es:pick_purpellium", {
    original_description = "Extreme Survival Purpellium Pickaxe",
    description = toolranks.create_description("Extreme Survival Purpellium Pickaxe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:axe_purpellium", {
    original_description = "Extreme Survival Purpellium Axe",
    description = toolranks.create_description("Extreme Survival Purpellium Axe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:shovel_purpellium", {
    original_description = "Extreme Survival Purpellium Shovel",
    description = toolranks.create_description("Extreme Survival Purpellium Shovel", 0, 1),
    after_use = toolranks.new_afteruse})
	
  minetest.override_item("es:sword_purpellium", {
    original_description = "Extreme Survival Purpellium Sword",
    description = toolranks.create_description("Extreme Survival Purpellium Sword", 0, 1),
    after_use = toolranks.new_afteruse})
--un	
  minetest.override_item("es:pick_unobtainium", {
    original_description = "Extreme Survival Unobtainium Pickaxe",
    description = toolranks.create_description("Extreme Survival Unobtainium Pickaxe", 0, 1),
    after_use = toolranks.new_afteruse})
--[[
  minetest.override_item("es:axe_unobtainium", {
    original_description = "Extreme Survival Unobtainium Axe",
    description = toolranks.create_description("Extreme Survival Unobtainium Axe", 0, 1),
    after_use = toolranks.new_afteruse})

  minetest.override_item("es:shovel_unobtainium", {
    original_description = "Extreme Survival Unobtainium Shovel",
    description = toolranks.create_description("Extreme Survival Unobtainium Shovel", 0, 1),
    after_use = toolranks.new_afteruse})
	
  minetest.override_item("es:sword_unobtainium", {
    original_description = "Extreme Survival Unobtainium Sword",
    description = toolranks.create_description("Extreme Survival Unobtainium Sword", 0, 1),
    after_use = toolranks.new_afteruse})
	
]]	
end
