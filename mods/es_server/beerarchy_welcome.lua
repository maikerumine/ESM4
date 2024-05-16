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
		local pos = player:getpos()
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
							" Cook coloured stone to get dye. (crushing furnace is faster)"..
							" Wash coloured clay to get dye. "..
							" Create obsidian: Volcanic gravel at Y <= -1000 next to lava and water is within reach of 4 nodes"..
							" Use Crushing Furnace to grind metal tools into ingot.. "..
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
							" End MAP Zone  ~~~ -20000m \n"..
							
							" MOBS:\n"..
							" Mobs here are very custom.  Maikerumine made sure of that! \n"..
							" Right click a friendly NPC for additional backup. \n"..
							" Right click a friendly NPC with gold lump for free food or tool. \n"..
							" Right click a small rat to pick up. \n"..
							" Most mobs have distinct spawning areas. \n"..
							" Most mobs will drop basic stuff. \n"..
							" Dungeon Master is an asshole, clear all cobble, and lava in area. \n"..
							" Dr. Cube has good drops. \n"..
							" Place a NyanCat Head for an automatic sentry turret. \n"..

							" This server is VERY custom, some ores are more dense at various depths. \n\n"..
							" To /kill at 0,0,0 will send you and full inventory to bed spawn. \n\n"..
							
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
