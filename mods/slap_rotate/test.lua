local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

do
	local test = dofile(path.."/tests/rotate.lua")
	test()
end

do
	local test = dofile(path.."/tests/flip.lua")
	test()
end
