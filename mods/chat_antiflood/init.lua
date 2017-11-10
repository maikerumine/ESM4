-- Minetest 0.4 mod: chat_antiflood
-- prevent players from posting too much text to chat
--
-- See README.txt for licensing and other information.

chat_antiflood={
	limit=10000,
    limit_warn=500,
    limit_spaces="                                                            ",
	list_of_limits = {},
    list_of_ignores = {},   -- flooder with players who want to ignore him
	formspec="size[6,3]"..
		"label[1,0;-- Flood limit warning --]"..
		"button_exit[2,2;2,.5;chat_antiflood_submit;OK]"
}

chat_antiflood.check_message = function(name, message)
    local checkingmessage=string.lower( name.." "..message .." " )
    local flooded = 0

    if chat_antiflood.list_of_limits[name]==nil then
        chat_antiflood.list_of_limits[name]=0
    end
    chat_antiflood.list_of_limits[name]=chat_antiflood.list_of_limits[name]+string.len(message)

    if chat_antiflood.list_of_limits[name]>chat_antiflood.limit then
        flooded = 1
    end

    --if (string.match(message, ".*\n.*") ~= nil) or ( string.match(message, ".*\r.*") ~= nil ) then
    if
        string.find(message, "\n", 1, true) ~=nil or
        string.find(message, "\r", 1, true) ~=nil
    then
        flooded = 2
    end
    if string.len(message)>chat_antiflood.limit_warn then
        flooded = 2
    end
    if string.find(message, chat_antiflood.limit_spaces, 1, true) ~=nil  then
        flooded = 2
    end

    return flooded
end


minetest.register_on_player_receive_fields(
	function(player,formname,fields)
		if formname=="chat_antiflood.form" then
			if fields.chat_antiflood_submit then
				return
			else
				minetest.show_formspec(
					player:get_player_name(), formname,
					chat_antiflood.formspec
				)
			end
		end
	end
)

minetest.register_on_chat_message(function(name, message)
    local flooded = chat_antiflood.check_message(name, message)

    if flooded == 2 then
        minetest.log("error", "Player "..name.." warned for chat tampering")
        minetest.chat_send_all("*Player <"..name..">-- Chat tampering warning --" )
        return true -- No more proceeding of message
    end

    if flooded == 1 then
        minetest.show_formspec(
            name,
            "chat_antiflood.form",
            chat_antiflood.formspec
        )
        return -- Processing of message will continue
    end

    return -- Processing of message will continue
end)

if minetest.chatcommands["me"] then
    local old_command = minetest.chatcommands["me"].func
    minetest.chatcommands["me"].func = function(name, param)
        local sendto, message = param:match("^(%S+)%s(.+)$")
        if sendto and message then
            local flooded = chat_antiflood.check_message(name, message)

            if flooded == 2 then
                minetest.log("error", "Player "..name.." warned for chat tampering")
                return false, "-- Chat tampering warning --" -- Command cancelled, send feedback to player
            end

            if flooded == 1 then
                minetest.show_formspec(
                    name,
                    "chat_antiflood.form",
                    chat_antiflood.formspec
                )
                return old_command(name, param) -- Processing of message will continue
            end

            return old_command(name, param)
        end
    end
end

if minetest.chatcommands["msg"] then
    local old_command = minetest.chatcommands["msg"].func
    minetest.chatcommands["msg"].func = function(name, param)
        local sendto, message = param:match("^(%S+)%s(.+)$")
        if sendto and message then
            local flooded = chat_antiflood.check_message(name, message)

            if flooded == 2 then
                minetest.log("error", "Player "..name.." warned for chat tampering")
                return false, "-- Chat tampering warning --" -- Command cancelled, send feedback to player
            end

            if chat_antiflood.list_of_ignores[name] and chat_antiflood.list_of_ignores[name][sendto] then

                minetest.log("error", "Player "..name.." ignored by "..sendto)
                return false, false -- Command cancelled, no feedback to player
            end

            if flooded == 1 then
                minetest.show_formspec(
                    name,
                    "chat_antiflood.form",
                    chat_antiflood.formspec
                )
                return old_command(name, param) -- Processing of message will continue
            end

            return old_command(name, param)
        end
    end
end

core.register_chatcommand("ignore", {
    params = "<name>",
	description = "Ignore PM's from certain players",
	func = function(name, param)
        local flooder = param:sub(1, 20)
        if not chat_antiflood.list_of_ignores[flooder] then
            chat_antiflood.list_of_ignores[flooder] = {}
        end

		if minetest.player_exists(flooder) and chat_antiflood.list_of_ignores[flooder][name] then
            chat_antiflood.list_of_ignores[flooder][name] = nil
			return true, "Unignore player "..flooder
		elseif minetest.player_exists(flooder) then
            chat_antiflood.list_of_ignores[flooder][name] = 1
			return true, "Ignore player "..flooder
        else
            return false, "Player not found "..flooder
		end
	end,
})
