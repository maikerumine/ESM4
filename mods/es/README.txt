-- Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
-- (c) 2014-2015 by: maikerumine
-- https://github.com/maikerumine
-- LGPLv2.1

=======================

___________         __                                    _________                  .__              .__
\_   _____/__  ____/  |________   ____   _____   ____    /   _____/__ ____________  _|__|__  _______  |  |
 |    __)_\  \/  /\   __\_  __ \_/ __ \ /     \_/ __ \   \_____  \|  |  \_  __ \  \/ /  \  \/ /\__  \ |  |
 |        \>    <  |  |  |  | \/\  ___/|  Y Y  \  ___/   /        \  |  /|  | \/\   /|  |\   /  / __ \|  |__
/_______  /__/\_ \ |__|  |__|    \___  >__|_|  /\___  > /_______  /____/ |__|    \_/ |__| \_/  (____  /____/
        \/      \/                   \/      \/     \/          \/                                  \/







--[[es]]-- Maikerumine's Extreme Survival mod, has extra crafting recipies for tools and ores.
==================================================================

[CRAFTING]
Craft dirt	 					from 9 papyrus.. or 9 bones
Craft sand						from 5 bones in an "X"
Craft coal						from 5 bones in an "+"
Craft gravel					from 3 bones in an "_"
Craft Mese Crystal	 			from 9 Mese Shards...  (dependancy to mese_crystals mod changed by maikerumine)
Craft Messymese					from 9 mesecook_crystals
Craft 3 Desert Cobble 			from one brick and two cobble, brick on top of craft...
Craft depleted_uranium_ingot	from 9 technic:chernobylite_block
Craft Punkin					from 9 depleted_uranium_ingot
Craft Boneblock					from 8 bones surrounding 1 steelblock
Craft Infinium container		from glass_bottle+infinium_goo+water_flowing (shapeless)



[COOKING]
Craft Water flowing 			from cooking ice in furnace.
Craft Mese Crystal 				from cooking mesecook_crystal in furnace.
Craft Infinium ingot			from cooking infinium_container in furnace.
Craft technic:uranium			from cooking depleted_uranium_ingot in furnace.
Craft depleted_uranium_ingot	from depleted_uranium_lump in furnace.

[FUEL] --need technic mod
technic:uranium_block=> 604800 burntime


[ORES]
Emeralds: 						Below -100
Rubys: 							Below -300
Aikerum: 						Below -400
Infinium: 						Below -430
Depleted uranium: 				Above -1000

Coal, Iron, and Gold now generate in desert stone.


These new ores can craft into very strong tools and weapons. As of current the Infinuim ingots can be made into infinium armour, (soft dependancy to armor mod.)  You can consider finding Infinium winning the game.
To craft these tools you will replace the stick with an iron ingot.
To craft an Infinium ingot you must craft first a vessel with Infinium goo to get Infinium container and water flowing. then cook the Infinium container in furnace to get ingot.

[TOOLS]
ES Sword and pick crafting is different than default minetest.
Aikerum, Emerald, Ruby crystals go in usual spots to craft, the handle however, substitutes the sticks for an steel ingot.

		Ruby Tools Example:		R=Ruby  I=Steel_ingot #=Air

Pick Crafting:
				[RRR]
				[#I#]
				[#I#]

Sword Crafting:
				[#R#]
				[#R#]
				[#I#]



[STAIRS]
Stair crafting the following blocks will give you a stair or slab:
Aikerum
Dirt
Emerald
Infinium
Ruby

[ARMOR]
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





