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


--tweaks and overrides
--rnd code
--cactus tweaks
local function hurt_cactus() -- cactus tweak
	local name = "default:cactus"
	local table = minetest.registered_nodes[name];
	local table2 = {};
	for i,v in pairs(table) do table2[i] = v end
	table2.groups.disable_jump = 1
	table2.damage_per_second = 5
	minetest.register_node(":"..name, table2)
end
hurt_cactus();


--TECHNIC NODES
minetest.register_node( "es:granite", {
	description = "Granite",
	tiles = { "technic_granite.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "es:marble", {
	description = "Marble",
	tiles = { "technic_marble.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "es:marble_bricks", {
	description = "Marble Bricks",
	tiles = { "technic_marble_bricks.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--NOW WE ADD SOME RADIOACTIVITY FROM THE TECHNIC MOD
--20151206  DECIDED TO EVENTUALLY MOVE THIS INTO THE RADIATION HUD.
--MOVED AND TESTING NEW RADIATION HUD.
--KEEPING THIS CODE FOR POSSIBLE HUD FAILURE.
--UPDATE: Hud never worked like it should.
----------------------------------------


if not vector.length_square then
	vector.length_square = function (v)
		return v.x*v.x + v.y*v.y + v.z*v.z
	end
end

-- radioactivity

-- Radiation resistance represents the extent to which a material
-- attenuates radiation passing through it; i.e., how good a radiation
-- shield it is.  This is identified per node type.  For materials that
-- exist in real life, the radiation resistance value that this system
-- uses for a node type consisting of a solid cube of that material is the
-- (approximate) number of halvings of ionising radiation that is achieved
-- by a metre of the material in real life.  This is approximately
-- proportional to density, which provides a good way to estimate it.
-- Homogeneous mixtures of materials have radiation resistance computed
-- by a simple weighted mean.  Note that the amount of attenuation that
-- a material achieves in-game is not required to be (and is not) the
-- same as the attenuation achieved in real life.
--
-- Radiation resistance for a node type may be specified in the node
-- definition, under the key "radiation_resistance".  As an interim
-- measure, until node definitions widely include this, this code
-- knows a bunch of values for particular node types in several mods,
-- and values for groups of node types.  The node definition takes
-- precedence if it specifies a value.  Nodes for which no value at
-- all is known are taken to provide no radiation resistance at all;
-- this is appropriate for the majority of node types.  Only node types
-- consisting of a fairly homogeneous mass of material should report
-- non-zero radiation resistance; anything with non-uniform geometry
-- or complex internal structure should show no radiation resistance.
-- Fractional resistance values are permitted; two significant figures
-- is the recommended precision.
local default_radiation_resistance_per_node = {
	["default:brick"] = 13,
	["default:bronzeblock"] = 45,
	["default:clay"] = 15,
	["default:coalblock"] = 9.6,
	["default:cobble"] = 15,
	["default:copperblock"] = 46,
	["default:desert_cobble"] = 15,
	["default:desert_sand"] = 10,
	["default:desert_stone"] = 17,
	["default:desert_stonebrick"] = 17,
	["default:diamondblock"] = 24,
	["default:dirt"] = 8.2,
	["default:dirt_with_grass"] = 8.2,
	["default:dry_dirt"] = 8.2,
	["default:dirt_with_dry_grass"] = 8.2,
	["default:dirt_with_grass_footsteps"] = 8.2,
	["default:dirt_with_snow"] = 8.2,
	["default:glass"] = 17,
	["default:goldblock"] = 170,
	["default:gravel"] = 10,
	["default:ice"] = 5.6,
	["default:lava_flowing"] = 8.5,
	["default:lava_source"] = 17,
	["default:mese"] = 21,
	["default:mossycobble"] = 15,
	["default:nyancat"] = 1000,
	["default:nyancat_rainbow"] = 1000,
	["default:obsidian"] = 18,
	["default:obsidian_glass"] = 18,
	["default:sand"] = 10,
	["default:sandstone"] = 15,
	["default:sandstonebrick"] = 15,
	["default:snowblock"] = 1.7,
	["default:steelblock"] = 40,
	["default:stone"] = 17,
	["default:stone_with_coal"] = 16,
	["default:stone_with_copper"] = 20,
	["default:stone_with_diamond"] = 18,
	["default:stone_with_gold"] = 34,
	["default:stone_with_iron"] = 20,
	["default:stone_with_mese"] = 17,
	["default:stonebrick"] = 17,
	["default:water_flowing"] = 2.8,
	["default:water_source"] = 5.6,
	["farming:desert_sand_soil"] = 10,
	["farming:desert_sand_soil_wet"] = 10,
	["farming:soil"] = 8.2,
	["farming:soil_wet"] = 8.2,
	["glooptest:akalin_crystal_glass"] = 21,
	["glooptest:akalinblock"] = 40,
	["glooptest:alatro_crystal_glass"] = 21,
	["glooptest:alatroblock"] = 40,
	["glooptest:amethystblock"] = 18,
	["glooptest:arol_crystal_glass"] = 21,
	["glooptest:crystal_glass"] = 21,
	["glooptest:emeraldblock"] = 19,
	["glooptest:heavy_crystal_glass"] = 21,
	["glooptest:mineral_akalin"] = 20,
	["glooptest:mineral_alatro"] = 20,
	["glooptest:mineral_amethyst"] = 17,
	["glooptest:mineral_arol"] = 20,
	["glooptest:mineral_desert_coal"] = 16,
	["glooptest:mineral_desert_iron"] = 20,
	["glooptest:mineral_emerald"] = 17,
	["glooptest:mineral_kalite"] = 20,
	["glooptest:mineral_ruby"] = 18,
	["glooptest:mineral_sapphire"] = 18,
	["glooptest:mineral_talinite"] = 20,
	["glooptest:mineral_topaz"] = 18,
	["glooptest:reinforced_crystal_glass"] = 21,
	["glooptest:rubyblock"] = 27,
	["glooptest:sapphireblock"] = 27,
	["glooptest:talinite_crystal_glass"] = 21,
	["glooptest:taliniteblock"] = 40,
	["glooptest:topazblock"] = 24,
	["mesecons_extrawires:mese_powered"] = 21,
	["moreblocks:cactus_brick"] = 13,
	["moreblocks:cactus_checker"] = 8.5,
	["moreblocks:circle_stone_bricks"] = 17,
	["moreblocks:clean_glass"] = 17,
	["moreblocks:coal_checker"] = 9.0,
	["moreblocks:coal_glass"] = 17,
	["moreblocks:coal_stone"] = 17,
	["moreblocks:coal_stone_bricks"] = 17,
	["moreblocks:glow_glass"] = 17,
	["moreblocks:grey_bricks"] = 15,
	["moreblocks:iron_checker"] = 11,
	["moreblocks:iron_glass"] = 17,
	["moreblocks:iron_stone"] = 17,
	["moreblocks:iron_stone_bricks"] = 17,
	["moreblocks:plankstone"] = 9.3,
	["moreblocks:split_stone_tile"] = 15,
	["moreblocks:split_stone_tile_alt"] = 15,
	["moreblocks:stone_tile"] = 15,
	["moreblocks:super_glow_glass"] = 17,
	["moreblocks:tar"] = 7.0,
	["moreblocks:wood_tile"] = 1.7,
	["moreblocks:wood_tile_center"] = 1.7,
	["moreblocks:wood_tile_down"] = 1.7,
	["moreblocks:wood_tile_flipped"] = 1.7,
	["moreblocks:wood_tile_full"] = 1.7,
	["moreblocks:wood_tile_left"] = 1.7,
	["moreblocks:wood_tile_right"] = 1.7,
	["moreblocks:wood_tile_up"] = 1.7,
	["moreores:mineral_mithril"] = 18,
	["moreores:mineral_silver"] = 21,
	["moreores:mineral_tin"] = 19,
	["moreores:mithril_block"] = 26,
	["moreores:silver_block"] = 53,
	["moreores:tin_block"] = 37,
	["snow:snow_brick"] = 2.8,
	["technic:brass_block"] = 43,
	["technic:carbon_steel_block"] = 40,
	["technic:cast_iron_block"] = 40,
	["technic:chernobylite_block"] = 40,
	["technic:chromium_block"] = 37,
	["technic:corium_flowing"] = 40,
	["technic:corium_source"] = 80,
	["technic:granite"] = 18,
	["technic:marble"] = 18,
	["technic:marble_bricks"] = 18,
	["technic:mineral_chromium"] = 19,
	["technic:mineral_uranium"] = 71,
	["technic:mineral_zinc"] = 19,
	["technic:stainless_steel_block"] = 40,
	["technic:uranium_block"] = 500,
	["technic:zinc_block"] = 36,
	["tnt:tnt"] = 11,
	["tnt:tnt_burning"] = 11,
}
local default_radiation_resistance_per_group = {
	concrete = 16,
	tree = 3.4,
	wood = 1.7,
}
local cache_radiation_resistance = {}
local function node_radiation_resistance(nodename)
	local eff = cache_radiation_resistance[nodename]
	if eff then return eff end
	local def = minetest.registered_nodes[nodename] or {groups={}}
	eff = def.radiation_resistance or default_radiation_resistance_per_node[nodename]
	if not eff then
		for g, v in pairs(def.groups) do
			if v > 0 and default_radiation_resistance_per_group[g] then
				eff = default_radiation_resistance_per_group[g]
				break
			end
		end
	end
	if not eff then eff = 0 end
	cache_radiation_resistance[nodename] = eff
	return eff
end


-- Radioactive nodes cause damage to nearby players.  The damage
-- effect depends on the intrinsic strength of the radiation source,
-- the distance between the source and the player, and the shielding
-- effect of the intervening material.  These determine a rate of damage;
-- total damage caused is the integral of this over time.
--
-- In the absence of effective shielding, for a specific source the
-- damage rate varies realistically in inverse proportion to the square
-- of the distance.  (Distance is measured to the player's abdomen,
-- not to the nominal player position which corresponds to the foot.)
-- However, if the player is inside a non-walkable (liquid or gaseous)
-- radioactive node, the nominal distance could go to zero, yielding
-- infinite damage.  In that case, the player's body is displacing the
-- radioactive material, so the effective distance should remain non-zero.
-- We therefore apply a lower distance bound of sqrt(0.75) m, which is
-- the maximum distance one can get from the node centre within the node.
--
-- A radioactive node is identified by being in the "radioactive" group,
-- and the group value signifies the strength of the radiation source.
-- The group value is the distance in metres from a node at which an
-- unshielded player will be damaged by 0.25 HP/s.  Or, equivalently, it
-- is half the square root of the damage rate in HP/s that an unshielded
-- player 1 m away will take.
--
-- Shielding is assessed by sampling every 0.25 m along the path
-- from the source to the player, ignoring the source node itself.
-- The summed radiation resistance values from the sampled nodes yield
-- a measure of the total amount of radiation resistance on the path.
-- As in reality, shielding causes exponential attenuation of radiation.
-- However, the effect is scaled down relative to real life: each
-- metre-point of shielding, corresponding to a real-life halving of
-- radiation, reduces radiation by 0.01 nepers (a factor of about 1.01).
-- This scales down the difference between shielded and unshielded safe
-- distances, avoiding the latter becoming impractically large.
--
-- Damage is processed at rates down to 0.25 HP/s, which in the absence of
-- shielding is attained at the distance specified by the "radioactive"
-- group value.  Computed damage rates below 0.25 HP/s result in no
-- damage at all to the player.  This gives the player an opportunity
-- to be safe, and limits the range at which source/player interactions
-- need to be considered.
local assumed_abdomen_offset = vector.new(0, 1, 0)
local assumed_abdomen_offset_length = vector.length(assumed_abdomen_offset)
minetest.register_abm({
	nodenames = {"group:radioactive"},
	interval = 1,
	chance = 1,
	action = function (pos, node)
		local strength = minetest.registered_nodes[node.name].groups.radioactive
		for _, o in ipairs(minetest.get_objects_inside_radius(pos, strength + assumed_abdomen_offset_length)) do
			if o:is_player() then
				local rel = vector.subtract(vector.add(o:getpos(), assumed_abdomen_offset), pos)
				local dist_sq = vector.length_square(rel)
				local dist = math.sqrt(dist_sq)
				local dirstep = dist == 0 and vector.new(0,0,0) or vector.divide(rel, dist*4)
				local intpos = pos
				local resistance = 0
				for intdist = 0.25, dist, 0.25 do
					intpos = vector.add(intpos, dirstep)
					local intnodepos = vector.round(intpos)
					if not vector.equals(intnodepos, pos) then
						resistance = resistance + node_radiation_resistance(minetest.get_node(intnodepos).name)
					end
				end
				local dmg_rate = 0.25 * strength*strength * math.exp(-0.0025*resistance) / math.max(0.75, dist_sq)
				if dmg_rate >= 0.25 then
					local dmg_int = math.floor(dmg_rate)
					if math.random() < dmg_rate-dmg_int then
						dmg_int = dmg_int + 1
					end
					if dmg_int > 0 then
						o:set_hp(math.max(o:get_hp() - dmg_int, 0))
					end
				end
			end
		end
	end,
})






--ES Node Definition
minetest.register_node("es:stone_with_emerald", {
	description = "Emerald Ore",
	tiles = {"default_stone.png^emerald_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = "es:emerald_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_ruby", {
	description = "Ruby Ore",
	tiles = {"default_stone.png^ruby_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = "es:ruby_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_aikerum", {
	description = "Aikerum Ore",
	tiles = {"default_stone.png^aikerum_ore.png"},
	is_ground_content = true,
	groups = {cracky=1,level = 2},
	drop = "es:aikerum_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_infinium", {
	description = "Infinium Ore - Slightly Radioactive",
	tiles = {"default_stone.png^infinium_ore.png"},
	is_ground_content = true,
	groups = {cracky=1,level = 2, radioactive = (state == "source" and 2 or 2)},
	drop = "es:infinium_goo",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stone_with_purpellium", {
	description = "Purlellium Ore - Oddly interesting",
	tiles = {"default_stone.png^purpellium_ore.png"},
	is_ground_content = true,
	groups = {cracky=2,level = 2,fall_damage_add_percent = -1000, radioactive = (state == "source" and 2 or 2)},
	drop = "es:purpellium_lump",
	sounds = default.node_sound_stone_defaults(),
})

--Emerald located at -1000
minetest.register_node("es:emeraldblock", {
	description = "Emerald Block",
	tiles = {"emerald_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:emerald_crystal", {
	description = "Emerald Crystal",
	inventory_image = "emerald.png",
})

--Ruby located at -3000
minetest.register_node("es:rubyblock", {
	description = "Ruby Block",
	tiles = {"ruby_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:ruby_crystal", {
	description = "Ruby Crystal",
	inventory_image = "ruby.png",
})

--Aikerum located at -4000
minetest.register_node("es:aikerumblock", {
	description = "Aikerum Block",
	tiles = {"aikerum_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:aikerum_crystal", {
	description = "Aikerum Crystal",
	inventory_image = "aikerum.png",
})


--Infinium located at -4300
minetest.register_node("es:infiniumblock", {
	description = "infinium Block",
	tiles = {"infinium_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:infinium_goo", {
	description = "Infinium Goo--Need to craft with vessel to contain.",
	inventory_image = "infinium.png",
})

minetest.register_craftitem("es:infinium_ingot", {
	description = "Infinium Ingot--TBD CRAFTING Special Armour and Lab Equipment",
	--inventory_image = "infinium_ingot.png",
	inventory_image = "infinium_ingot.png",
})

minetest.register_craftitem("es:infinium_container", {
	description = "Infinium Container--Cook to get Infinium Ingot",
	inventory_image = "infinium_container.png",
})

--Purpellium located at -4000
minetest.register_node("es:purpelliumblock", {
	description = "Purpellium Block - Fall from great height without any damage if landing on this block",
	tiles = {"purpellium_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("es:purpellium_lump", {
	description = "Purpellium Lump",
	inventory_image = "purpellium_lump.png",
})

minetest.register_craftitem("es:purpellium_ingot", {
	description = "Purpellium Ingot",
	inventory_image = "purpellium_ingot.png",
})



--BONEBLOCK
minetest.register_node("es:boneblock", {
	description = "Bone Blox",
	tiles = {
	"bones_top.png",
	"bones_bottom.png",
	"bones_side.png",
	"bones_side.png",
	"bones_rear.png",
	"bones_front.png"
	},
	paramtype2 = "facedir",
	groups = {dig_immediate=2},
	sounds = default.node_sound_dirt_defaults({
	footstep = {name="default_gravel_footstep", gain=0.5},
	dug = {name="default_gravel_footstep", gain=1.0},
	}),
})


--INPERVIOUS NODES  CANNOT BREAK- Great for prison walls.
minetest.register_node("es:hgglass", {
	description = "High Density Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"default_glass.png", "default_glass_detail.png"},
	inventory_image = minetest.inventorycube("default_glass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("es:steelblock", {
	description = "High Density Steel Block",
	tiles = {"default_steel_block.png"},
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stoneblock", {
	description = "High Density Stone Block",
	tiles = {"default_stone.png"},
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:sandstonebrick", {
	description = "High Density Sandstone Brick",
	tiles = {"default_stone_brick.png^[colorize:#CCCC99:150"},
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:stonebrick", {
	description = "High Density Stone Brick",
	tiles = {"default_stone_brick.png"},
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:junglewood", {
	description = "High Density Junglewood Planks",
	tiles = {"default_junglewood.png"},
	is_ground_content = false,
	groups = {immortal=1,cracky=0,not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})


--A simple way to store your cookable Mese, and it gives off light!
minetest.register_node("es:messymese", {
	description = "Messy MESE Block",
	tiles = {"default_clay.png^bubble.png^mese_cook_mese_crystal.png"},
	light_source = 14,
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:what", {
	description = "The What Block - Dig for random gift",
	drawtype = "glasslike_framed_optional^bubble.png",
	tiles = {"default_glass.png^bubble.png", "default_glass_detail.png^bubble.png"},
	inventory_image = minetest.inventorycube("default_glass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {crumbly=3,},
	drop = {
		max_items = 2,
		items = {
			{items = {'es:what'}, rarity = 80},
			{items = {'es:sword_aikerum'}, rarity = 50},
			{items = {'es:sword_ruby'}, rarity = 40},
			{items = {'es:sword_emerald'}, rarity = 30},
			{items = {'es:pick_aikerum'}, rarity = 50},
			{items = {'es:pick_ruby'}, rarity = 40},
			{items = {'es:pick_emerald'}, rarity = 30},
			{items = {'farming:bread 20'}, rarity = 3},
			{items = {'default:cobble 10'}, rarity = 3},
			{items = {'default:gold_lump 10'}, rarity = 10},
			{items = {'default:iron_lump 10'}, rarity = 5},
			{items = {'default:apple 10'}, rarity = 5},
			{items = {'default:coal_lump 10'}, rarity = 1},
			{items = {'es:depleted_uranium_ingot 3'}}
		}
	},
	sounds = default.node_sound_glass_defaults(),
})




--Default addons as they should be.  I changed ore generation to keep unique for compatibility.

--Dry dirt added
minetest.register_node("es:dry_dirt", {
	description = "Some dry dirt",
	tiles = {"default_dry_dirt.png"},
	--tiles = {"dry_dirt.png"},
	groups = {crumbly = 3},
	drop = 'es:dry_dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("es:stone_with_mese", {
	description = "Cookable Mese Ore",
	tiles = {"default_stone.png^default_mineral_mese.png"},
	paramtype = "light",
	groups = {cracky = 1},
	drop = "es:mesecook_crystal",
	sounds = default.node_sound_stone_defaults(),
	light_source = 1,
})

minetest.register_node("es:desert_stone_with_gold", {
	description = "Gold Ore",
	tiles = {"default_desert_stone.png^default_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:desert_stone_with_iron", {
	description = "Iron Ore",
	tiles = {"default_desert_stone.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = 'default:iron_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:desert_stone_with_coal", {
	description = "Coal Ore",
	tiles = {"default_desert_stone.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'default:coal_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("es:depleted_uranium", {
	description = "Depleted Uranium Ore RADIOACTIVE",
	tiles = {"default_stone.png^uranium_ore.png"},
	groups = {cracky = 3, radioactive = (state == "source" and 3 or 2)},
	drop = 'es:depleted_uranium_lump',
	sounds = default.node_sound_stone_defaults(),
	light_source = 12,
})

minetest.register_craftitem("es:depleted_uranium_lump", {
	description = "Depleted Uranium use for long term fuel, first cook the lump into an ingot, then use ingot for fuel.",
	inventory_image = "uranium_lump.png",
})



--ES CUSTOM LIQUIDS:
minetest.register_node("es:toxic_water_source", {
	description = "Toxic_Water Source",
	inventory_image = minetest.inventorycube("es_toxic_water.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "es_toxic_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "es_toxic_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 240,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "es:toxic_water_flowing",
	liquid_alternative_source = "es:toxic_water_source",
	liquid_viscosity =3,
	damage_per_second = 3*2,
	post_effect_color = {a = 255, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, radioactive = (state == "source" and 2 or 2),},
})

--NOTES:
--		radioactive = (state == "source" and 32 or 16),
--THIS IS DEFAULT SETTING FROM TECHNIC



minetest.register_node("es:toxic_water_flowing", {
	description = "Toxic_Flowing Water",
	inventory_image = minetest.inventorycube("es_toxic_water.png"),
	drawtype = "flowingliquid",
	tiles = {"es_toxic_water.png"},
	special_tiles = {
		{
			name = "es_toxic_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "es_toxic_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 240,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "es:toxic_water_flowing",
	liquid_alternative_source = "es:toxic_water_source",
	liquid_viscosity = 2,
	damage_per_second = 2*2,
	post_effect_color = {a = 255, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, radioactive = (state == "source" and 2 or 2),},
})
--FOR REF
-- Quicksand (old style, sinking inside shows black instead of yellow effect,
-- works ok with noclip enabled though)
minetest.register_node("es:mud", {
	description = "Mud",
	tiles = {"es_mud.png"},
	--drop = "es:mud",
	liquid_viscosity = 19,
	liquidtype = "source",
	liquid_alternative_flowing = "es:mud",
	liquid_alternative_source = "es:mud",
	liquid_renewable = false,
	liquid_range = 0,
	drowning = 3,
	walkable = false,
	climbable = false,
	post_effect_color = { a = 255, r = 43, g = 23, b = 9 },
	groups = {crumbly=3, falling_node=1, sand=1, liquid=3, disable_jump=1},
	sounds = default.node_sound_sand_defaults(),
})



--this code is broken and makes the server not allow kindle players
--[[
minetest.register_node("es:mud_source", {
	description = "Mud Source",
	inventory_image = minetest.inventorycube("es_mud.png"),
	drawtype = "liquid",
		tiles = {"es_mud.png"},
	tiles = {
		{
			name = "default_mud_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "default_mud_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 255,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	--damage_per_second = 3*2,
	liquidtype = "source",
	liquid_alternative_flowing = "es:mud_flowing",
	liquid_alternative_source = "es:mud_source",
	liquid_viscosity = 18,
	post_effect_color = {a = 255, r = 43, g = 23, b = 9},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, },
})

minetest.register_node("es:mud_flowing", {
	description = "Flowing  mud",
	inventory_image = minetest.inventorycube("es_mud.png"),
	drawtype = "liquid",--change to liquid for a solid look
	tiles = {"es_mud.png"},
	special_tiles = {
		{
			name = "es_mud_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "es_mud_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 250,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	--damage_per_second = 3*2,
	liquidtype = "flowing",
	liquid_alternative_flowing = "es:mud_flowing",
	liquid_alternative_source = "es:mud_source",
	liquid_viscosity = 19,
	post_effect_color = {a = 255, r = 43, g = 23, b = 9},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, },
})
]]
