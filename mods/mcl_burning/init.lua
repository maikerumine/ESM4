local S = minetest.get_translator("mcl_burning")
local modpath = minetest.get_modpath("mcl_burning")

mcl_burning = {
	animation_frames = tonumber(minetest.settings:get("fire_animation_frames")) or 8
}

dofile(modpath .. "/api.lua")

minetest.register_entity("mcl_burning:fire", {
	initial_properties = {
		physical = false,
		collisionbox = {0, 0, 0, 0, 0, 0},
		visual = "cube",
		pointable = false,
		glow = -1,
	},
	
	animation_frame = 0,
	animation_timer = 0,
	on_step = mcl_burning.fire_entity_step,
})

minetest.register_globalstep(function(dtime)
	for _, player in ipairs(minetest.get_connected_players()) do
		mcl_burning.tick(player, dtime)
	end
end)

minetest.register_on_respawnplayer(function(player)
	mcl_burning.extinguish(player)
end)

minetest.register_on_leaveplayer(function(player)
	mcl_burning.set(player, "int", "hud_id")
end)

minetest.log("action", "ES: [MCL BURNING] loaded.")
