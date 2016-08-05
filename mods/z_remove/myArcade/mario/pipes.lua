local pipe_box = {
		type = "fixed",
		fixed = {{-0.375, -0.5, -0.375, 0.375, 0.5, 0.375},}}
local pipe_elbow_box = {
		type = "fixed",
		fixed = {{-0.375, -0.5, -0.375, 0.375, 0.375, 0.375},
				{-0.375, -0.375, 0.375, 0.375, 0.375, -0.5},}}
local pipe_end_box = {
		type = "fixed",
		fixed = {{-0.375, -0.5, -0.375, 0.375, 0.375, 0.375},
				{-0.5, 0.3125, -0.5, 0.5, 0.5, 0.5},}}

minetest.register_node("mario:pipe",{
	description = "Pipe",
	tiles = {
			"mario_pipe_end_sm.png",
			"mario_pipe_end_sm.png",
			"mario_pipe.png",
			"mario_pipe.png",
			"mario_pipe.png",
			"mario_pipe.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
	node_box = pipe_box,
	on_place = minetest.rotate_node,
	
})

minetest.register_node("mario:pipe_elbow",{
	description = "Pipe Elbow",
	tiles = {
			"mario_pipe.png",
			"mario_pipe_end_sm.png^mario_pipe_elbow_ic.png",
			"mario_pipe.png^mario_pipe_elbow.png^[transformFX",
			"mario_pipe.png^mario_pipe_elbow.png",
			"mario_pipe.png",
			"mario_pipe_end_sm.png^mario_pipe_elbow_ic.png^[transformFY",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
	node_box = pipe_elbow_box,
	on_place = minetest.rotate_node,
})

minetest.register_node("mario:pipe_end",{
	description = "Pipe End",
	tiles = {
			"mario_pipe_end_sm.png",
			"mario_pipe_end_sm.png",
			"mario_pipe.png^mario_pipe_end_ring.png",
			"mario_pipe.png^mario_pipe_end_ring.png",
			"mario_pipe.png^mario_pipe_end_ring.png",
			"mario_pipe.png^mario_pipe_end_ring.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	pointable = false,
	groups = {cracky = 1,not_in_creative_inventory=1},
	node_box = pipe_end_box,
	on_place = minetest.rotate_node,
})

