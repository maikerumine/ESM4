return {
	-- false = sound off
	-- true = sound on
	sound = true,
	
	controls = {
		-- false = simple version - depends on players yaw
		-- true = advanced version - depends on face you are pointing
		rotate_by_face = true,
	},
	
	tool = {
		name = "glove",
		description = "Glove\n"
			.."left-click rotates node horizontally\n"
			.."right-click rotates node vertically",
		inventory_image = "leather_glove.png^[transformFXR90",
		recipe = {
			{"group:wool"},
			{"group:stick"}
		}
	}
}
