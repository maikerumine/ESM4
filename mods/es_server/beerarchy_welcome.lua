minetest.register_on_newplayer(function(player)
--minetest.register_on_joinplayer(function(player)
	if player then
		show_welcome_message(player)
	end
end)

minetest.register_chatcommand("welcome", {
	params = "",
	description = "Show welcome message.",
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		local pos = player:get_pos()
		if player then
			show_welcome_message(player)
			--minetest.sound_play("mcl_jukebox_track_8", {pos = pos, gain = 1})
			minetest.sound_play("hohoho", {pos = pos, gain = 1})
				--[[
				minetest.sound_play("SummertimeSadness", {
					to_player = name,
					--max_hear_distance = 16,
					gain = 1,
				})
			]]
			
			
		end
		return true
	end,
})

function show_welcome_message(player)
	local formspec =		"size[11,7.7]textarea[0.5,0.5;10.5,7;welcome:welcome_textarea;;"..
							"Welcome "..player:get_player_name().."!\n\n"..

							"This is the world known as Extreme Survival.\n\n"..

							" Chat commands:\n\n"..
							" /spawn to go to spawn\n"..
							" /space to go to space\n"..
							" /mine to go to -6000\n"..
							" /kill to die if you need to\n"..
							" /verse to see a random Bible verse\n"..
							" /status to see how laggy the server is\n"..
							" /radio to understand the radio feature\n"..
							" /help to see all minetest help functions\n"..
							" /welcome to see this page again\n"..
							" ===============================================\n\n"..
							
							"This server has a complicated crafting system in place."..
							"  Various crafts are shown in the craft guide, USE IT! "..
							"Most items and blocks in minetest game are craftable or a mob drop so"..
							" building anything is possible.\n\n"..
							
							" Rules are simple: Don't do any IRL illegal activity."..
							" Don't build over other people without permission."..
							" Do not cause harm to the server-  IF Cheating is slowing down server then stop. \n\n"..
							"Now for the fun stuff...\n\n"..

							" You start with garbage, use wisely."..
							" Use the craft guide for helpful tips."..
							" There is free papyrus at talamh's papyrus farm at spawn."..
							" Craft 9 bones or papyrus to make dirt."..
							" Cook coloured stone to get dye. "..
							" Wash coloured clay to get dye. "..
							" Create obsidian: Volcanic gravel at Y <= -1000 next to lava and water is within reach of 4 nodes"..
							" Use Furnace to grind metal tools into ingot.. "..
							" Use Lag's Ice or Muddy Block for farming watersource in space."..
							" Mobs drop plantlife, tools, cooked rats, and basic stuff."..
							" Large quanity ores are BELOW 11000 meters,"..
							" and there are random trees and colored blocks way out in the wild,"..
							" and finally, ice and snow there too!! \n\n"..
							
							" ORE GENERATION:\n"..
							" --There is a way to make a ore generator with special blocks--\n"..
							" Coal Ore  ~~~ +64m to -17654m \n"..
							" Tin Ore  ~~~ -64m to -17654m \n"..
							" Copper Ore  ~~~ -64m to -17654m \n"..
							" Iron Ore  ~~~ -128m to -17654m \n"..
							" Marble  ~~~ -200m to -12000m \n"..
							" Granite  ~~~ -300m to -12000m \n"..
							" Gold Ore  ~~~ -256m to -17654m \n"..
							" Mese Ore  ~~~ -512m to -17654m \n"..
							" Depleted Uranium  ~~~ -700m to -15000m \n"..
							" Diamond Ore  ~~~ -1024m to -17654m \n"..
							" Green Mese  ~~~ -1025m to -31000m \n"..
							" Strange Clay  ~~~ -1430m to -14551m \n"..
							" Colored Stone  ~~~ -2000m to -17650m \n"..
							" Mese Block  ~~~ -2048m to -17654m \n"..
							" Emerald Ore  ~~~ -1000m to -12000m \n"..
							" Ruby Ore  ~~~ -3000m to -12000m \n"..
							" Beedo Ore  ~~~ -3096m to -17654m \n"..
							" Aikerum Ore  ~~~ -4000m to -12000m \n"..
							" Infinium Ore  ~~~ -5000m to -12000m \n"..
							" Purpellium Ore  ~~~ -6000m to -12000m \n"..
							" Unobtainium Ore  ~~~ -7300m to -17654m \n"..
							" Bad Lava and Toxic Zone  ~~~ -14550m to -16500m \n"..
							" End of Ore Generation Zone  ~~~ -17655m to -17654m \n"..
							" End MAP Zone  ~~~ -20000m \n\n"..

							" C-BLOCKS (Colored Blocks):\n"..
							" Place two of an d item side by side then dye to make the colored blocks. \n"..
							" X | X | D \n"..
							" X=Block (wood, cobble, glass, etc.)  D=Dye. \n\n"..
							
							" MOBS:\n"..
							" Mobs here are very custom.  Maikerumine made sure of that! \n"..
							" Right click a friendly NPC for additional backup. \n"..
							" Right click a friendly NPC with gold lump or ingot for free food or tool. \n"..
							" Right click a small rat to pick up. \n"..
							" Most mobs have distinct spawning areas. \n"..
							" Most mobs will drop basic stuff. \n"..
							" Dungeon Master is an asshole, clear all cobble, and lava in area. \n"..
							" Dr. Cube has good drops. \n"..
							" Place a NyanCat Head for an automatic sentry turret. \n\n"..
							
							" FISHING:\n"..
							" Place a bait like worm or baitball to the left of your fishing rod. \n"..
							" Left-click fishing rod to cast. \n"..
							" Right-click fishing rod to catch. \n\n"..
							
							" SAFE TELEPORT:\n"..
							" Place a bed somewhere far away and sleep at night to set spawn. \n"..
							" Type /spawn to stand at 0,0,0.  Don't walk or this won't work. \n"..
							" Type /kill to teleport to your bed with your inventory. \n\n"..
							
							" TELEPORTS:\n"..
							" You teleport in the direction you are looking. \n"..
							" Place a sign down and name it. \n"..
							" Place teleport block next to sign to be named. \n"..
							" Now you can remove your sign and decorate. \n\n"..
							
							" OREMAGICINATOR BLOCK:\n"..
							" Is made IN WORLD. \n"..
							" It consists of 2 blocks. \n"..
							" Digging the result will result in LOADS of treasure. \n"..
							" Now you don't need to mine ever again.  :-P \n\n"..
							
							" HOPPERS MOD:\n"..
							" Is: Hoppers, chutes and sorters by: facedeer. \n"..
							" Based on jordan4ibanez's original hoppers mod, optimized by TenPlus1 "..
							" and FaceDeer, with chutes and sorters by FaceDeer \n\n"..
							
							"Hoppers are nodes that can transfer items to and from the inventories "..
							"of adjacent nodes. The wide end of a hopper is its -input- end, if there's "..
							"a chest or other compatible container it will take one item per second into "..
							"its own internal inventory. It will also draw in items that have been "..
							"dropped here. The narrow end of the hopper is its -output- end. It will "..
							"attempt to inject items into a compatible container located at its output end. ".. 
							"If there's no compatible container and the hopper's -eject- mode has been "..
							"enabled it will instead dump the items out into the world. \n\n"..

							"The location of a hopper relative to a furnace determines which inventory "..
							"slots the hopper will affect. A hopper directly above a furnace will inject ".. 
							"items into the furnace's input slot. A hopper to the furnace's side will inject "..
							"items into the furnace's fuel slot. A hopper below the furnace will pull "..
							"items out of the furnace's output slot. Hoppers cannot inject items into "..
							"inappropriate slots- non-fuel items will not be placed into the furnace's fuel "..
							"slot and non-cookable items will not be placed into the input slot. \n\n"..

							"Also included in this mod are a -chute- node and a -sorter- node. "..
							"These allow for items to be routed over short distances and distributed in "..
							"sophisticated ways. \n\n"..

							"A chute simply moves items into adjacent nodes. You'll need to use a hopper "..
							"or sorter to inject items into it to move along. A screwdriver is a useful tool "..
							"for getting chutes aimed correctly. \n\n"..

							"A sorter has two different outputs. Its inventory has a -filter- grid- place items "..
							"in this grid to set the sorter's filter. Items that match the filter will be sent "..
							"out the output with the large arrow and other items will be sent out the output with "..
							"the smaller arrow. A -filter all- option will cause the sorter to attempt to send -all- "..
							"items in the direction of the large arrow and then if that fails send them in the "..
							"direction of the smaller arrow. This allows you to have an -overflow- storage should "..
							"the sorter's primary target fill up, or when used in combination with a selective "..
							"container -like the furnace's fuel slot, for example- it allows the target inventory "..
							"to do the filtering for you. \n\n"..
							

							" This server is VERY custom, some ores are more dense at various depths. \n\n"..
							" Reminder: To /kill at 0,0,0 will send you and full inventory to bed spawn. \n\n"..
							
							"By continuing on this server, you agree to the rules and"..
							" that the administrator of this server is in no way"..
							" whatsoever liable for your actions or those of other players.\n"..
							"===============================================================\n\n"..
							"Good luck "..player:get_player_name()..", you will need it as you will struggle.\n\n"..

							"REMEMBER TO ALWAYS REPORT BUGS TO SPAWN MAILBOX WITH BOOK.\n"..
							"]button_exit[9,7;2,1;continue;Continue]"

	minetest.show_formspec(player:get_player_name(), "welcome:welcome", formspec)
	--minetest.sound_stop("SummertimeSadness")
end
