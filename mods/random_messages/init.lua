--[[
RandomMessages mod by arsdragonfly.
arsdragonfly@gmail.com
6/19/2013
--]]
--Time between two subsequent messages.
local MESSAGE_INTERVAL = 0
-- Added default messages file
local default_messages_file = "random_messages"

math.randomseed(os.time())

random_messages = {}
random_messages.messages = {} --This table contains all messages.

function table.count( t )
	local i = 0
	for k in pairs( t ) do i = i + 1 end
	return i
end

function table.random( t )
	local rk = math.random( 1, table.count( t ) )
	local i = 1
	for k, v in pairs( t ) do
		if ( i == rk ) then return v, k end
		i = i + 1
	end
end

function random_messages.initialize() --Set the interval in minetest.conf.
	minetest.settings:set("random_messages_interval",80)
	minetest.settings:save();
	return 80
end

function random_messages.set_interval() --Read the interval from minetest.conf(set it if it doesn'st exist)
	MESSAGE_INTERVAL = tonumber(minetest.settings:get("random_messages_interval")) or random_messages.initialize()
end

function random_messages.check_params(name,func,params)
	local stat,msg = func(params)
	if not stat then
		minetest.chat_send_player(name,msg)
		return false
	end
	return true
end

function random_messages.read_messages()
	local line_number = 1
	-- define input 
	local input = io.open(minetest.get_worldpath().."/random_messages","r")
	-- no input file found
	if not input then
		-- look for default file
		local default_input = io.open(minetest.get_modpath("random_messages").."/"..default_messages_file,"r")
		local output = io.open(minetest.get_worldpath().."/random_messages","w")
		if not default_input then
			-- blame the admin if not found
			output:write("Blame the server admin! He/She has probably not edited the random messages yet.\n")
			output:write("Tell your dumb admin that this line is in (worldpath)/random_messages \n")
		else
			-- or write default_input content in worldpath message file
			local content = default_input:read("*all")
			output:write(content)
		end
		io.close(output)
		io.close(default_input)
		input = io.open(minetest.get_worldpath().."/random_messages","r")
	end
	-- we should have input by now, so lets read it
	for line in input:lines() do
		random_messages.messages[line_number] = line
		line_number = line_number + 1
	end
	io.close(input)
end
--[[
function random_messages.display_message(message_number)
	local msg = random_messages.messages[message_number] or message_number
	if msg then
		minetest.chat_send_all(msg)
	end
end

function random_messages.show_message()
	random_messages.display_message(table.random(random_messages.messages))
end
]]

--=======
--BEERHOLDER CODE HERE
function random_messages.display_message(message_number)
	local msg = random_messages.messages[message_number] or message_number
	if msg then
--		minetest.chat_send_all(msg)
		for _,player in ipairs(minetest.get_connected_players()) do
			local target = player:get_player_name()
					minetest.chat_send_player(target, string.char(0x1b).."(c@#22ddff)"..
													  string.format("[<%s>] %s", "ESM TIP", msg))	
		end
	end
end

function random_messages.show_message()
	local msg = string.char(0x1b).."(c@#00ffbb)"..table.random(random_messages.messages)
	random_messages.display_message(msg)
end
--=======

function random_messages.list_messages()
	local str = ""
	for k,v in pairs(random_messages.messages) do
		str = str .. k .. " | " .. v .. "\n"
	end
	return str
end

function random_messages.remove_message(k)
	table.remove(random_messages.messages,k)
	random_messages.save_messages()
end

function random_messages.add_message(t)
	table.insert(random_messages.messages,table.concat(t," ",2))
	random_messages.save_messages()
end

function random_messages.save_messages()
		local output = io.open(minetest.get_worldpath().."/random_messages","w")
		for k,v in pairs(random_messages.messages) do
			output:write(v .. "\n")
		end
		io.close(output)
end

--When server starts:
random_messages.set_interval()
random_messages.read_messages()

local TIMER = 0
minetest.register_globalstep(function(dtime)
	TIMER = TIMER + dtime;
	if TIMER > MESSAGE_INTERVAL then
		random_messages.show_message()
		TIMER = 0
	end
end)

local register_chatcommand_table = {
	params = "viewmessages | removemessage <number> | addmessage <number>",
	privs = {server = true},
	description = "View and/or alter the server's random messages",
	func = function(name,param)
		local t = string.split(param, " ")
		if t[1] == "viewmessages" then
			minetest.chat_send_player(name,random_messages.list_messages())
		elseif t[1] == "removemessage" then
			if not random_messages.check_params(
			name,
			function (params)
				if not tonumber(params[2]) or
				random_messages.messages[tonumber(params[2])] == nil then
					return false,"ERROR: No such message."
				end
				return true
			end,
			t) then return end
			random_messages.remove_message(t[2])
		elseif t[1] == "addmessage" then
			if not t[2] then
				minetest.chat_send_player(name,"ERROR: No message.")
			else
				random_messages.add_message(t)
			end
		else
				minetest.chat_send_player(name,"ERROR: Invalid command.")
		end
	end
}

minetest.register_chatcommand("random_messages", register_chatcommand_table)
minetest.register_chatcommand("rmessages", register_chatcommand_table)
