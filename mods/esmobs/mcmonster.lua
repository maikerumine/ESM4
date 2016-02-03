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

--bp:register_spawn("esmobs:spider", {"default:stone" ,"default:cobble","group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 6, 0, 14000, 1, 71)
--bp:register_spawn("esmobs:creeper", {"group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 7, -1, 22000, 1, 31000)
bp:register_spawn("esmobs:skeleton", {"group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 7, -1, 22000, 2, 31000)
--bp:register_spawn("esmobs:zombie", {"group:crumbly", "group:cracky", "group:choppy", "group:snappy"}, 7, -1, 22000, 1, 31000)
--bp:register_spawn("esmobs:pigman", {"nether:rack"}, 15, -1, 5000, 4, -1000)
--bp:register_spawn("esmobs:pigman", {"nether:portal"}, 15, -1, 15000, 4, 31000)



