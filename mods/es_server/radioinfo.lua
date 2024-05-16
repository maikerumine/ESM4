minetest.register_on_newplayer(function(player)
--minetest.register_on_joinplayer(function(player)
	if player then
		show_radio_message(player)
	end
end)

minetest.register_chatcommand("radio", {
	params = "",
	description = "Show Radio help / info.",
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		local pos = player:getpos()
		if player then
			show_radio_message(player)
			minetest.sound_play("ham_radio_tuning", {pos = pos, gain = 1})	
		end
		return true
	end,
})

function show_radio_message(player)
	local formspec =		"size[11,7.7]textarea[0.5,0.5;10.5,7;welcome:welcome_textarea;;"..
							"Welcome "..player:get_player_name().."!\n\n"..

							"These are the HAM Radio operating instructions.\n\n"..


"## Transmitter\n\n"..
"\n\n"..
"Craft a transmitter and place it in the world. Right click on transmitter to open configuration dialog, then set frequency and RDS message.\n\n"..
"- Empty frequency turns transmitter off.\n\n"..
"- Transmitter information is displayed as info text when player points at it.\n\n"..
"- RDS message can be multiline. However, it is transmitted line by line.\n\n"..
"- RDS message and frequency can be set via digiline. Also, you can read transmitter configuration via digiline too.\n\n"..
"\n\n"..
"## Beacon\n\n"..
"\n\n"..
"Beacon is a simplified transmitter. After placement it automatically tunes on a random unoccupied frequency from predefined range. Beacon frequency range is determined by `beacon_frequency` setting.\n\n"..
"- Beacon frequency is displayed as info text when player points at it.\n\n"..
"\n\n"..
"## Receiver\n\n"..
"\n\n"..
"Handheld receiver is a wielded tool.\n\n"..
"\n\n"..
"- Left click opens configuration dialog to set frequency. Empty string turns receiver off.\n\n"..
"- Shift + left click toggles reception of RDS messages.\n\n"..
"\n\n"..
"When receiver is tuned to a frequency where at least one transmitter is present, HUD signal meter bar shows signal power. The signal power depends on distance and direction to the transmitter.\n\n"..
"\n\n"..
"If RDS reception is toggled on, the RDS messages from all transmitters on this frequency are enqueued and will be send one by one as a chat messages to the player with 10 seconds interval. When RDS message queue becomes empty, it refills and starts over again.\n\n"..
"\n\n"..
"## Stationary Receiver\n\n"..
"\n\n"..
"Right click on receiver opens configuration window to set frequency. Receiver displays RDS messages as infotext in the same way as handheld receiver. It does not have signal power meter.\n\n"..


"## Config\n\n"..
"\n\n"..
"See `config.lua` to see current parameters. You can edit this file to change them.\n\n"..
"\n\n"..
"Default parameters:\n\n"..
" - Frequency range: 0 - 9999999\n\n"..
" - Locked frequency range: 100000 - 9999999 \n\n"..
"    - Only one transmitter is allowed for the frequency in this range.\n\n"..
" - Beacon frequency range: 1000000 - 99999999 \n\n"..
"   - Beacon frequency is auto-assigned from this range. \n\n"..
"   - Please note, this range overlaps with locked frequency range to ensure each beacon receives unique frequency.\n\n"..
" - RDS interval: 10 seconds\n\n"..
"   - This setting affects handheld receivers only. The interval should be high enough to avoid spamming chat with repeated messages.\n\n"..
"   - RDS interval for stationary receiver is 5 seconds and can't be changed.\n\n"..
"\n\n"..
"## What's next?\n\n"..
"\n\n"..
"- Place beacons or transmitters anywhere in the world, give frequency to other players and let them search for them\n\n"..
"- Pick a frequency which all players can use for their announcements to organize radio bulletin board\n\n"..
"- Operate your transmitters with digiline to receive notification on radio\n\n"..
"- ???\n\n"..
"- PROFIT\n\n"..
"\n\n"..
"## Author and license\n\n"..
"\n\n"..
"(c) techniX 2019\n\n"..
"\n\n"..
"Source code: MIT\n\n"..
"\n\n"..
"Textures: CC BY-SA 3.0\n\n"..
"\n\n"..
"Sounds: cut from 'G32-20-Tuning Radio' by craigsmith, CC 0\n\n"..

							
							"===============================================================\n\n"..
							"Good luck "..player:get_player_name()..", happy listening!\n\n"..

							"73\n"..
							"]button_exit[9,7;2,1;continue;Continue]"

	minetest.show_formspec(player:get_player_name(), "welcome:welcome", formspec)

end
