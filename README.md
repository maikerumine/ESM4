 Extreme Survival created by maikerumine<br>
 Minetest 0.4.16 mod: "Extreme Survival"<br>
 namespace: extreme_survival<br>
 (c) 2014-2017 by: maikerumine<br>
 https://github.com/maikerumine<br>
 LGPLv2.1  (SEE BOTTOM)<br>
=======================

___________         __                                    _________                  .__              .__   <br>
\_   _____/__  ____/  |________   ____   _____   ____    /   _____/__ ____________  _|__|__  _______  |  |  <br>
 |    __)_\  \/  /\   __\_  __ \_/ __ \ /     \_/ __ \   \_____  \|  |  \_  __ \  \/ /  \  \/ /\__  \ |  |  <br>
 |        \>    <  |  |  |  | \/\  ___/|  Y Y  \  ___/   /        \  |  /|  | \/\   /|  |\   /  / __ \|  |__<br>
/_______  /__/\_ \ |__|  |__|    \___  >__|_|  /\___  > /_______  /____/ |__|    \_/ |__| \_/  (____  /____/<br>
        \/      \/                   \/      \/     \/          \/                                  \/    <br>

[es] Maikerumine's Extreme Survival mod, has extra crafting recipies for tools and ores.
===============================================================

[CRAFTING]
----------------------------
Craft dirt	 					from 9 papyrus.. or 9 bones<br>
Craft sand						from 5 bones in an "X"<br>
Craft coal						from 5 bones in an "+"<br>
Craft gravel					from 3 bones in an "_"<br>
Craft Mese Crystal	 			from 9 Mese Shards...<br>
  (dependancy to mese_crystals mod changed by maikerumine)
Craft Messymese					from 9 mesecook_crystals<br>
Craft 3 Desert Cobble 			from one brick and two cobble, brick on top of craft...
Craft depleted_uranium_ingot	from 9 technic:chernobylite_block<br>
Craft Punkin					from 9 depleted_uranium_ingot<br>
Craft Boneblock					from 8 bones surrounding 1 steelblock<br>
Craft Infinium container		from glass_bottle+infinium_goo+water_flowing (shapeless)<br>

[COOKING]
-------------------------
Craft Water flowing 			from cooking ice in furnace.<br>
Craft Mese Crystal 				from cooking <br>
mesecook_crystal in furnace.<br>
Craft Infinium ingot			from cooking infinium_container in furnace.<br>
Craft technic:uranium			from cooking depleted_uranium_ingot in furnace.<br>
Craft depleted_uranium_ingot	from depleted_uranium_lump in furnace.<br>

[FUEL] --need technic mod
technic:uranium_block=> 604800 burntime<br>
es:depleted_uranium -->three minute burn time.<br>

[ORES]
---------------------------
Emeralds: 						Below -1000<br>
Rubys: 						Below -3000<br>
Aikerum: 						Below -4000<br>
Infinium: 						Below -4300<br>
Purpellium:					Below -4300<br>
Depleted uranium: 				Above -1000<br>

Coal, Iron, and Gold now generate in desert stone.<br>

These new ores can craft into very strong tools and weapons. As of current the Infinuim ingots can be made into infinium armour, (soft dependancy to armor mod.)  You can consider finding Infinium winning the game.
To craft these tools you will replace the stick with an iron ingot.
To craft an Infinium ingot you must craft first a vessel with Infinium goo to get Infinium container and water flowing. then cook the Infinium container in furnace to get ingot.<br>


[TOOLS]
------------------------
ES Sword and pick crafting is different than default minetest.
Aikerum, Emerald, Ruby crystals go in usual spots to craft, the handle however, substitutes the sticks for an steel ingot.

		Ruby Tools Example:		R=Ruby  I=Steel_ingot #=Air<br>


Pick Crafting:<br>
				[RRR]<br>
				[#I#]<br>
				[#I#]<br>

Sword Crafting:<br>
				[#R#]<br>
				[#R#]<br>
				[#I#]<br>

[STAIRS]
--------------------------
Stair crafting the following blocks will give you a stair or slab:<br>
Aikerum<br>
Dirt<br>
Emerald<br>
Infinium<br>
Purpellium<br>
Ruby<br>

[ARMOR]
----------------------------
Must have 3d_armor installed to craft the Infinium Armor.

License of source code:
-----------------------
LGPLv2.1 for extreme_survival game, based off of minetest_game (SEE BOTTOM FOR ORIGINAL LICENsE INFO.)
WTFPL or otherwise stated in mods.

License of media:
-----------------------
Vanessa Ezekowitz (WTFPL):
   vessels_glass_bottle.png								-->Used and modified for es:infinium container
InfinityProject (WTFPL):
  default_mineral_diamond.png							-->Used and modified for es:depleted_uranium_ore.
Gambit (WTFPL):
  default_copper_ingot.png								-->Used and modified for es: Infinium Ingots, Depleted Uranium Ingots
  default_copper_lump.png								-->Used and modified for es: Depleted Uranium Lump
  default_diamond_block.png								-->Used and modified for es: Ruby, Emerald, and Aikerum Blocks
BlockMen (CC BY-SA 3.0):
  default_tool_steelsword.png							-->Used and modified for es: Ruby, Emerald, and Aikerum Swords
  default_diamond.png									-->Used and modified for es: Emerald, Aikerum, and Ruby Crystals
  default_mineral_mese.png								-->Used and modified for es: Aikerum, Emerald, And Ruby Ores
Maikerumine (CC BY-SA 3.0)
  infinium.png
  infinium_block.png
  infinium_container.png
  infinium_ore
  es_tool_aikerumpick.png
  es_tool_aikerumsword.png
  es_tool_emeraldpick.png
  es_tool_emeraldsword.png
  es_tool_rubypick.png
  es_tool_rubysword.png

or otherwise stated in mods included in this subgame.

The main game for the Minetest game engine [minetest_game]
==========================================================

To use this game with Minetest, insert this repository as
  /games/minetest_game
in the Minetest Engine.

The Minetest Engine can be found in:
  https://github.com/minetest/minetest/

Compatibility
--------------
The minetest_game github master HEAD is generally compatible with the github
master HEAD of minetest.

Additionally, when the minetest engine is tagged to be a certain version (eg.
0.4.10), minetest_game is tagged with the version too.

When stable releases are made, minetest_game is packaged and made available in
  http://minetest.net/download
and in case the repository has grown too much, it may be reset. In that sense,
this is not a "real" git repository. (Package maintainers please note!)

License of source code
----------------------
Copyright (C) 2010-2012 celeron55, Perttu Ahola <celeron55@gmail.com>
See README.txt in each mod directory for information about other authors.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2.1 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

License of media (textures and sounds)
--------------------------------------
Copyright (C) 2010-2012 celeron55, Perttu Ahola <celeron55@gmail.com>
See README.txt in each mod directory for information about other authors.

Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
http://creativecommons.org/licenses/by-sa/3.0/

License of menu/header.png
Copyright (C) 2013 BlockMen CC BY-3.0

Other mods:
These are heavily modded to suit the Extreme Survival game.
