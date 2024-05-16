local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local mod_util = dofile(path.."/utils/mod.lua")
local mod = mod_util.import.from(current_modname)
mod.players = {}

local controller = dofile(path.."/controller/cone.lua")
local formspec_util = dofile(path.."/utils/formspec.lua")

local get_initial_state = function(player)
	return {
		timer = 0,
		afk = false,
		pos = player:get_pos(),
		look_dir = player:get_look_dir()
	}
end

minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	mod.players[name] = get_initial_state(player)
end)

local is_afk = function(player)
	local name = player:get_player_name()
	return mod.players[name].afk
end

local set_back = function(player)
	local name = player:get_player_name()
	mod.players[name].afk = false
	mod.players[name].timer = 0
	
	controller.remove(player)
	
	if mod.config.chat_output then
		minetest.chat_send_all("Player "..name.." is back")
	end
end

minetest.register_on_chat_message(function(name, message)
	local player = minetest.get_player_by_name(name)
	if not player then
		return
	end
	
	if is_afk(player) then
		set_back(player)
	else
		mod.players[name].timer = 0
	end
end)

minetest.register_on_dieplayer(function(player, reason)
	if is_afk(player) then
		controller.remove(player)
	end
end)

minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
	mod.players[name] = nil
	
	controller.remove(player)
end)

local formspec_name = formspec_util.get_formspec_name()

minetest.register_on_player_receive_fields(function(player, formname, fields)
    if formname ~= formspec_name then
        return
    end
    set_back(player)
end)

local afk_handler = function(player, moving)
	local name = player:get_player_name()
	mod.players[name].afk = true
	
	if not moving then
		local anim_table = player_api.get_animation(player)
		if anim_table.animation == "stand" then
			controller.attach(player)
		end
	end
	
	if mod.config.chat_output then
		minetest.chat_send_all("Player "..name.." is AFK")
	end
	
	formspec_util.show_formspec(player, mod.config.formspec.title,
		mod.config.formspec.button)
end

local set_moving_afk = function(player)
	afk_handler(player, true)
end

local set_afk = function(player)
	afk_handler(player, false)
end

minetest.register_chatcommand("afk", {
    privs = {},
    func = function(name, param)
		local player = minetest.get_player_by_name(name)
		if player then
			set_afk(player)
		end
        return true
    end,
})

local activity_state = {
	inactive = 0,
	active = 1,
	moving = 2,
}

local get_activity_state = function(player)
	if player:get_player_control_bits() ~= 0 then
		return activity_state.active
	end
	
	local dir = player:get_look_dir()
	local name = player:get_player_name()
	if vector.distance(dir, mod.players[name].look_dir) ~= 0 then
		mod.players[name].look_dir = dir
		return activity_state.active
	end
	
	local pos = player:get_pos()
	if vector.distance(pos, mod.players[name].pos) ~= 0 then
		-- falling, drowning, attached to entity, etc.
		mod.players[name].pos = pos
		return activity_state.moving
	end
	
	return activity_state.inactive
end

local second_counter = 0
local get_elapsed_seconds = function(dtime)
	local elapsed_time = second_counter + dtime
	second_counter = elapsed_time % 1
	return math.floor(elapsed_time)
end

minetest.register_globalstep(function(dtime)
	local connected_players = minetest.get_connected_players()
	local seconds = get_elapsed_seconds(dtime)
	
	if seconds == 0 then
		return
	end
	
	for _,player in ipairs(connected_players) do
		local name = player:get_player_name()
		if not mod.config.ignore[name] then
			local state = get_activity_state(player)
			if state == activity_state.active then
				mod.players[name].timer = 0
				if is_afk(player) then
					set_back(player)
				end
			elseif not mod.players[name].afk then
				mod.players[name].timer = mod.players[name].timer + seconds
				if mod.players[name].timer >= mod.config.afk_inactivity_time then
					if state == activity_state.moving then
						set_moving_afk(player)
					else
						set_afk(player)
					end
				end
			elseif mod.config.kick_inactivity_time > 0 then
				mod.players[name].timer = mod.players[name].timer + seconds
				if mod.players[name].timer >= mod.config.kick_inactivity_time then
					local reason = mod.config.kick_inactivity_reason or ''
					reason = reason ~= '' and reason or "Inactivity is reason, you are still welcome :)"
					minetest.kick_player(name, reason)
				end
			end
		end
	end
end)
