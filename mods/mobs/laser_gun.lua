
--Laser gun from futuremobs

minetest.register_craftitem("mobs:laser", {
	description = "Laser Bullet",
	inventory_image = "futuremobs_laser.png",
})

minetest.register_node("mobs:laser_box", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			-- Shaft
			{-6.5/17, -1.5/17, -1.5/17, 6.5/17, 1.5/17, 1.5/17},
			--Spitze
			{-4.5/17, 2.5/17, 2.5/17, -3.5/17, -2.5/17, -2.5/17},
			{-8.5/17, 0.5/17, 0.5/17, -6.5/17, -0.5/17, -0.5/17},
			--Federn
			{6.5/17, 1.5/17, 1.5/17, 7.5/17, 2.5/17, 2.5/17},
			{7.5/17, -2.5/17, 2.5/17, 6.5/17, -1.5/17, 1.5/17},
			{7.5/17, 2.5/17, -2.5/17, 6.5/17, 1.5/17, -1.5/17},
			{6.5/17, -1.5/17, -1.5/17, 7.5/17, -2.5/17, -2.5/17},
			
			{7.5/17, 2.5/17, 2.5/17, 8.5/17, 3.5/17, 3.5/17},
			{8.5/17, -3.5/17, 3.5/17, 7.5/17, -2.5/17, 2.5/17},
			{8.5/17, 3.5/17, -3.5/17, 7.5/17, 2.5/17, -2.5/17},
			{7.5/17, -2.5/17, -2.5/17, 8.5/17, -3.5/17, -3.5/17},
		}
	},
	tiles = {"futuremobs_laser.png", "futuremobs_laser.png", "futuremobs_laser.png", "futuremobs_laser.png", "futuremobs_laser.png", "futuremobs_laser.png"},
	--groups = {not_in_creative_inventory=1},
})

local THROWING_LASER_ENTITY={
	physical = false,
	timer=0,
	visual = "wielditem",
	visual_size = {x=0.1, y=0.1},
	textures = {"mobs:laser_box"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

THROWING_LASER_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(pos)

	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "mobs:laser_entity" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 10
					obj:punch(self.object, 1.0, {
						full_punch_interval=1.0,
						damage_groups={fleshy=damage},
					}, nil)
					self.object:remove()
				end
			else
				local damage = 10
				obj:punch(self.object, 1.0, {
					full_punch_interval=1.0,
					damage_groups={fleshy=damage},
				}, nil)
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'mobs:laser')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("mobs:laser_entity", THROWING_LASER_ENTITY)

minetest.register_craft({
	output = 'mobs:laser 8',
	recipe = {
		{'default:steel_ingot', 'es:mese_green_crystal', 'default:steel_ingot'},
	}
})



lasers = {
	{"mobs:laser", "mobs:laser_entity"},
}

local throwing_shoot_laser = function(itemstack, player)
	for _,laser in ipairs(lasers) do
		if player:get_inventory():get_stack("main", player:get_wield_index()+1):get_name() == laser[1] then
			if not minetest.setting_getbool("creative_mode") then
				player:get_inventory():remove_item("main", laser[1])
			end
			local playerpos = player:getpos()
			local obj = minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, laser[2])
			local dir = player:get_look_dir()
			--obj:setvelocity({x=dir.x*19, y=dir.y*19, z=dir.z*19})
			obj:setvelocity({x=dir.x*29, y=dir.y*29, z=dir.z*29})
			obj:setacceleration({x=dir.x*-3, y=-10, z=dir.z*-3})
			obj:setyaw(player:get_look_yaw()+math.pi)
			minetest.sound_play("laser_sound", {pos=playerpos})
			if obj:get_luaentity().player == "" then
				obj:get_luaentity().player = player
			end
			obj:get_luaentity().node = player:get_inventory():get_stack("main", 1):get_name()
			return true
		end
	end
	return false
end

minetest.register_tool("mobs:blue_laser_gun", {
	description = "Blue Laser Gun",
	inventory_image = "blue_laser_gun.png",
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		if throwing_shoot_laser(item, user, pointed_thing) then
			if not minetest.setting_getbool("creative_mode") then
				--itemstack:add_wear(65535/100)
				itemstack:add_wear(65535/1000)
			end
		end
		return itemstack
	end,
})

minetest.register_craft({
	output = 'mobs:blue_laser_gun',
	recipe = {
		{'default:wood', 'default:steelblock', ''},
		{'default:steel_ingot', 'es:aikerum_crystal', 'default:glass'},
		{'default:steel_ingot', 'default:steel_ingot', ''},
	}
})

minetest.register_tool("mobs:red_laser_gun", {
	description = "Red Laser Gun",
	inventory_image = "red_laser_gun.png",
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		if throwing_shoot_laser(item, user, pointed_thing) then
			if not minetest.setting_getbool("creative_mode") then
				--itemstack:add_wear(65535/100)
				itemstack:add_wear(65535/1000)
			end
		end
		return itemstack
	end,
})

minetest.register_craft({
	output = 'mobs:red_laser_gun',
	recipe = {
		{'default:wood', 'default:steelblock', ''},
		{'default:steel_ingot', 'es:ruby_crystal', 'default:glass'},
		{'default:steel_ingot', 'default:steel_ingot', ''},
	}
})

--dofile(minetest.get_modpath("mobs").."/arrow.lua")

if minetest.setting_get("log_mods") then
	minetest.log("action", "throwing loaded")
end
