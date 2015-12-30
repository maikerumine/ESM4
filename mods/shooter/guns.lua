

shooter:register_weapon("shooter:rifle", {
	description = "Rifle",
	inventory_image = "shooter_rifle.png",
	rounds = 100,
	spec = {
		range = 200,
		step = 30,
		tool_caps = {full_punch_interval=0.1, damage_groups={fleshy=15}},
		groups = {snappy=3, crumbly=3, choppy=3, fleshy=2, oddly_breakable_by_hand=2},
		sound = "shooter_rifle",
		particle = "shooter_bullet.png",
	},
})

minetest.register_craftitem("shooter:ammo", {
	description = "Ammo pack",
	inventory_image = "shooter_ammo.png",
})

if SHOOTER_ENABLE_CRAFTING == true then

	minetest.register_craft({
		output = "shooter:rifle 1 65535",
		recipe = {
			{"default:steel_ingot", "", ""},
			{"", "default:bronze_ingot", ""},
			{"", "default:mese_crystal", "default:bronze_ingot"},
		},
	})

	minetest.register_craft({
		output = "shooter:ammo",
		recipe = {
			{"tnt:gunpowder", "default:bronze_ingot"},
		},
	})
end

local rounds_update_time = 0

minetest.register_globalstep(function(dtime)
	shooter.time = shooter.time + dtime
	if shooter.time - rounds_update_time > SHOOTER_ROUNDS_UPDATE_TIME then
		for i, round in ipairs(shooter.rounds) do
			if shooter:process_round(round) or round.dist > round.def.range then
				table.remove(shooter.rounds, i)
			else
				local v = vector.multiply(round.ray, round.def.step)
				shooter.rounds[i].pos = vector.add(round.pos, v)
				shooter.rounds[i].dist = round.dist + round.def.step
			end
		end
		rounds_update_time = shooter.time
	end
	if shooter.time > 100000 then
		shooter.shots = {}
		rounds_update_time = 0
		shooter.reload_time = 0
		shooter.update_time = 0
		shooter.time = 0
	end
end)

