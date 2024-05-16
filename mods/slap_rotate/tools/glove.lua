local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local config = dofile(path.."/config.lua")
local controller = dofile(path.."/controllers/glove.lua")

local tool_name = current_modname..":"..config.tool.name

minetest.register_tool(tool_name, {
	description = config.tool.description,
	inventory_image = config.tool.inventory_image,
	groups = {tool = 1},
	on_use = controller.on_use,
	on_place = controller.on_place,
})

minetest.register_craft({
	output = tool_name,
	recipe = config.tool.recipe
})
