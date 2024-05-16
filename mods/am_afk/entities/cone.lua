local current_modname = minetest.get_current_modname()

local entity_name = current_modname..":cone"

minetest.register_entity(entity_name, {
	initial_properties = {
		physical = false,
		collide_with_objects = false,
		pointable = false,
		visual = "mesh",
		visual_size = {x=1.05, y=1},
		mesh = "afk_cone.obj",
		textures = {"afk_board.png", "afk_cone.png"},
		use_texture_alpha = true,
		backface_culling = false,
		glow = 4,
		static_save = false,
		shaded = true,
		show_on_minimap = false,
	}
})

return entity_name
