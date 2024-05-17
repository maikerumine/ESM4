local TELEPORT_MAX_DIST = 260			-- maximum teleport distance in all directions ---2606???
local TELEPORT_SHOW_MAX = 6			-- maximum teleports shown in formspec
local TELEPORT_FUEL = "default:mossycobble"	-- fuel item (note: if you change this,
						-- you also need to change formspec text)
local TELEPORT_INITFUEL = 30			-- initial fuel items for new teleports

local S
if minetest.get_translator then
	S = minetest.get_translator("teleports")
else
	-- Compability translator code to support MT 0.4, which doesn't support
	-- translations for mods.

	local function translate(textdomain, str, ...)
		local arg = {n=select('#', ...), ...}
		return str:gsub("@(.)", function(matched)
			local c = string.byte(matched)
			if string.byte("1") <= c and c <= string.byte("9") then
				return arg[c - string.byte("0")]
			else
				return matched
			end
		end)
	end

	S = function(str, ...)
		return translate("teleports", str, ...)
	end
end


local F = minetest.formspec_escape

teleports = {}
teleports.teleports = {}
teleports.lastplayername =""
teleports.filename = minetest.get_worldpath() .. "/teleports.txt"

function teleports:save()
	local datastring = minetest.serialize(self.teleports)
	if not datastring then
		return
	end
	local file, err = io.open(self.filename, "w")
	if err then
		return
	end
	file:write(datastring)
	file:close()
end
function teleports:load()
	local file, err = io.open(self.filename, "r")
	if err then
		self.teleports = {}
		return
	end
	self.teleports = minetest.deserialize(file:read("*all"))
	if type(self.teleports) ~= "table" then
		self.teleports = {}
	end
	file:close()
end
function teleports:find_nearby(pos, count)
	local nearby = {}
	for i = #teleports.teleports, 1, -1 do
		local EachTeleport = teleports.teleports[i]
		if not vector.equals(EachTeleport.pos, pos) and vector.distance(EachTeleport.pos, pos) < TELEPORT_MAX_DIST then
			table.insert(nearby, EachTeleport)
			if #nearby>=count then
				break
			end
		end
	end
	return nearby
end
function teleports.animate(pos, playername)
	minetest.add_particlespawner({
		amount = 80,
		time = 5,
		minpos = {x=pos.x-1, y=pos.y, z=pos.z-1},
		maxpos = {x=pos.x+1, y=pos.y+3, z=pos.z+1},
		minvel = {x=0, y=-1, z=0},
		maxvel = {x=0, y=1, z=0},
		minacc = {x=0, y=-1, z=0},
		maxacc = {x=0, y=1, z=0},
		minexptime = 1,
		maxexptime = 1,
		minsize = 0.5,
		maxsize = 2,
		collisiondetection = false,
		vertical = true,
		texture = "default_diamond.png",
		playername = playername,
	})
	minetest.add_particlespawner({
		amount = 20,
		time = 5,
		minpos = {x=pos.x-1, y=pos.y, z=pos.z-1},
		maxpos = {x=pos.x+1, y=pos.y+3, z=pos.z+1},
		minvel = {x=0, y=-1, z=0},
		maxvel = {x=0, y=1, z=0},
		minacc = {x=0, y=-1, z=0},
		maxacc = {x=0, y=1, z=0},
		minexptime = 1,
		maxexptime = 1,
		minsize = 0.5,
		maxsize = 2,
		collisiondetection = false,
		vertical = true,
		texture = "default_diamond.png",
	})
end
function teleports.teleportate(parameters)
	local pos1,pos2,playername = parameters[1],parameters[2],parameters[3]

	local player = minetest.get_player_by_name(playername)
	if player and player:is_player() and playername~=teleports.lastplayername then
		local pos = player:getpos()
		if vector.distance(pos, {x=pos1.x,y=pos1.y+0.5,z=pos1.z}) < 0.52 then
			local dest
			if math.random(1, 100) > 5 then
				teleports.lastplayername = playername
				dest = {x=pos2.x,y=pos2.y+0.5,z=pos2.z}
			else
				-- Small chance to "miss" destiation by 1 node horizontally to prevent afk players
				-- from teleporting forever
				dest = {x=pos2.x-2+math.random(1, 3),y=pos2.y+0.5,z=pos2.z-2+math.random(1, 3)}
			end
			player:setpos(dest)
			minetest.sound_play({name="teleports_teleport", gain=1.0}, {pos=dest, max_hear_distance=16}, true)
		end
	end
end
function teleports.do_teleporting(pos1, pos2, playername, delay)
	if not delay then
		teleports.teleportate({pos1, pos2, playername})
	else
		minetest.sound_play({name="teleports_charge", gain=0.5}, {pos=pos1, max_hear_distance=8}, true)
		teleports.animate(pos1, playername)
		minetest.after(delay, teleports.teleportate, {pos1, pos2, playername})
	end
end
teleports.set_formspec = function(pos, shown_teleports)
	if not shown_teleports then
		shown_teleports = teleports:find_nearby(pos, TELEPORT_SHOW_MAX)
	end
	local meta = minetest.get_meta(pos)
	local node = minetest.get_node(pos)

	local buttons = "";
	local x = 1
	local y = 1
	for i, EachTeleport in ipairs( shown_teleports ) do
		if i == 4 then
			x = x + 3.5
			y = 1
		end
		if EachTeleport["name"] then
			buttons = buttons.."button_exit["..x..","..y..";3.5,0.5;tp"..i..";"..F(S("GO> @1",EachTeleport.name)).."]";
			buttons = buttons.."tooltip[tp"..i..";"..F(S("(@1, @2, @3)", EachTeleport.pos.x,EachTeleport.pos.y,EachTeleport.pos.z)).."]";
		else
			buttons = buttons.."button_exit["..x..","..y..";3.5,0.5;tp"..i..";"..F(S("GO> (@1, @2, @3)",EachTeleport.pos.x,EachTeleport.pos.y,EachTeleport.pos.z)).."]";
		end
		y = y + 1
	end

	local label
	if buttons == "" then
		label = S("No teleport in range!")
	else
		label = S("Go to available teleports! Use mossy cobblestone as fuel!")
	end

	meta:set_string("formspec", "size[8,9;]"
		.."label[0,0;"..F(label).."]"
		.."list[current_name;price;0,1;1,1;]"
		..buttons
		.."button_exit[1,4;2,0.5;cancel;"..F(S("Cancel")).."]"
		.."list[current_player;main;0,5;8,4;]")
end
teleports.on_receive_fields = function(pos, formname, fields, player)
	local meta = minetest.env:get_meta(pos);
	local inv = meta:get_inventory();
	local price = {name=TELEPORT_FUEL, count=1, wear=0, metadata=""}
	if fields.tp1 or fields.tp2 or fields.tp3 or fields.tp4 or fields.tp5 or fields.tp6 then
		if inv:contains_item("price", price) then
			inv:remove_item("price", price);
			teleports.lastplayername = ""
			local available = teleports:find_nearby(pos, TELEPORT_SHOW_MAX)
			if player ~= nil and player:is_player() then
				local playerpos = player:getpos()
				for i=1, TELEPORT_SHOW_MAX do
					if fields["tp"..i] and #available>i-1 then
						teleports.do_teleporting(playerpos, available[i].pos, player:get_player_name())
						break
					end
				end
			end

			teleports.set_formspec(pos, available)
		end
	elseif fields.cancel or fields.quit then
		-- Make sure formspec is always updated after examining node
		teleports.set_formspec(pos)
	end
end
teleports.allow_metadata_inventory_put = function(pos, listname, index, stack, player)
	if listname=="price" and stack:get_name()==TELEPORT_FUEL then
		return 99
	else
		return 0
	end
end
teleports.allow_metadata_inventory_take = function(pos, listname, index, stack, player)
	return 0
end

teleports:load()


minetest.register_node("teleports:teleport", {
	description = S("Teleport -=Name by having sign next to teleport, max length 16 characters.=- "),
	drawtype = "glasslike",
	tiles = {"teleports_teleport_top.png"},
	
	use_texture_alpha = "clip", -- only needed for stairs API
	
	
	is_ground_content = false,
	paramtype = "light",
	--light_source = minetest.LIGHT_MAX-10,
	light_source = 3,
	groups = {cracky=1, level=3},
	drop = 'default:diamond',
	sounds = default.node_sound_stone_defaults(),
	after_place_node = function(pos, placer)
		if placer and placer:is_player() then
			local meta = minetest.env:get_meta(pos)
			local inv = meta:get_inventory()
			inv:set_size("price", 1)
			if TELEPORT_INITFUEL > 0 then
				local initialcharge = {name=TELEPORT_FUEL, count=TELEPORT_INITFUEL, wear=0, metadata=""}
				inv:add_item("price", initialcharge)
			end

			-- Add formspec to self
			local near_teleports = teleports:find_nearby(pos, TELEPORT_SHOW_MAX)
			teleports.set_formspec(pos, near_teleports)

			local sign_pos = minetest.find_node_near(pos, 1, {"default:sign_wall_wood", "default:sign_wall_steel"})
			if sign_pos then
				local sign_meta = minetest.env:get_meta(sign_pos)
				local sign_text = sign_meta:get_string("text")
				local secret_name = sign_text:sub(0, 16)
				if string.len(secret_name) == 0 then
					secret_name = nil
				end
				table.insert(teleports.teleports, {pos=vector.round(pos), name=secret_name})
			else
				table.insert(teleports.teleports, {pos=vector.round(pos)})
			end

			-- Update formspec of target teleports
			for n=1, #near_teleports do
				local pos2 = near_teleports[n].pos
				local near_teleports2 = teleports:find_nearby(pos2, TELEPORT_SHOW_MAX)
				teleports.set_formspec(pos2, near_teleports2)
			end

			teleports:save()
		end
	end,
	on_destruct = function(pos)
		-- Update list of teleports on destruction
		local near_teleports = teleports:find_nearby(pos, TELEPORT_SHOW_MAX)

		for i, EachTeleport in ipairs(teleports.teleports) do
			if vector.equals(EachTeleport.pos, pos) then
				table.remove(teleports.teleports, i)
			end
		end
		teleports:save()

		-- Update formspecs of affected teleports
		for n=1, #near_teleports do
			local pos2 = near_teleports[n].pos
			teleports.set_formspec(pos2)
		end
	end,
	on_receive_fields = teleports.on_receive_fields,
	allow_metadata_inventory_put = teleports.allow_metadata_inventory_put,
	allow_metadata_inventory_take = teleports.allow_metadata_inventory_take,
})

minetest.register_abm({
	nodenames = {"teleports:teleport"},
	interval = 3,
	chance = 1,
	action = function(pos)
		local objectsnear=minetest.get_objects_inside_radius({x=pos.x,y=pos.y+0.5,z=pos.z}, 0.52);
		if #objectsnear>0 then
			local player = objectsnear[1];
			-- check only first two objekts then give up
			if #objectsnear>1 and not player:is_player() then
				player = objectsnear[2];
			end
			if player:is_player() and player:get_player_name()~=teleports.lastplayername then
				local positions = teleports:find_nearby(pos, 11)
				if #positions>0 then
					local key = math.random(1, #positions)
					local dir, dirmag;
					local view = player:get_look_dir();
					local dist, distmin; distmin = 99;
					for i=1,#positions do -- find teleport closest to where player is looking
						dir = {x=positions[i].pos.x-pos.x,y=positions[i].pos.y-pos.y,z=positions[i].pos.z-pos.z};
						dirmag = math.sqrt(dir.x*dir.x+dir.y*dir.y+dir.z*dir.z); if dirmag == 0 then dirmag = 1 end
						dir.x=dir.x/dirmag;dir.y=dir.y/dirmag;dir.z=dir.z/dirmag;
						dir.x = view.x-dir.x;dir.y = view.y-dir.y;dir.z = view.z-dir.z;
						dist = math.sqrt(dir.x*dir.x+dir.y*dir.y+dir.z*dir.z);
						if dist<distmin then distmin = dist; key = i end
					end

					local pos2 = positions[key].pos
					teleports.do_teleporting(pos, pos2, player:get_player_name(), 3.0)
				end
			else
				teleports.lastplayername = ""
			end
		end
	end,
})
--[[
minetest.register_craft({
	output = "teleports:teleport",
	recipe = {
		{"default:diamond","default:diamond","default:diamond"},
		{"default:diamond","default:obsidian","default:diamond"},
		{"default:diamond","default:diamond","default:diamond"},
	}
})
]]
minetest.register_craft({
	output = "teleports:teleport",
	recipe = {
		{"default:diamond","default:diamond","default:diamond"},
		{"default:diamond","default:obsidian","default:diamond"},
		{"default:diamond","default:diamond","default:diamond"},
	}
})
