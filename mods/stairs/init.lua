-- Minetest 0.7 mod: stairs
-- See README.txt for licensing and other information.
-- maikerumines custom version with slopes and thin slabs

-- Global namespace for functions

stairs = {}

stairs.wood = default.node_sound_wood_defaults()
stairs.dirt = default.node_sound_dirt_defaults()
stairs.stone = default.node_sound_stone_defaults()
stairs.glass = default.node_sound_glass_defaults()
stairs.leaves = default.node_sound_leaves_defaults()
--stairs.wool = default.node_sound_wool_defaults()
stairs.wool = default.node_sound_leaves_defaults()
stairs.metal = default.node_sound_metal_defaults()


-- Register aliases for new pine node names

minetest.register_alias("stairs:stair_pinewood", "stairs:stair_pine_wood")
minetest.register_alias("stairs:slab_pinewood", "stairs:slab_pine_wood")


-- Get setting for replace ABM

local replace = minetest.settings:get_bool("enable_stairs_replace_abm")

local function rotate_and_place(itemstack, placer, pointed_thing)
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	local param2 = 0

	local placer_pos = placer:getpos()
	if placer_pos then
		param2 = minetest.dir_to_facedir(vector.subtract(p1, placer_pos))
	end

	local finepos = minetest.pointed_thing_to_face_pos(placer, pointed_thing)
	local fpos = finepos.y % 1

	if p0.y - 1 == p1.y or (fpos > 0 and fpos < 0.5)
			or (fpos < -0.5 and fpos > -0.999999999) then
		param2 = param2 + 20
		if param2 == 21 then
			param2 = 23
		elseif param2 == 23 then
			param2 = 21
		end
	end
	return minetest.item_place(itemstack, placer, pointed_thing, param2)
end

-- Register stairs.
-- Node will be called stairs:stair_<subname>

function stairs.register_stair(subname, recipeitem, groups, images, description, sounds, alpha, light)
	groups.stair = 1
	minetest.register_node(":stairs:stair_" .. subname, {
		description = description,
		drawtype = "mesh",
		mesh = "stairs_stair.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
			use_texture_alpha = alpha,
			light_source = light,
			--light_source =14,
		groups = groups,
		sounds = sounds,
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			return rotate_and_place(itemstack, placer, pointed_thing)
		end,
	})

	-- for replace ABM
	if replace then
		minetest.register_node(":stairs:stair_" .. subname .. "upside_down", {
			replace_name = "stairs:stair_" .. subname,
			groups = {slabs_replace = 1},
		})
	end

	if recipeitem then
		minetest.register_craft({
			output = 'stairs:stair_' .. subname .. ' 8',
			recipe = {
				{recipeitem, "", ""},
				{recipeitem, recipeitem, ""},
				{recipeitem, recipeitem, recipeitem},
			},
		})

		-- Flipped recipe for the silly minecrafters
		minetest.register_craft({
			output = 'stairs:stair_' .. subname .. ' 8',
			recipe = {
				{"", "", recipeitem},
				{"", recipeitem, recipeitem},
				{recipeitem, recipeitem, recipeitem},
			},
		})

		-- Fuel
		local baseburntime = minetest.get_craft_result({
			method = "fuel",
			width = 1,
			items = {recipeitem}
		}).time
		if baseburntime > 0 then
			minetest.register_craft({
				type = "fuel",
				recipe = 'stairs:stair_' .. subname,
				burntime = math.floor(baseburntime * 0.75),
			})
		end
	end
end


-- Slab facedir to placement 6d matching table
local slab_trans_dir = {[0] = 8, 0, 2, 1, 3, 4}

-- Register slabs.
-- Node will be called stairs:slab_<subname>

function stairs.register_slab(subname, recipeitem, groups, images, description, sounds, alpha, light)
	groups.slab = 1
	minetest.register_node(":stairs:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
			use_texture_alpha = alpha,
			light_source = light,
			--light_source =14,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		on_place = function(itemstack, placer, pointed_thing)
			local under = minetest.get_node(pointed_thing.under)
			local wield_item = itemstack:get_name()
			local creative_enabled = (creative and creative.is_enabled_for
					and creative.is_enabled_for(placer:get_player_name()))

			if under and under.name:find("stairs:slab_") then
				-- place slab using under node orientation
				local dir = minetest.dir_to_facedir(vector.subtract(
					pointed_thing.above, pointed_thing.under), true)

				local p2 = under.param2

				-- combine two slabs if possible
				if slab_trans_dir[math.floor(p2 / 4)] == dir
						and wield_item == under.name then

					if not recipeitem then
						return itemstack
					end
					local player_name = placer:get_player_name()
					if minetest.is_protected(pointed_thing.under, player_name) and not
							minetest.check_player_privs(placer, "protection_bypass") then
						minetest.record_protection_violation(pointed_thing.under,
							player_name)
						return
					end
					minetest.set_node(pointed_thing.under, {name = recipeitem, param2 = p2})
					if not creative_enabled then
						itemstack:take_item()
					end
					return itemstack
				end

				-- Placing a slab on an upside down slab should make it right-side up.
				if p2 >= 20 and dir == 8 then
					p2 = p2 - 20
				-- same for the opposite case: slab below normal slab
				elseif p2 <= 3 and dir == 4 then
					p2 = p2 + 20
				end

				-- else attempt to place node with proper param2
				minetest.item_place_node(ItemStack(wield_item), placer, pointed_thing, p2)
				if not creative_enabled then
					itemstack:take_item()
				end
				return itemstack
			else
				return rotate_and_place(itemstack, placer, pointed_thing)
			end
		end,
	})

	-- for replace ABM
	if replace then
		minetest.register_node(":stairs:slab_" .. subname .. "upside_down", {
			replace_name = "stairs:slab_".. subname,
			groups = {slabs_replace = 1},
		})
	end

	if recipeitem then
		minetest.register_craft({
			output = 'stairs:slab_' .. subname .. ' 6',
			recipe = {
				{recipeitem, recipeitem, recipeitem},
			},
		})

		-- Fuel
		local baseburntime = minetest.get_craft_result({
			method = "fuel",
			width = 1,
			items = {recipeitem}
		}).time
		if baseburntime > 0 then
			minetest.register_craft({
				type = "fuel",
				recipe = 'stairs:slab_' .. subname,
				burntime = math.floor(baseburntime * 0.5),
			})
		end
	end
end


-- Optionally replace old "upside_down" nodes with new param2 versions.
-- Disabled by default.

if replace then
	minetest.register_abm({
		label = "Slab replace",
		nodenames = {"group:slabs_replace"},
		interval = 16,
		chance = 1,
		action = function(pos, node)
			node.name = minetest.registered_nodes[node.name].replace_name
			node.param2 = node.param2 + 20
			if node.param2 == 21 then
				node.param2 = 23
			elseif node.param2 == 23 then
				node.param2 = 21
			end
			minetest.set_node(pos, node)
		end,
	})
end

--==========
--
-- Node will be called stairs:slab1<subname>
function stairs.register_slab1(subname, recipeitem, groups, images, description, sounds, alpha, light)
	groups.slab = 1
	minetest.register_node(":stairs:slab1_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
			use_texture_alpha = alpha,
			light_source = light,
			--light_source =14,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, (1/16)-0.5, 0.5},
		},
		on_place = minetest.rotate_node
	})

	-- slab recipe
	minetest.register_craft({
		output = 'stairs:slab1_' .. subname .. ' 3',
		recipe = {
			{"stairs:slab_" .. subname},
		},
	})
end



-- Node will be called stairs:corner_<subname>
function stairs.register_corner(subname, recipeitem, groups, images, description, sounds, alpha, light)
	minetest.register_node(":stairs:corner_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
			use_texture_alpha = alpha,
			light_source = light,
			--light_source =14,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		on_place = minetest.rotate_node
	})

	-- corner stair recipe
	minetest.register_craft({
		output = 'stairs:corner_' .. subname .. ' 4',
		recipe = {
			{"", "", ""},
			{"", recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})

	-- corner stair to original material recipe
	minetest.register_craft({
		type = "shapeless",
		output = recipeitem,
		recipe = {"stairs:corner_" .. subname, "stairs:corner_" .. subname}
	})
end

-- Node will be called stairs:invcorner_<subname>
function stairs.register_invcorner(subname, recipeitem, groups, images, description, sounds, alpha, light)
	minetest.register_node(":stairs:invcorner_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
			use_texture_alpha = alpha,
			light_source = light,
			--light_source =14,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		on_place = minetest.rotate_node
	})

	-- inside corner stair recipe
	minetest.register_craft({
		output = 'stairs:invcorner_' .. subname .. ' 6', -- was 8
		recipe = {
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},
		},
	})

	-- inside corner stair to original material recipe
	minetest.register_craft({
		type = "shapeless",
		output = recipeitem .. " 4",
		recipe = {"stairs:invcorner_" .. subname,
		"stairs:invcorner_" .. subname, "stairs:invcorner_" .. subname}
	})
end
	

-- Node will be called stairs:slope_<subname>
function stairs.register_slope(subname, recipeitem, groups, images, description, sounds, alpha,light)
	groups.slab = 1
	minetest.register_node(":stairs:slope_" .. subname, {
		description = description,
		--drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "stairs_slope.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
			use_texture_alpha = alpha,
			light_source = light,
			--light_source =14,
		groups = groups,
		sounds = sounds,
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		on_place = minetest.rotate_node
	})

	-- slope recipe
	minetest.register_craft({
		output = 'stairs:slope_' .. subname .. ' 6',
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
		},
	})

	-- slope to original material recipe
	minetest.register_craft({
		type = "shapeless",
		output = recipeitem,
		recipe = {"stairs:slope_" .. subname, "stairs:slope_" .. subname}
	})
end
--==============================

-- Stair/slab registration function.
-- Nodes will be called stairs:{stair,slab}_<subname>

function stairs.register_stair_and_slab(subname, recipeitem,
		groups, images, desc_stair, desc_slab, sounds)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair, sounds, alpha,light)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab, sounds, alpha,light)
	stairs.register_slab1(subname, recipeitem, groups, images, desc_slab, sounds, alpha,light)
end

--==========================
-- Nodes will be called stairs:{stair,slab,corner,invcorner}_<subname>
function stairs.register_all(subname, recipeitem, groups, images, desc, sounds, alpha,light)
	local str = " Stair "
	stairs.register_stair(subname, recipeitem, groups, images, str .. desc, sounds, alpha,light)
	str = " Slab "
	stairs.register_slab(subname, recipeitem, groups, images, str .. desc, sounds, alpha,light)
	str = " Corner "
	stairs.register_corner(subname, recipeitem, groups, images, str .. desc, sounds, alpha,light)
	str = " Inverted Corner "
	stairs.register_invcorner(subname, recipeitem, groups, images, str .. desc, sounds, alpha,light)
	str = " Slope "
	stairs.register_slope(subname, recipeitem, groups, images, str .. desc, sounds, alpha,light)
	str = " Thin Slab "
	stairs.register_slab1(subname, recipeitem, groups, images, str .. desc, sounds, alpha,light)
end

--==========================

-- Register default stairs and slabs
--register_all

--======
stairs.register_all("tree", "default:tree",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3 ,not_in_craft_guide=1},
	{"default_tree_top.png"},
	"Wooden",
	stairs.wood)
	
stairs.register_all("jungletree", "default:jungletree",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3,not_in_craft_guide=1},
	{"default_jungletree_top.png"},
	"Wooden",
	stairs.wood)

stairs.register_all("pine_tree", "default:pine_tree",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3,not_in_craft_guide=1},
	{"default_pine_tree_top.png"},
	"Wooden",
	stairs.wood)

stairs.register_all("acacia_tree", "default:acacia_tree",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3,not_in_craft_guide=1},
	{"default_acacia_tree_top.png"},
	"Wooden",
	stairs.wood)

stairs.register_all("aspen_tree", "default:aspen_tree",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3,not_in_craft_guide=1},
	{"default_aspen_tree_top.png"},
	"Wooden",
	stairs.wood)

	
--  -EXAMPLE FOR ALL CBLOCKS: Glass, Wood, Stonebrick, and Clay	
--======
stairs.register_all(
	"wood",
	"default:wood",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_craft_guide=1},
	{"default_wood.png"},
	"Wooden Stair",
	"Wooden Slab",
	stairs.wood
)

stairs.register_all(
	"junglewood",
	"default:junglewood",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_craft_guide=1},
	{"default_junglewood.png"},
	"Jungle Wood Stair",
	"Jungle Wood Slab",
	stairs.wood
)

stairs.register_all(
	"pine_wood",
	"default:pine_wood",
	{choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, not_in_craft_guide=1},
	{"default_pine_wood.png"},
	"Pine Wood Stair",
	"Pine Wood Slab",
	stairs.wood
)

stairs.register_stair_and_slab(
	"acacia_wood",
	"default:acacia_wood",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_craft_guide=1},
	{"default_acacia_wood.png"},
	"Acacia Wood Stair",
	"Acacia Wood Slab",
	stairs.wood
)

stairs.register_all(
	"aspen_wood",
	"default:aspen_wood",
	{choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, not_in_craft_guide=1},
	{"default_aspen_wood.png"},
	"Aspen Wood Stair",
	"Aspen Wood Slab",
	stairs.wood
)

stairs.register_all(
	"stone",
	"default:stone",
	{cracky = 3, not_in_craft_guide=1},
	{"default_stone.png"},
	"Stone Stair",
	"Stone Slab",
	stairs.stone
)

stairs.register_all(
	"cobble",
	"default:cobble",
	{cracky = 3},
	{"default_cobble.png"},
	"Cobblestone Stair -EXAMPLE FOR ALL  DEFAULT BLOCKS",
	"Cobblestone Slab -EXAMPLE FOR ALL DEFAULT BLOCKS",
	stairs.stone
)

stairs.register_all(
	"mossycobble",
	--nil,
	"default:mossycobble",
	{cracky = 3, not_in_craft_guide=1},
	{"default_mossycobble.png"},
	"Mossy Cobblestone Stair",
	"Mossy Cobblestone Slab",
	stairs.stone
)

stairs.register_all(
	"stonebrick",
	"default:stonebrick",
	{cracky = 2, not_in_craft_guide=1},
	{"default_stone_brick.png"},
	"Stone Brick Stair",
	"Stone Brick Slab",
	stairs.stone
)

stairs.register_all(
	"stone_block",
	"default:stone_block",
	{cracky = 2, not_in_craft_guide=1},
	{"default_stone_block.png"},
	"Stone Block Stair",
	"Stone Block Slab",
	stairs.stone
)

stairs.register_all(
	"desert_stone",
	"default:desert_stone",
	{cracky = 3, not_in_craft_guide=1},
	{"default_desert_stone.png"},
	"Desert Stone Stair",
	"Desert Stone Slab",
	stairs.stone
)

stairs.register_all(
	"desert_cobble",
	"default:desert_cobble",
	{cracky = 3, not_in_craft_guide=1},
	{"default_desert_cobble.png"},
	"Desert Cobblestone Stair",
	"Desert Cobblestone Slab",
	stairs.stone
)

stairs.register_all(
	"desert_stonebrick",
	"default:desert_stonebrick",
	{cracky = 2, not_in_craft_guide=1},
	{"default_desert_stone_brick.png"},
	"Desert Stone Brick Stair",
	"Desert Stone Brick Slab",
	stairs.stone
)

stairs.register_all(
	"desert_stone_block",
	"default:desert_stone_block",
	{cracky = 2, not_in_craft_guide=1},
	{"default_desert_stone_block.png"},
	"Desert Stone Block Stair",
	"Desert Stone Block Slab",
	stairs.stone
)

stairs.register_all(
	"sandstone",
	"default:sandstone",
	{crumbly = 1, cracky = 3, not_in_craft_guide=1},
	{"default_sandstone.png"},
	"Sandstone Stair",
	"Sandstone Slab",
	stairs.stone
)

stairs.register_all(
	"sandstonebrick",
	"default:sandstonebrick",
	{cracky = 2, not_in_craft_guide=1},
	{"default_sandstone_brick.png"},
	"Sandstone Brick Stair",
	"Sandstone Brick Slab",
	stairs.stone
)

stairs.register_all(
	"sandstone_block",
	"default:sandstone_block",
	{cracky = 2, not_in_craft_guide=1},
	{"default_sandstone_block.png"},
	"Sandstone Block Stair",
	"Sandstone Block Slab",
	stairs.stone
)

stairs.register_all(
	"desert_sandstone",
	"default:desert_sandstone",
	{crumbly = 1, cracky = 3, not_in_craft_guide=1},
	{"default_desert_sandstone.png"},
	"Desert Sandstone Stair",
	"Desert Sandstone Slab",
	stairs.stone
)

stairs.register_all(
	"desert_sandstone_brick",
	"default:desert_sandstone_brick",
	{cracky = 2, not_in_craft_guide=1},
	{"default_desert_sandstone_brick.png"},
	"Desert Sandstone Brick Stair",
	"Desert Sandstone Brick Slab",
	stairs.stone
)

stairs.register_all(
	"desert_sandstone_block",
	"default:desert_sandstone_block",
	{cracky = 2, not_in_craft_guide=1},
	{"default_desert_sandstone_block.png"},
	"Desert Sandstone Block Stair",
	"Desert Sandstone Block Slab",
	stairs.stone
)

stairs.register_all(
	"silver_sandstone",
	"default:silver_sandstone",
	{crumbly = 1, cracky = 3, not_in_craft_guide=1},
	{"default_silver_sandstone.png"},
	"Silver Sandstone Stair",
	"Silver Sandstone Slab",
	stairs.stone
)

stairs.register_all(
	"silver_sandstone_brick",
	"default:silver_sandstone_brick",
	{cracky = 2, not_in_craft_guide=1},
	{"default_silver_sandstone_brick.png"},
	"Silver Sandstone Brick Stair",
	"Silver Sandstone Brick Slab",
	stairs.stone
)

stairs.register_all(
	"silver_sandstone_block",
	"default:silver_sandstone_block",
	{cracky = 2, not_in_craft_guide=1},
	{"default_silver_sandstone_block.png"},
	"Silver Sandstone Block Stair",
	"Silver Sandstone Block Slab",
	stairs.stone
)

--===========
--function stairs.register_all(subname, recipeitem, groups, images, desc, snds, alpha,light)
--[[
stairs.register_all("meselamp", "default:meselamp",
	{cracky = 3, oddly_breakable_by_hand = 3,not_in_craft_guide=1},
	{"default_meselamp.png"},
	"Meselamp",
	stairs.glass,
	"0,0,0",
	"14"
	)
]]	


stairs.register_all(
	"meselamp",
	"default:meselamp",
	{cracky = 3, not_in_craft_guide=1},
	{"default_meselamp.png"},
	"Meselamp",
	stairs.glass,
	"0,0,0",
	default.LIGHT_MAX
)

stairs.register_all("glass", "default:glass",
	{cracky = 3, oddly_breakable_by_hand = 3, not_in_craft_guide=1},
	{"default_glass.png"},
	"Glass",
	stairs.glass)

stairs.register_all("obsidian_glass", "default:obsidian_glass",
	{cracky = 2,not_in_craft_guide=1},
	{"default_obsidian_glass.png"},
	"Obsidian Glass",
	stairs.glass)
--===========

stairs.register_all(
	"obsidian",
	"default:obsidian",
	{cracky = 1, level = 2, not_in_craft_guide=1},
	{"default_obsidian.png"},
	"Obsidian Stair",
	"Obsidian Slab",
	stairs.stone
)

stairs.register_all(
	"obsidianbrick",
	"default:obsidianbrick",
	{cracky = 1, level = 2, not_in_craft_guide=1},
	{"default_obsidian_brick.png"},
	"Obsidian Brick Stair",
	"Obsidian Brick Slab",
	stairs.stone
)

stairs.register_all(
	"obsidian_block",
	"default:obsidian_block",
	{cracky = 1, level = 2, not_in_craft_guide=1},
	{"default_obsidian_block.png"},
	"Obsidian Block Stair",
	"Obsidian Block Slab",
	stairs.stone
)

stairs.register_all(
	"brick",
	"default:brick",
	{cracky = 3, not_in_craft_guide=1},
	{"default_brick.png"},
	"Brick Stair",
	"Brick Slab",
	stairs.stone
)

stairs.register_all(
	"straw",
	"farming:straw",
	{snappy = 3, flammable = 4, not_in_craft_guide=1},
	{"farming_straw.png"},
	"Straw Stair",
	"Straw Slab",
	stairs.leaves
)

stairs.register_all(
	"steelblock",
	"default:steelblock",
	{cracky = 1, level = 2, not_in_craft_guide=1},
	{"default_steel_block.png"},
	"Steel Block Stair",
	"Steel Block Slab",
	stairs.metal
)

stairs.register_all(
	"copperblock",
	"default:copperblock",
	{cracky = 1, level = 2, not_in_craft_guide=1},
	{"default_copper_block.png"},
	"Copper Block Stair",
	"Copper Block Slab",
	stairs.metal
)

stairs.register_all(
	"bronzeblock",
	"default:bronzeblock",
	{cracky = 1, level = 2, not_in_craft_guide=1},
	{"default_bronze_block.png"},
	"Bronze Block Stair",
	"Bronze Block Slab",
	stairs.metal
)

stairs.register_all(
	"goldblock",
	"default:goldblock",
	{cracky = 1, not_in_craft_guide=1},
	{"default_gold_block.png"},
	"Gold Block Stair",
	"Gold Block Slab",
	stairs.metal
)

stairs.register_all("diamondblock", "default:diamondblock",
	{cracky = 1, level = 3, not_in_craft_guide=1},
	{"default_diamond_block.png"},
	"Diamond",
	stairs.stone)
	
stairs.register_all(
	"ice",
	"default:ice",
	{cracky = 3, puts_out_fire = 1, cools_lava = 1, not_in_craft_guide=1},
	{"default_ice.png"},
	"Ice Stair",
	"Ice Slab",
	stairs.glass
)

stairs.register_all(
	"snowblock",
	"default:snowblock",
	{crumbly = 3, puts_out_fire = 1, cools_lava = 1, snowy = 1, not_in_craft_guide=1},
	{"default_snow.png"},
	"Snow Block Stair",
	"Snow Block Slab",
	default.node_sound_dirt_defaults({
		footstep = {name = "default_snow_footstep", gain = 0.15},
		dug = {name = "default_snow_footstep", gain = 0.2},
		dig = {name = "default_snow_footstep", gain = 0.2}
	})
)

stairs.register_all("dirt", "default:dirt",
	{crumbly = 3, soil = 1, not_in_craft_guide=1},
	{"default_dirt.png"},
	"Dirt",
	stairs.dirt
)

stairs.register_all("dirt_with_grass", "default:dirt_with_grass",
	 {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	{"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	"Dirt with grass",
	stairs.dirt
)
	
stairs.register_all("dirt_with_snow", "default:dirt_with_snow",
	 {crumbly = 3, soil = 1, spreading_dirt_type = 1, not_in_craft_guide=1},
	{"default_snow.png", "default_dirt.png", "default_dirt.png^default_snow_side.png"},
	"Dirt with grass with snow",
	stairs.dirt
)
	
stairs.register_all("dirt_with_dry_grass", "default:dirt_with_dry_grass",
	{crumbly = 3, soil = 1, spreading_dirt_type = 1, not_in_craft_guide=1},
	{"default_dry_grass.png", "default_dirt.png", "default_dirt.png^default_dry_grass_side.png"},
	"Dirt with dry grass",
	stairs.dirt
)



	
--========================
local colours = {
	{"black",      "Black",      "#000000b0"},
	{"blue",       "Blue",       "#015dbb70"},
	{"brown",      "Brown",      "#a78c4570"},
	{"cyan",       "Cyan",       "#01ffd870"},
	{"dark_green", "Dark Green", "#005b0770"},
	{"dark_grey",  "Dark Grey",  "#303030b0"},
	{"green",      "Green",      "#61ff0170"},
	{"grey",       "Grey",       "#5b5b5bb0"},
	{"magenta",    "Magenta",    "#ff05bb70"},
	{"orange",     "Orange",     "#ff840170"},
	{"pink",       "Pink",       "#ff65b570"},
	{"red",        "Red",        "#ff000070"},
	{"violet",     "Violet",     "#2000c970"},
	{"white",      "White",      "#abababc0"},
	{"yellow",     "Yellow",     "#e3ff0070"},
}

--= Coloured Blocks Mod
if minetest.get_modpath("cblocks") then

for i = 1, #colours, 1 do

-- wood stair

stairs.register_all(colours[i][1] .. "_wood", "cblocks:wood_" .. colours[i][1],
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3,not_in_craft_guide=1},
	{"default_wood.png^[colorize:" .. colours[i][3]},
	colours[i][2] .. " Wooden",
	stairs.wood)

stairs.register_all(colours[i][1] .. "_glass", "cblocks:glass_" .. colours[i][1],
	{cracky = 3, oddly_breakable_by_hand = 3,not_in_craft_guide=1},
	{"cblocks.png^[colorize:" .. colours[i][3]},
	colours[i][2] .. " Glass",
	stairs.glass, true)

end --for

end


--= Farming Mod
if minetest.get_modpath("farming") then

stairs.register_all("straw", "farming:straw",
	{snappy = 3, flammable = 4,not_in_craft_guide=1},
	{"farming_straw.png"},
	"Straw",
	stairs.leaves)

end

--= Mobs Mod

if mobs and mobs.mod and mobs.mod == "redo" then

grp = {crumbly = 3, flammable = 2,not_in_craft_guide=1}

stairs.register_all("cheeseblock", "mobs:cheeseblock",
	grp,
	{"mobs_cheeseblock.png"},
	"Cheese Block",
	stairs.dirt)

stairs.register_all("honey_block", "mobs:honey_block",
	grp,
	{"mobs_honey_block.png"},
	"Honey Block",
	stairs.dirt)

end


--= Wool Mod

if minetest.get_modpath("wool") then

for i = 1, #colours, 1 do

stairs.register_all("wool_" .. colours[i][1], "wool:" .. colours[i][1],
	{snappy = 2, choppy = 2, oddly_breakable_by_hand = 3, flammable = 3,not_in_craft_guide=1},
	{"wool_" .. colours[i][1] .. ".png"},
	colours[i][2] .. " Wool",
	stairs.stone)

end -- END for
end


--= Es Mod

if minetest.get_modpath("es") then

grp = {cracky = 3,not_in_craft_guide=1}

--es grass
stairs.register_all("dry_dirt", "es:dry_dirt",
	{crumbly = 3, soil = 1, spreading_dirt_type = 1, not_in_craft_guide=1},
	{"default_dry_dirt.png"},
	"Some dry dirt",
	stairs.dirt
)

stairs.register_all("strange_grass", "es:strange_grass",
	{crumbly = 3, soil = 1, spreading_dirt_type = 1, es_grass = 1, not_in_craft_guide=1},
	{"default_dry_grass.png^[colorize:#00BBFF:130", "default_clay.png", "default_clay.png^(default_dry_grass_side.png^[colorize:#00BBFF:130)"},
	"Strange Grass",
	stairs.dirt
)

stairs.register_all("aiden_grass", "es:aiden_grass",
	{crumbly = 3, soil = 1, spreading_dirt_type = 1, es_grass = 1, not_in_craft_guide=1},
	{"default_dry_grass.png^[colorize:#8A084B:160", "default_clay.png", "default_clay.png^(default_dry_grass_side.png^[colorize:#8A084B:160)"},
	"Aiden Grass",
	stairs.dirt
)


--Technic marble / Granite
stairs.register_all("granite", "es:granite",
	grp,
	{"technic_granite.png"},
	"Granite Block",	
	stairs.stone)

stairs.register_all("marble", "es:marble",
	grp,
	{"technic_marble.png"},
	"Marble Block",
	stairs.stone)

stairs.register_all("granite_bricks", "es:granite_bricks",
	grp,
	{"technic_granite_bricks.png"},
	"Granite Bricks Block",
	stairs.stone)
	
stairs.register_all("marble_bricks", "es:marble_bricks",
	grp,
	{"technic_marble_bricks.png"},
	"Marble Bricks Block",
	stairs.stone)
	
--Es Jewels
stairs.register_all("emerald", "es:emeraldblock",
	grp,
	{"emerald_block.png"},
	"Emerald Block",
	stairs.glass)
	
stairs.register_all("ruby", "es:rubyblock",
	grp,
	{"ruby_block.png"},
	"Ruby Block",
	stairs.glass)

stairs.register_all("aikerum", "es:aikerumblock",
	grp,
	{"aikerum_block.png"},
	"Aikerum Block",
	stairs.glass)

stairs.register_all("infinium", "es:infiniumblock",
	grp,
	{"infinium_block.png"},
	"Infinium Block",
	stairs.stone)
	
stairs.register_all("purpellium", "es:purpelliumblock",
	grp,
	{"purpellium_block.png"},
	"Purpellium Block",
	stairs.glass)
	
stairs.register_all("boneblock", "es:boneblock",
	{crumbly = 2,oddly_breakable_by_hand=1,not_in_craft_guide=1},
	{"bones_front.png"},
	"Bone Block",
	stairs.stone)

stairs.register_all("messymese", "es:messymese",
	{crumbly = 2,oddly_breakable_by_hand=1,not_in_craft_guide=1},
	{"default_clay.png^bubble.png^mese_cook_mese_crystal.png"},
	"messymese",
	stairs.stone)	
	
end

if minetest.get_modpath("quartz") then

grp = {cracky=3, oddly_breakable_by_hand=1,not_in_craft_guide=1}

--Quartz
stairs.register_all("quartzblock", "quartz:block",
	grp,
	{"quartz_block.png"},
	"Quartz Block",	
	stairs.glass)
	
stairs.register_all("quartzpillar", "quartz:pillar",
	grp,
	{"quartz_pillar_top.png", "quartz_pillar_top.png", "quartz_pillar_side.png"},
	"Quartz Pillar",	
	stairs.glass)

stairs.register_all("quartzchiseled","quartz:chiseled",
	grp,
	{"quartz_chiseled.png"},
	"Chiseled Quartz",	
	stairs.glass)	
end


--========================
