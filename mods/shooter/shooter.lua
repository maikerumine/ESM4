shooter = {
	time = 0,
	objects = {},
	rounds = {},
	shots = {},
	update_time = 0,
	reload_time = 0,
}

SHOOTER_ADMIN_WEAPONS = false
SHOOTER_ENABLE_BLASTING = true
SHOOTER_ENABLE_CROSSBOW = true
SHOOTER_ENABLE_GUNS = true
SHOOTER_ENABLE_FLARES = true
SHOOTER_ENABLE_HOOK = true
SHOOTER_ENABLE_GRENADES = true
SHOOTER_ENABLE_ROCKETS = true
SHOOTER_ENABLE_TURRETS = true
SHOOTER_ENABLE_CRAFTING = true
SHOOTER_ENABLE_PARTICLE_FX = true
SHOOTER_ENABLE_PROTECTION = true
SHOOTER_EXPLOSION_TEXTURE = "shooter_hit.png"
SHOOTER_ALLOW_NODES = true
SHOOTER_ALLOW_ENTITIES = true
SHOOTER_ALLOW_PLAYERS = false
SHOOTER_OBJECT_RELOAD_TIME = 1
SHOOTER_OBJECT_UPDATE_TIME = 0.25
SHOOTER_ROUNDS_UPDATE_TIME = 0.4
SHOOTER_PLAYER_OFFSET = {x=0, y=1, z=0}
SHOOTER_ENTITY_OFFSET = {x=0, y=0, z=0}
SHOOTER_ENTITIES = {
	--old mobs
	"mobs:dirt_monster",
	"mobs:stone_monster",
	"mobs:sand_monster",
	"mobs:tree_monster",
	"mobs:sheep",
	"mobs:rat",
	"mobs:oerkki",
	"mobs:dungeon_master",
	--old esmobs
	"esmobs:badplayer1",
	"esmobs:badplayer2",
	"esmobs:badplayer3",
	"esmobs:badplayer4",
	"esmobs:badplayer5",
	"esmobs:badplayer6",
	"esmobs:badplayer7",
	"esmobs:badplayer8",
	"esmobs:badplayer9",
	"esmobs:badplayer10",
	"esmobs:badplayer11",
	"esmobs:badplayer12",
	"esmobs:badplayer13",
	"esmobs:badplayer14",
	"esmobs:badplayer15",
	"esmobs:badplayer16",
	"esmobs:badplayer17",
	"esmobs:badplayer18",
	"esmobs:badplayer19",
	"esmobs:badplayer20",
	"esmobs:badplayer21",
	"esmobs:badplayer22",
	"esmobs:badplayer23",
	"esmobs:badplayer24",
	"esmobs:badplayer25",
	"esmobs:badplayer26",
	"esmobs:badplayer27",
	"esmobs:badplayer28",
	"esmobs:badplayer29",
	"esmobs:badplayer30",
	"esmobs:badplayer31",
	"esmobs:badplayer32",
	"esmobs:badplayer33",
	"esmobs:badplayer34",
	"esmobs:badplayer35",
	"esmobs:badplayer36",
	"esmobs:tree_monster",
	"esmobs:spider",
	"esmobs:applmons",
	"esmobs:aggressormob",
	"esmobs:sand_monster",
	"esmobs:stone_monster",
	"esmobs:oerkkii",
	"esmobs:sheep",
	"esmobs:dirt",
	"esmobs:dirt2",
	"esmobs:snowmon",
	"esmobs:icemon",
	"esmobs:watermon",
	"esmobs:man",
	"esmobs:woman",
	"esmobs:goodnpc",
	"esmobs:badnpc",
	"esmobs:chickoboo",
	--mobs_badplayer
	"mobs_badplayer:badplayer1",
	"mobs_badplayer:badplayer2",
	"mobs_badplayer:badplayer3",
	"mobs_badplayer:badplayer4",
	"mobs_badplayer:badplayer5",
	"mobs_badplayer:badplayer6",
	"mobs_badplayer:badplayer7",
	"mobs_badplayer:badplayer8",
	"mobs_badplayer:badplayer9",
	"mobs_badplayer:badplayer10",
	"mobs_badplayer:badplayer11",
	"mobs_badplayer:badplayer12",
	"mobs_badplayer:badplayer13",
	"mobs_badplayer:badplayer14",
	"mobs_badplayer:badplayer15",
	"mobs_badplayer:badplayer16",
	"mobs_badplayer:badplayer17",
	"mobs_badplayer:badplayer18",
	"mobs_badplayer:badplayer19",
	"mobs_badplayer:badplayer20",
	"mobs_badplayer:badplayer21",
	"mobs_badplayer:badplayer22",
	"mobs_badplayer:badplayer23",
	"mobs_badplayer:badplayer24",
	"mobs_badplayer:badplayer25",
	"mobs_badplayer:badplayer26",
	"mobs_badplayer:badplayer27",
	"mobs_badplayer:badplayer28",
	"mobs_badplayer:badplayer29",
	"mobs_badplayer:badplayer30",
	"mobs_badplayer:badplayer31",
	"mobs_badplayer:badplayer32",
	"mobs_badplayer:badplayer33",
	"mobs_badplayer:badplayer34",
	"mobs_badplayer:badplayer35",
	"mobs_badplayer:badplayer36",
	"mobs_badplayer:Jasmine",
	"mobs_badplayer:Infinium_Monster",
	"mobs_badplayer:Mr_Black",
	--new esmobs
	"mobs_esmobs:bonemons",
	"mobs_esmobs:dirt2",
	"mobs_esmobs:blue",
	"mobs_esmobs:spider",
	"mobs_esmobs:snowmon",
	"mobs_esmobs:snowmons",
	"mobs_esmobs:icemons",
	"mobs_esmobs:icemon",
	"mobs_esmobs:watermon",
	"mobs_esmobs:watermons",
	"mobs_esmobs:applmons",
	"mobs_esmobs:aggressormob",
	"mobs_esmobs:stone_monster2",
	"mobs_esmobs:herobrines_bloody_ghost",
	"mobs_esmobs:bomber",
	"mobs_esmobs:bone_monster",
	"mobs_esmobs:chickoboo",
	"mobs_esmobs:paniki",
	"mobs_esmobs:Infinium_Monster",
	"mobs_esmobs:phoenix",
	--mobs_mc  --old
	"mobs_mc:cow",
	"mobs_mc:pig",
	"mobs_mc:sheep",
	"mobs_mc:zombie",
	"mobs_mc:zombiepigman",
	"mobs_mc:skeleton",
	"mobs_mc:creeper",
	"mobs_mc:spider",
	"mobs_mc:ghast",
	"mobs_mc:enderman",
	"mobs_mc:greensmall",
	"mobs_mc:greenmedium",
	"mobs_mc:greenbig",
	"mobs_mc:lavasmall",
	"mobs_mc:lavabig",
	"mobs_mc:spider",
	"mobs_mc:wolf",
	--futuremobs old
	"futuremobs:goodbot_fighter",
	"futuremobs:goodbot_gunner",
	"futuremobs:badbot_fighter",
	"futuremobs:badbot_gunner",
	"futuremobs:claw_alien",
	"futuremobs:alien",
	"futuremobs:destroyed_bot",
	--mobs_animal
	"mobs_animal:sheep_white",
	"mobs_animal:chicken",
	"mobs_animal:cow",
	"mobs_animal:pumba",
	"mobs_animal:sheep",
	"mobs_animal:rat",
	--mobs_monster
	"mobs_monster:dirt_monster",
	"mobs_monster:stone_monster",
	"mobs_monster:sand_monster",
	"mobs_monster:tree_monster",
	"mobs_monster:lava_flan",
	"mobs_monster:mese_monster",
	"mobs_monster:dungeon_master",
	"mobs_monster:oerkki",
	"mobs_monster:spider",
	--justtest1
	"lagsmobs:griefer_ghost",
	"lagsmobs:stone_monster",
	"lagsmobs:stonemons",
	--creatures
	"creatures:zombie",
	"creatures:ghost",
	--futuremobs
	"mobs_futuremobs:goodbot_fighter",
	"mobs_futuremobs:goodbot_gunner",
	"mobs_futuremobs:badbot_fighter",
	"mobs_futuremobs:badbot_gunner",
	"mobs_futuremobs:claw_alien",
	"mobs_futuremobs:alien",
	"mobs_futuremobs:destroyed_bot",
	--fallout mobs
	"mobs_fallout:sheep", 
	"mobs_fallout:Mr_Black",
	"mobs_fallout:Mr_White",
	"mobs_fallout:Mr_Pink",
	"mobs_fallout:Bajan",
	"mobs_fallout:John",
	"mobs_fallout:Krock",
	"mobs_fallout:Just_Test_Griefer", 
	"mobs_fallout:SepiaSam",
	"mobs_fallout:Hobo",
	"mobs_fallout:Simon", 
	"mobs_fallout:Infantry_man",
	"mobs_fallout:Mage",
	"mobs_fallout:Bajan",
	"mobs_fallout:Calinou",
	"mobs_fallout:Castaway",
	"mobs_fallout:cx384", 
	"mobs_fallout:FloatingWraith",
	"mobs_fallout:Ghost",
	"mobs_fallout:Zombie_Rex",
	"mobs_fallout:Lovehart",
	"mobs_fallout:Minetestian", 
	"mobs_fallout:Andromeda",
	"mobs_fallout:Phil",
	"mobs_fallout:IvanbotXD", 
	"mobs_fallout:Orc", 
	"mobs_fallout:Luke",
	"mobs_fallout:Seth_Rollins",
	"mobs_fallout:Sgt_Prf",
	"mobs_fallout:Willy_Rex",
	"mobs_fallout:Zombie_Drogado_A",
	"mobs_fallout:Zombie_Drogado_B",
	"mobs_fallout:Zombie_Drogado_C",
	"mobs_fallout:Zombie_Drogado_D",
	"mobs_fallout:Zombie_Drogado_E",
	"mobs_fallout:Zombie_Drogado_F",
	"mobs_fallout:radbug",
	"mobs_fallout:moonheron",
	"mobs_fallout:mudworm",
	--scifi_mobs
	"scifi_mobs:metroid",
	"scifi_mobs:facehugger",
	"scifi_mobs:r2",
	"scifi_mobs:dalec",
	"scifi_mobs:spidermech",
	"scifi_mobs:xenomorph",
	"scifi_mobs:jabba",
	"scifi_mobs:bb8",
	"scifi_mobs:cyberman",
	"scifi_mobs:bipedm",
	"scifi_mobs:giant",
	"scifi_mobs:metalg",
	"scifi_mobs:assaultsuit",
	"scifi_mobs:tank",
	"scifi_mobs:xwing",
	"scifi_mobs:xwing_player",
	"scifi_mobs:core",

	
}

local singleplayer = minetest.is_singleplayer()
if singleplayer then
	SHOOTER_ENABLE_BLASTING = true
	SHOOTER_ALLOW_ENTITIES = true
	SHOOTER_ALLOW_PLAYERS = false
end

local modpath = minetest.get_modpath(minetest.get_current_modname())
local worldpath = minetest.get_worldpath()
local input = io.open(modpath.."/shooter.conf", "r")
if input then
	dofile(modpath.."/shooter.conf")
	input:close()
	input = nil
end
input = io.open(worldpath.."/shooter.conf", "r")
if input then
	dofile(worldpath.."/shooter.conf")
	input:close()
	input = nil
end

local allowed_entities = {}
for _,v in ipairs(SHOOTER_ENTITIES) do
	allowed_entities[v] = 1
end

local function get_dot_product(v1, v2)
	return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z
end

local function get_particle_pos(p, v, d)
	return vector.add(p, vector.multiply(v, {x=d, y=d, z=d}))
end

function shooter:spawn_particles(pos, texture)
	if SHOOTER_ENABLE_PARTICLE_FX == true then
		if type(texture) ~= "string" then
			texture = SHOOTER_EXPLOSION_TEXTURE
		end
		local spread = {x=0.1, y=0.1, z=0.1}
		minetest.add_particlespawner(15, 0.3,
			vector.subtract(pos, spread), vector.add(pos, spread),
			{x=-1, y=1, z=-1}, {x=1, y=2, z=1},
			{x=-2, y=-2, z=-2}, {x=2, y=-2, z=2},
			0.1, 0.75, 1, 2, false, texture
		)
	end
end

function shooter:play_node_sound(node, pos)
	local item = minetest.registered_items[node.name]
	if item then
		if item.sounds then
			local spec = item.sounds.dug
			if spec then
				spec.pos = pos
				minetest.sound_play(spec.name, spec)
			end
		end
	end
end

function shooter:punch_node(pos, def)
	local node = minetest.get_node(pos)
	if not node then
		return
	end
	local item = minetest.registered_items[node.name]
	if not item then
		return
	end
	if SHOOTER_ENABLE_PROTECTION then
		if minetest.is_protected(pos, def.name) then
			return
		end
	end
	if item.groups then
		for k, v in pairs(def.groups) do
			local level = item.groups[k] or 0
			if level >= v then
				minetest.remove_node(pos)
				shooter:play_node_sound(node, pos)
				if item.tiles then
					if item.tiles[1] then
						shooter:spawn_particles(pos, item.tiles[1])
					end
				end
				break
			end
		end
	end
end

function shooter:is_valid_object(object)
	if object then
		if object:is_player() == true then
			return SHOOTER_ALLOW_PLAYERS
		end
		if SHOOTER_ALLOW_ENTITIES == true then
			local luaentity = object:get_luaentity()
			if luaentity then
				if luaentity.name then
					if allowed_entities[luaentity.name] then
						return true
					end
				end
			end
		end
	end
end

function shooter:get_intersect_pos(ray, plane, collisionbox)
	local v = vector.subtract(ray.pos, plane.pos)
	local r1 = get_dot_product(v, plane.normal)
	local r2 = get_dot_product(ray.dir, plane.normal)
	if r2 ~= 0 then
		local t = -(r1 / r2)
		local td = vector.multiply(ray.dir, {x=t, y=t, z=t})
		local pt = vector.add(ray.pos, td)
		local pd = vector.subtract(pt, plane.pos)
		if math.abs(pd.x) < collisionbox[4] and
				math.abs(pd.y) < collisionbox[5] and
				math.abs(pd.z) < collisionbox[6] then
			return pt
		end
	end
end

function shooter:process_round(round)
	local target = {object=nil, distance=10000}
	local p1 = round.pos
	local v1 = round.ray
	for _,ref in ipairs(shooter.objects) do
		local p2 = vector.add(ref.pos, ref.offset)
		if p1 and p2 and ref.name ~= round.name then
			local d = vector.distance(p1, p2)
			if d < round.def.step and d < target.distance then
				local ray = {pos=p1, dir=v1}
				local plane = {pos=p2, normal={x=-1, y=0, z=-1}}
				local pos = shooter:get_intersect_pos(ray, plane, ref.collisionbox)
				if pos then
					target.object = ref.object
					target.pos = pos
					target.distance = d
				end
			end
		end
	end
	if target.object and target.pos then
		local success, pos = minetest.line_of_sight(p1, target.pos, 1)
		if success then
			local user = minetest.get_player_by_name(round.name)
			if user then
				target.object:punch(user, nil, round.def.tool_caps, v1)
				shooter:spawn_particles(target.pos, SHOOTER_EXPLOSION_TEXTURE)
			end
			return 1
		elseif pos and SHOOTER_ALLOW_NODES == true then
			shooter:punch_node(pos, round.def)
			return 1
		end
	elseif SHOOTER_ALLOW_NODES then
		local d = round.def.step
		local p2 = vector.add(p1, vector.multiply(v1, {x=d, y=d, z=d}))
		local success, pos = minetest.line_of_sight(p1, p2, 1)

		if pos then
			shooter:punch_node(pos, round.def)
			return 1
		end
	end
end

shooter.registered_weapons = shooter.registered_weapons or {}
function shooter:register_weapon(name, def)
	shooter.registered_weapons[name] = def
	local shots = def.shots or 1
	local wear = math.ceil(65534 / def.rounds)
	local max_wear = (def.rounds - 1) * wear
	minetest.register_tool(name, {
		description = def.description,
		inventory_image = def.inventory_image,
		on_use = function(itemstack, user, pointed_thing)
			if itemstack:get_wear() < max_wear then
				def.spec.name = user:get_player_name()
				if shots > 1 then
					local step = def.spec.tool_caps.full_punch_interval
					for i = 0, step * shots, step do
						minetest.after(i, function()
							shooter:fire_weapon(user, pointed_thing, def.spec)
						end)
					end
				else
					shooter:fire_weapon(user, pointed_thing, def.spec)
				end
				itemstack:add_wear(wear)
			else
				local inv = user:get_inventory()
				if inv then
					local stack = "shooter:ammo 1"
					if inv:contains_item("main", stack) then
						minetest.sound_play("shooter_reload", {object=user})
						inv:remove_item("main", stack)
						itemstack:replace(name.." 1 1")
					else
						minetest.sound_play("shooter_click", {object=user})
					end
				end
			end
			return itemstack
		end,
	})
end

function shooter:fire_weapon(user, pointed_thing, def)
	if shooter.shots[def.name] then
		if shooter.time < shooter.shots[def.name] then
			return
		end
	end
	shooter.shots[def.name] = shooter.time + def.tool_caps.full_punch_interval
	minetest.sound_play(def.sound, {object=user})
	local v1 = user:get_look_dir()
	local p1 = user:getpos()
	if not v1 or not p1 then
		return
	end
	minetest.add_particle({x=p1.x, y=p1.y + 1.6, z=p1.z},
		vector.multiply(v1, {x=30, y=30, z=30}),
		{x=0, y=0, z=0}, 0.5, 0.25,
		false, def.particle
	)
	if pointed_thing.type == "node" and SHOOTER_ALLOW_NODES == true then
		local pos = minetest.get_pointed_thing_position(pointed_thing, false)
		shooter:punch_node(pos, def)
	elseif pointed_thing.type == "object" then
		local object = pointed_thing.ref
		if shooter:is_valid_object(object) == true then
			object:punch(user, nil, def.tool_caps, v1)
			local p2 = object:getpos()
			local pp = get_particle_pos(p1, v1, vector.distance(p1, p2))
			pp.y = pp.y + 1.75
			shooter:spawn_particles(pp, SHOOTER_EXPLOSION_TEXTURE)
		end
	else
		shooter:update_objects()
		table.insert(shooter.rounds, {
			name = def.name,
			pos = vector.add(p1, {x=0, y=1.75, z=0}),
			ray = v1,
			dist = 0,
			def = def,
		})
	end
end

function shooter:load_objects()
	local objects = {}
	if SHOOTER_ALLOW_PLAYERS == true then
		local players = minetest.get_connected_players()
		for _,player in ipairs(players) do
			local pos = player:getpos()
			local name = player:get_player_name()
			local hp = player:get_hp() or 0
			if pos and name and hp > 0 then
				table.insert(objects, {
					name = name,
					object = player,
					pos = pos,
					collisionbox = {-0.25,-1.0,-0.25, 0.25,0.8,0.25},
					offset = SHOOTER_PLAYER_OFFSET,
				})
			end
		end
	end
	if SHOOTER_ALLOW_ENTITIES == true then
		for _,ref in pairs(minetest.luaentities) do
			if ref.object and ref.name then
				if allowed_entities[ref.name] then
					local pos = ref.object:getpos()
					local hp = ref.object:get_hp() or 0
					if pos and hp > 0 then
						local def = minetest.registered_entities[ref.name]
						table.insert(objects, {
							name = ref.name,
							object = ref.object,
							pos = pos,
							collisionbox = def.collisionbox or {0,0,0, 0,0,0},
							offset = SHOOTER_ENTITY_OFFSET,
						})
					end
				end
			end
		end
	end
	shooter.reload_time = shooter.time
	shooter.update_time = shooter.time
	shooter.objects = {}
	for _,v in ipairs(objects) do
		table.insert(shooter.objects, v)
	end
end

function shooter:update_objects()
	if shooter.time - shooter.reload_time > SHOOTER_OBJECT_RELOAD_TIME then
		shooter:load_objects()
	elseif shooter.time - shooter.update_time > SHOOTER_OBJECT_UPDATE_TIME then
		for i, ref in ipairs(shooter.objects) do
			if ref.object then
				local pos = ref.object:getpos()
				if pos then
					shooter.objects[i].pos = pos
				end
			else
				table.remove(shooter.objects, i)
			end
		end
		shooter.update_time = shooter.time
	end
end

function shooter:blast(pos, radius, fleshy, distance, user)
	if not user then
		return
	end
	local name = user:get_player_name()
	local pos = vector.round(pos)
	local p1 = vector.subtract(pos, radius)
	local p2 = vector.add(pos, radius)
	minetest.sound_play("tnt_explode", {pos=pos, gain=1})
	if SHOOTER_ALLOW_NODES and SHOOTER_ENABLE_BLASTING then
		if SHOOTER_ENABLE_PROTECTION then
			if not minetest.is_protected(pos, name) then
				minetest.set_node(pos, {name="tnt:boom"})
			end
		else
			minetest.set_node(pos, {name="tnt:boom"})
		end
	end
	if SHOOTER_ENABLE_PARTICLE_FX == true then
		minetest.add_particlespawner(50, 0.1,
			p1, p2, {x=-0, y=-0, z=-0}, {x=0, y=0, z=0},
			{x=-0.5, y=5, z=-0.5}, {x=0.5, y=5, z=0.5},
			0.1, 1, 8, 15, false, "tnt_smoke.png"
		)
		minetest.add_particlespawner(50, 0.1,
			p1, p2, {x=-0, y=-0, z=-0}, {x=0, y=0, z=0},
			{x=-0.5, y=5, z=-0.5}, {x=0.5, y=5, z=0.5},
			0.1, 1, 8, 15, false, "fire_basic_flame.png"
		)
	end
	local objects = minetest.get_objects_inside_radius(pos, distance)
	for _,obj in ipairs(objects) do
		if (obj:is_player() and SHOOTER_ALLOW_PLAYERS == true) or
				(obj:get_luaentity() and SHOOTER_ALLOW_ENTITIES == true and
				obj:get_luaentity().name ~= "__builtin:item") then
			local obj_pos = obj:getpos()
			local dist = vector.distance(obj_pos, pos)
			local damage = (fleshy * 0.5 ^ dist) * 2
			if dist ~= 0 then
				obj_pos.y = obj_pos.y + 1.7
				blast_pos = {x=pos.x, y=pos.y + 4, z=pos.z}
				if minetest.line_of_sight(obj_pos, blast_pos, 1) then
					obj:punch(obj, 1.0, {
						full_punch_interval = 1.0,
						damage_groups = {fleshy=damage},
					})
				end
			end
		end
	end
	if SHOOTER_ALLOW_NODES and SHOOTER_ENABLE_BLASTING then
		local pr = PseudoRandom(os.time())
		local vm = VoxelManip()
		local min, max = vm:read_from_map(p1, p2)
		local area = VoxelArea:new({MinEdge=min, MaxEdge=max})
		local data = vm:get_data()
		local c_air = minetest.get_content_id("air")
		for z = -radius, radius do
			for y = -radius, radius do
				local vp = {x=pos.x - radius, y=pos.y + y, z=pos.z + z}
				local vi = area:index(vp.x, vp.y, vp.z)
				for x = -radius, radius do
					if (x * x) + (y * y) + (z * z) <=
							(radius * radius) + pr:next(-radius, radius) then
						if SHOOTER_ENABLE_PROTECTION then
							if not minetest.is_protected(vp, name) then
								--data[vi] = c_air  --commented out due to buggy
							end
						else
							data[vi] = c_air
						end
					end
					vi = vi + 1
				end
			end
		end
		vm:set_data(data)
		vm:update_liquids()
		vm:write_to_map()
		vm:update_map()
	end
end

if not singleplayer and SHOOTER_ADMIN_WEAPONS then
	local timer = 0
	local shooting = false
	minetest.register_globalstep(function(dtime)
		if not shooting then
			timer = timer+dtime
			if timer < 2 then
				return
			end
			timer = 0
		end
		shooting = false
		for _,player in pairs(minetest.get_connected_players()) do
			if player:get_player_control().LMB then
				local name = player:get_player_name()
				if minetest.check_player_privs(name, {server=true}) then
					local spec = shooter.registered_weapons[player:get_wielded_item():get_name()]
					if spec then
						spec = spec.spec
						shooter.shots[name] = false
						spec.name = name
						shooter:fire_weapon(player, {}, spec)
						shooting = true
					end
				end
			end
		end
	end)
end

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot 2",
	recipe = "shooter:rifle",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot",
	recipe = "shooter:pistol",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot 2",
	recipe = "shooter:machine_gun",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot",
	recipe = "shooter:grenade",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot 2",
	recipe = "shooter:shotgun",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:copper_ingot",
	recipe = "shooter:ammo",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot",
	recipe = "shooter:hook",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot",
	recipe = "shooter:grapple_hook",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot",
	recipe = "shooter:grapple_gun",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:bronze_ingot 2",
	recipe = "shooter:rocket_gun_loaded",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot 3",
	recipe = "shooter:rocket_gun",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot",
	recipe = "shooter:flare_gun",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 60,
	output = "default:steel_ingot 2",
	recipe = "shooter:crossbow",
})

