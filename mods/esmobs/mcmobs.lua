--esmobs v01.0
--maikerumine
--made for Extreme Survival game
--License for code WTFPL

--MCMOBS borrowed from stampy game
--[[
Notes
-----

cows: right-click with empty bucket gets milk
sheep: right-click gets wool
chicken: right-click to get an egg

Milk and eggs need a food mod to be installed.

Textures are from Faithful 32x32 pack (http://www.minecraftforum.net/topic/72747-faithful-32x32-pack-updateocelot-two-cats-new-saplings-ctm-17/)

Sounds are from the Minecraft Wiki (Freesound license)

=====Pig=====(at layer 1)
=====Cow=====(at layer 2)
=====Sheep=====(at layer 3)

Ver.0.3
Mesh by Morn76
Animation by Pavel_S

===Chicken===
Mesh and animation by Pavel_S

Meshes : Pig, Cow, Sheep
Armatures : Pig_Rig, Cow_Rig, Sheep_Rig

==Animation==
Optimized for 24fps.
(the last frame equal to first in each animation)
The first frame of each animation is default pose.
=List of animations :
	standing (head bobbing slightly up and down) : 1-24
	walking : 24-50
	eating (head goes to the ground) : 50-79
		eating cycle : 58-73
	look around
		right : 79-99
		looking left pose : 89
		left : 99-119
		looking right pose : 109
	hurt (quick half jump with legs slightly crossed) : 119-155
	death (falls on left side) : 155-180

There is no delays for looking around and repeats for eating!

==Rig==
See Pig_Rig.png

==ChangeLog==
0.3
Added Cow, Sheep
Added Cow and Sheep animations
Fixed UVunwraps
Extended hurt and death animation

0.2
Added Pig animation
Fixed UVunwrap

=====Creeper=====
Ver.0.3
Mesh by Morn76
Animation by Pavel_S

Meshes : Creeper
Armatures : Creeper_Rig

==Animation==
Optimized for 24fps.
(the last frame equal to first in each animation)
The first frame of each animation is default pose.
=List of animations :
	standing : 1-25
	walking : 25-50
	look around
		right : 50-80
		looking left pose : 65
		left : 80-110
		looking right pose : 95
	hurt : 110-140
	death : 140-190

=====Skeleton=====
Ver.0.3
Mesh by Morn76
Animation by Pavel_S

Meshes : Skeleton
Armatures : Skeleton_Rig

==Animation==
Optimized for 30fps.
(the last frame equal to first in each animation)
The first frame of each animation is default pose.
=List of animations :
	standing (head bobbing slightly up and down) : 1-25
	walking : 25-50
	hurt (quick half jump with legs slightly crossed) : 85-117
	death (falls on left side) : 117-146

=====Zombie=====
Mesh by Morn76
Animation by Pavel_S

 1 - 24   - standing
24 - 48   - walking
48 - 64   - running
64 - 88   - hurm
88 - 120 - death

*******************************************************************************

Original "simple mobs" README follows

=== MOBS-MOD for MINETEST-C55 ===
by PilzAdam

Inroduction:
This mod adds some basic hostile and friendly mobs to the game.

How to install:
Unzip the archive an place it in minetest-base-directory/mods/minetest/
if you have a windows client or a linux run-in-place client. If you have
a linux system-wide instalation place it in ~/.minetest/mods/minetest/.
If you want to install this mod only in one world create the folder
worldmods/ in your worlddirectory.
For further information or help see:
http://wiki.minetest.com/wiki/Installing_Mods

How to use the mod:
See https://github.com/PilzAdam/mobs/wiki

For developers:
The API documentation is moved to https://github.com/PilzAdam/mobs/wiki/API

License:
Sourcecode: WTFPL (see below)
Grahpics: WTFPL (see below)
Models: WTFPL (by Pavel_S, see below)

See also:
http://minetest.net/

         DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.
]]


--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)

bp:register_mob("esmobs:creeper", {
	type = "monster",
	hp_max = 30,
	damage = 2,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.6, 0.4},
	textures = {"mcmobs_1.png"},
	visual = "mesh",
	visual_size = {x=.75, y=.75, z=.75},
	mesh = "creeper.x",
	makes_footstep_sound = false,
	sounds = {
		approach = "Fuse",
		death = "Creeperdeath",
		hurt = "Creeper4",
		attack = "damage",
	},
	walk_velocity = 1.5,
	run_velocity = 3,
	damage = 1,
	armor = 200,
	maxdrops = 3,
	drops = {
		{name = "tnt:gunpowder",
		chance = 1,
		min = 0,
		max = 2,},
		{name = "farorb:farorb",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "jdukebox:disc_1",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "jdukebox:disc_2",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "jdukebox:disc_3",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "jdukebox:disc_4",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "jdukebox:disc_5",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "jdukebox:disc_6",
		chance = 10,
		min = 1,
		max = 1,},
	},
	animation = {
		speed_normal = 24,
		speed_run = 48,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 49,
		run_start = 24,
		run_end = 49,
		hurt_start = 110,
		hurt_end = 139,
		death_start = 140,
		death_end = 189,
		look_start = 50,
		look_end = 108,
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	view_range = 16,
	attack_type = "explode",
})
bp:register_spawn("esmobs:creeper", {"group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 7, -1, 18000, 1, 31000)

bp:register_mob("esmobs:skeleton", {
	type = "monster",
	hp_max = 30,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	textures = {"mcmobs_2.png"},
	visual = "mesh",
	mesh = "skeleton.x",
	makes_footstep_sound = true,
	sounds = {
		random = "skeleton1",
		death = "skeletondeath",
		hurt = "skeletonhurt1",
	},
	walk_velocity = 1.2,
	run_velocity = 2.4,
	damage = 1,
	armor = 200,
	drops = {
		{name = "esmobs:arrow",
		chance = 1,
		min = 0,
		max = 2,},
		{name = "esmobs:bow_wood",
		chance = 11,
		min = 1,
		max = 1,},
		{name = "bones:bones",
		chance = 1,
		min = 0,
		max = 2,},
	},
	animation = {
		speed_normal = 30,
		speed_run = 60,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 49,
		run_start = 24,
		run_end = 49,
		hurt_start = 85,
		hurt_end = 115,
		death_start = 117,
		death_end = 145,
		shoot_start = 50,
		shoot_end = 82,
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 1,
	view_range = 16,
	attack_type = "shoot",
	arrow = "esmobs:arrow_entity",
	--arrow = "throwing:arrow_entity",
	--arrow = "esmobs:bonebullet",
	shoot_interval = 2.5,
})
bp:register_spawn("esmobs:skeleton", {"group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 7, -1, 15000, 2, 31000)

-- from throwing mod by PilzAdam:
minetest.register_node("esmobs:arrow_box", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			-- Schaft
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
	tiles = {"throwing_arrow.png", "throwing_arrow.png", "throwing_arrow_back.png", "throwing_arrow_front.png", "throwing_arrow_2.png", "throwing_arrow.png"},
	groups = {not_in_creative_inventory=1},
})


bp:register_mob("esmobs:zombie", {
	type = "monster",
	hp_max = 35,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	textures = {"mcmobs_3.png"},
	visual = "mesh",
	mesh = "zombie.x",
	makes_footstep_sound = true,
	sounds = {
		random = "zombie1",
		death = "zombiedeath",
		hurt = "zombiehurt1",
		attack = "damage",
	},
	walk_velocity = .8,
	run_velocity = 1.6,
	damage = 1,
	armor = 200,
	drops = {
		{name = "esmobs:rotten_flesh",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:steel_ingot",
		chance = 3,
		min = 0,
		max = 2,},
		{name = "default:shovel_steel",
		chance = 4,
		min = 1,
		max = 1,},
		{name = "default:sword_steel",
		chance = 8,
		min = 1,
		max = 1,},
		{name = "farming_plus:carrot_item",
		chance = 10,
		min = 1,
		max = 1,},
		{name = "farming_plus:potato_item",
		chance = 10,
		min = 1,
		max = 1,},
	},
	animation = {
		speed_normal = 24,
		speed_run = 48,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		hurt_start = 64,
		hurt_end = 86,
		death_start = 88,
		death_end = 118,
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 1,
	view_range = 16,
	attack_type = "dogfight",
})
bp:register_spawn("esmobs:zombie", {"group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 7, -1, 17000, 1, 31000)

bp:register_mob("esmobs:pigman", {
	type = "monster",
	hp_max = 35,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	textures = {"mcmobs_4.png"},
	visual = "mesh",
	mesh = "zombie.x",
	makes_footstep_sound = true,
	walk_velocity = .8,
	run_velocity = 1.6,
	damage = 2,
	armor = 400,
	drops = {
		{name = "esmobs:rotten_flesh",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "default:gold_ingot",
		chance = 13,
		min = 0,
		max = 2,},
		{name = "default:sword_mese",
		chance = 8,
		min = 1,
		max = 1,},
	},
	animation = {
		speed_normal = 24,
		speed_run = 48,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		hurt_start = 64,
		hurt_end = 86,
		death_start = 88,
		death_end = 118,
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 1,
	view_range = 16,
	attack_type = "dogfight",
})
bp:register_spawn("esmobs:pigman", {"nether:rack"}, 15, -1, 5000, 4, -1000)
bp:register_spawn("esmobs:pigman", {"nether:portal"}, 15, -1, 15000, 4, 31000)


-- nether compatibility
if not minetest.get_modpath("nether") then
	minetest.register_alias("nether:netherrack", "default:sandstone")
	minetest.register_alias("nether:portal", "default:sandstone")
end

if minetest.setting_get("log_mods") then
	minetest.log("action", "MC-mobs loaded")
end
