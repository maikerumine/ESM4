-- „Parameter“/„Settings“

-- Wahrscheinlichkeit für jeden Chunk, solche Gänge mit Schienen zu bekommen
-- Probability for every newly generated chunk to get corridors
local probability_railcaves_in_chunk = 1/3

-- Innerhalb welcher Parameter soll sich die Pfadlänge bewegen? (Forks heben den Maximalwert auf)
-- Minimal and maximal value of path length (forks don't look up this value)
local way_min = 4;
local way_max = 7;

-- Wahrsch. für jeden geraden Teil eines Korridors, keine Fackeln zu bekommen
-- Probability for every horizontal part of a corridor to be without light
local probability_torches_in_segment = 0.5

-- Wahrsch. für jeden Teil eines Korridors, nach oben oder nach unten zu gehen
-- Probability for every part of a corridor to go up or down
local probability_up_or_down = 0.2

-- Wahrscheinlichkeit für jeden Teil eines Korridors, sich zu verzweigen – vorsicht, wenn fast jeder Gang sich verzweigt, kann der Algorithums unlösbar werden und MT hängt sich auf
-- Probability for every part of a corridor to fork – caution, too high values may cause MT to hang on.
local propability_fork = 0.04

-- Wahrscheinlichkeit für jeden geraden Teil eines Korridors eine Kiste zu enthalten
-- Probability for every part of a corridor to contain a chest
local probability_chest = 5/100

-- Parameter Ende


-- random generator
local pr
local pr_initialized = false

function InitRandomizer(seeed)
	pr = PseudoRandom(seeed)
	pr_initialized = true
end
function nextrandom(min, max)
	return pr:next() / 32767 * (max - min) + min
end

-- Würfel…
-- Cube…
function Cube(p, radius, node)
	for zi = p.z-radius, p.z+radius do
		for yi = p.y-radius, p.y+radius do
			for xi = p.x-radius, p.x+radius do
				minetest.set_node({x=xi,y=yi,z=zi}, node)
			end
		end
	end
end

-- Random chest items
-- Zufälliger Kisteninhalt
function rci()
	if(minetest.get_modpath("treasurer") ~= nil) then
		local treasures
		if nextrandom(0,1) < 0.03 then
			treasures = treasurer.select_random_treasures(1,2,4)
		elseif nextrandom(0,1) < 0.05 then
			if nextrandom(0,1) < 0.5 then
				treasures = treasurer.select_random_treasures(1,2,4,"seed")
			else
				treasures = treasurer.select_random_treasures(1,2,4,"seed")
			end
		elseif nextrandom(0,1) < 0.005 then
			return "tnt:tnt "..nextrandom(1,3)
		elseif nextrandom(0,1) < 0.003 then
			if nextrandom(0,1) < 0.8 then
				treasures = treasurer.select_random_treasures(1,3,6,"mineral")
			else
				treasures = treasurer.select_random_treasures(1,5,9,"mineral")
			end
		end

		if(treasures ~= nil) then
			if(#treasures==1) then
				return treasures[1]:get_name()
			else
				return ""
			end
		else
			return ""
		end
	else

		if nextrandom(0,1) < 0.03 then
			return "farming:bread "..nextrandom(1,3)
		elseif nextrandom(0,1) < 0.05 then
			if nextrandom(0,1) < 0.5 then
				return "farming:seed_cotton "..nextrandom(1,5)
			else
				return "farming:seed_wheat "..nextrandom(1,5)
			end
		elseif nextrandom(0,1) < 0.005 then
			return "tnt:tnt "..nextrandom(1,3)
		elseif nextrandom(0,1) < 0.003 then
			if nextrandom(0,1) < 0.8 then
				return "default:mese_crystal "..nextrandom(1,3)
			else
				return "default:diamond "..nextrandom(1,3)
			end
		end
	end
end
-- chests
function Place_Chest(pos)
	minetest.set_node(pos, {name="default:chest"})
	local meta = minetest.get_meta(pos)
	meta:set_string("formspec",
		"invsize[8,9;]"..
		"list[context;main;0,0;8,4;]"..
		"list[current_player;main;0,5;8,4;]")
		meta:set_string("infotext", "Chest");
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
		--print(dump(meta:to_table()))
		meta:from_table({
			inventory = {
				main = {
					[1] = rci(),[2] = rci(),[3] = rci(),[4] = rci(),[5] = rci(),[6] = rci(),[7] = rci(),[8] = rci(),
					[9] = rci(),[10] = rci(),[11] = rci(),[12] = rci(),[13] = rci(),[14] = rci(),[15] = rci(),[16] = rci(),
					[17] = rci(),[18] = rci(),[19] = rci(),[20] = rci(),[21] = rci(),[22] = rci(),[23] = rci(),[24] = rci(),
					[25] = rci(),[26] = rci(),[27] = rci(),[28] = rci(),[29] = rci(),[30] = rci(),[31] = rci(),[32] = rci()}
				}, -- Why the f does the number of fields vary in the mod??
				fields = {
					formspec = "invsize[8,9;]list[context;main;0,0;8,4;]list[current_player;main;0,5;8,4;]",
					infotext = "Chest"
				}
			}
		)
	end
	
function WoodBulk(pos)
	minetest.set_node({x=pos.x+1, y=pos.y, z=pos.z+1}, {name="es:rotten_wood"})
	minetest.set_node({x=pos.x-1, y=pos.y, z=pos.z+1}, {name="es:rotten_wood"})
	minetest.set_node({x=pos.x+1, y=pos.y, z=pos.z-1}, {name="es:rotten_wood"})
	minetest.set_node({x=pos.x-1, y=pos.y, z=pos.z-1}, {name="es:rotten_wood"})
end

-- Gänge mit Schienen
-- Corridors with rails

function corridor_part(start_point, segment_vector, segment_count)
	local node
	local p = {x=start_point.x, y=start_point.y, z=start_point.z}
	local torches = nextrandom(0, 1) < probability_torches_in_segment
	local dir = {0, 0}
	local torchdir = {1, 1}
	local node_wood = {name="es:rotten_wood"}
	local node_fence = {name="es:rotten_fence_wood"}
	if segment_vector.x == 0 and segment_vector.z ~= 0 then
		dir = {1, 0}
		torchdir = {5, 4}
	elseif segment_vector.x ~= 0 and segment_vector.z == 0 then
		dir = {0, 1}
		torchdir = {3, 2}
	end
	for segmentindex = 0, segment_count-1 do
		Cube(p, 1, {name="air"})
		-- Diese komischen Holz-Konstruktionen
		-- These strange wood structs
		if segmentindex % 2 == 1 and segment_vector.y == 0 then			
			local calc = {
				p.x+dir[1], p.z+dir[2], -- X and Z, added by direction
				p.x-dir[1], p.z-dir[2], -- subtracted
				p.x+dir[2], p.z+dir[1], -- orthogonal
				p.x-dir[2], p.z-dir[1], -- orthogonal, the other way
			}
			minetest.set_node({x=p.x, y=p.y+1, z=p.z}, node_wood)
			minetest.set_node({x=calc[1], y=p.y+1, z=calc[2]}, node_wood)
			minetest.set_node({x=calc[1], y=p.y  , z=calc[2]}, node_fence)
			minetest.set_node({x=calc[1], y=p.y-1, z=calc[2]}, node_fence)
			
			minetest.set_node({x=calc[3], y=p.y+1, z=calc[4]}, node_wood)
			minetest.set_node({x=calc[3], y=p.y  , z=calc[4]}, node_fence)
			minetest.set_node({x=calc[3], y=p.y-1, z=calc[4]}, node_fence)
			
			if minetest.get_node({x=p.x,y=p.y-2,z=p.z}).name=="air" then
				minetest.set_node({x=calc[1], y=p.y-2, z=calc[2]}, node_fence)
				minetest.set_node({x=calc[3], y=p.y-2, z=calc[4]}, node_fence)
			end
			if torches then
				minetest.set_node({x=calc[5], y=p.y+1, z=calc[6]}, {name="default:torch", param2=torchdir[1]})
				minetest.set_node({x=calc[7], y=p.y+1, z=calc[8]}, {name="default:torch", param2=torchdir[2]})
			end
			
		end
		
		-- nächster Punkt durch Vektoraddition
		-- next way point
		p = vector.add(p, segment_vector)
	end
	--p = vector.subtract(p, segment_vector)
end

function corridor_func(waypoint, coord, sign, up_or_down, up)
	local segamount = 3
	if up_or_down then
		segamount = 1
	end
	if sign then
		segamount = 0-segamount
	end
	local vek = {x=0,y=0,z=0};
	if coord == "x" then
		vek.x=segamount
	elseif coord == "z" then
		vek.z=segamount
	end
	if up_or_down then
		if up then
			vek.y = 1
		else
			vek.y = -1
		end
	end
	local segcount = pr:next(4,6)
	corridor_part(waypoint, vek, segcount)
	local corridor_vek = {x=vek.x*segcount, y=vek.y*segcount, z=vek.z*segcount}

	-- nachträglich Schienen legen
	-- after this: rails
	segamount = 1
	if sign then
		segamount = 0-segamount
	end
	if coord == "x" then
		vek.x=segamount
	elseif coord == "z" then
		vek.z=segamount
	end
	if up_or_down then
		if up then
			vek.y = 1
		else
			vek.y = -1
		end
	end
	if not up_or_down then
		segcount = segcount * 2.5
	end
	local minuend = 1
	if up_or_down then
		minuend = minuend - 1
		if not up then
			minuend = minuend - 1
		end
	end
	local chestplace = -1
	if nextrandom(0,1) < probability_chest then
		chestplace = math.floor(nextrandom(1,segcount+1))
	end
	if not up_or_down then
		for i=1,segcount do
			p = {x=waypoint.x+vek.x*i, y=waypoint.y+vek.y*i-1, z=waypoint.z+vek.z*i}
			if minetest.get_node({x=p.x,y=p.y-1,z=p.z}).name=="air" and minetest.get_node({x=p.x,y=p.y-3,z=p.z}).name~="carts:rail" then
				p.y = p.y - 1;
			end
			if minetest.get_node({x=p.x,y=p.y-1,z=p.z}).name ~="carts:rail" then
				minetest.set_node(p, {name = "carts:rail"})
			end
			if i == chestplace then
				if minetest.get_node({x=p.x+vek.z,y=p.y-1,z=p.z-vek.x}).name == "es:rotten_fence_wood" then
					chestplace = chestplace + 1
				else
					Place_Chest({x=p.x+vek.z,y=p.y,z=p.z-vek.x})
				end
			end
		end
	end
	
	return {x=waypoint.x+corridor_vek.x, y=waypoint.y+corridor_vek.y, z=waypoint.z+corridor_vek.z}
end

function start_corridor(waypoint, coord, sign, length, psra)
	local wp = waypoint
	local c = coord
	local s = sign
	local ud
	local up
	for i=1,length do
		-- Nach oben oder nach unten?
		--Up or down?
		if nextrandom(0, 1) < probability_up_or_down and i~=1 then
			ud = true
			up = nextrandom(0, 2) < 1
		else
			 ud = false
		end
		-- Make corridor / Korridor graben
		wp = corridor_func(wp,c,s, ud, up)
		-- Verzweigung?
		-- Fork?
		if nextrandom(0, 1) < propability_fork then
			local p = {x=wp.x, y=wp.y, z=wp.z}
			start_corridor(wp, c, s, nextrandom(way_min,way_max), psra)
			if c == "x" then c="z" else c="x" end
			start_corridor(wp, c, s, nextrandom(way_min,way_max), psra)
			start_corridor(wp, c, not s, nextrandom(way_min,way_max), psra)
			--minetest.set_node({x=p.x, y=p.y, z=p.z}, {name="default:torch"})
			WoodBulk({x=p.x, y=p.y-1, z=p.z})
			WoodBulk({x=p.x, y=p.y,   z=p.z})
			WoodBulk({x=p.x, y=p.y+1, z=p.z})
			WoodBulk({x=p.x, y=p.y+2, z=p.z})
			return
		end
		-- coord und sign verändern
		-- randomly change sign and coord
		if c=="x" then
			c="z"
		elseif c=="z" then
			c="x"
	 	end;
		s = nextrandom(0, 2) < 1
	end
end

function place_corridors(main_cave_coords, psra)
	if nextrandom(0, 1) < 0.5 then	
		Cube(main_cave_coords, 4, {name="default:gravel"})
		Cube(main_cave_coords, 3, {name="air"})
		main_cave_coords.y =main_cave_coords.y - 1
	else
		Cube(main_cave_coords, 3, {name="default:gravel"})
		Cube(main_cave_coords, 2, {name="air"})
	end
	local xs = nextrandom(0, 2) < 1
	local zs = nextrandom(0, 2) < 1;
	start_corridor(main_cave_coords, "x", xs, nextrandom(way_min,way_max), psra)
	start_corridor(main_cave_coords, "z", zs, nextrandom(way_min,way_max), psra)
	-- Auch mal die andere Richtung?
	-- Try the other direction?
	if nextrandom(0, 1) < 0.7 then
		start_corridor(main_cave_coords, "x", not xs, nextrandom(way_min,way_max), psra)
	end
	if nextrandom(0, 1) < 0.7 then
		start_corridor(main_cave_coords, "z", not zs, nextrandom(way_min,way_max), psra)
	end
end

minetest.register_on_generated(function(minp, maxp, seed)	
	if not pr_initialized then
		InitRandomizer(seed)
	end
	if maxp.y < 0 and nextrandom(0, 1) < probability_railcaves_in_chunk then
		-- Mittelpunkt berechnen
		-- Mid point of the chunk
		local p = {x=minp.x+(maxp.x-minp.x)/2, y=minp.y+(maxp.y-minp.y)/2, z=minp.z+(maxp.z-minp.z)/2}
		-- Haupthöhle und alle weiteren
		-- Corridors; starting with main cave out of dirt
		place_corridors(p, pr)
	end
end)
