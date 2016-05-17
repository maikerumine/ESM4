

-- The hand
minetest.register_item(":", {
	type = "none",
	wield_image = "wieldhand.png",
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[2]=48.00, [3]=26.70}, uses=0, maxlevel=3},
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}
		},
		damage_groups = {fleshy=2},
	}
})

--
-- MM Tool
--
--if minetest.get_player_privs("ADMIN").server then
--on_use = function(player)
--if minetest.check_player_privs(player:get_player_name(), {server = true}) then
   --codes
--end


minetest.register_tool("mm:tool", {
	description = "MM Multi-tool",
	inventory_image = "default_tool_woodsword.png",

	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level=4,
		groupcaps={
			cracky = {times={[1]=0.20,[2]=0.20,[3]=0.20,[4]=0.20}, uses=60010, maxlevel=4},
			choppy = {times={[1]=0.20,[2]=0.20,[3]=0.20,[4]=0.20}, uses=60010, maxlevel=4},
			crumbly = {times={[1]=0.20,[2]=0.20,[3]=0.20,[4]=0.20}, uses=60010, maxlevel=4},
			choppy = {times={[1]=0.20,[2]=0.20,[3]=0.20,[4]=0.20}, uses=60010, maxlevel=4},
		},
		damage_groups = {fleshy=20},
		liquids_pointable = true,
	},
	on_place = minetest.item_eat(50, 'mm:tool'),


})





