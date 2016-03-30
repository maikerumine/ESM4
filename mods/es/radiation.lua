--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine



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

