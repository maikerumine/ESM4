return {
	ignore = {
		singleplayer = true,
		ADMIN = true,
	},
	allow_chat_command = true,
	chat_output = true,
	afk_inactivity_time = 300,
	
	-- set 0 seconds to disable kick feature
	kick_inactivity_time = 3600,
	kick_inactivity_reason = '',
	
	formspec = {
		title = "Hey you, you're finally awake",
		button = "Yes I am!",
	},
}
