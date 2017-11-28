-- Various home electronics

local S = homedecor.gettext


homedecor.register("television", {
	description = S("Small CRT Television"),
	tiles = { 'homedecor_television_top.png',
		  'homedecor_television_bottom.png',
		  'homedecor_television_left.png^[transformFX',
		  'homedecor_television_left.png',
		  'homedecor_television_back.png',
		   { name="homedecor_television_front_animated.png",
			  animation={
				type="vertical_frames",
				aspect_w=16,
				aspect_h=16,
				length=80.0
			  }
		   }
	},
	light_source = LIGHT_MAX - 1,
	groups = { snappy = 3 },
	sounds = default.node_sound_wood_defaults(),
})
