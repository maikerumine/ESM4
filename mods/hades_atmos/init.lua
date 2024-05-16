local atmos = {}
atmos.handles = {}
atmos.current_atmos = {}

local ATMOS_LIST = {
	{ name = "hades_atmos_overworld_volcanic_day_1", gain = 0.08 },
	{ name = "hades_atmos_overworld_volcanic_day_2", gain = 0.3 },
	{ name = "hades_atmos_underworld", gain = 0.2 },
	{ name = "hades_atmos_overworld_volcanic_night_1", gain = 0.3 },
	{ name = "hades_atmos_overworld_volcanic_night_2", gain = 0.3 },
	{ name = "hades_atmos_wind", gain = 0.1 },
	{ name = "hades_atmos_underworld_deep", gain = 0.2 },
}
local ATMOS_NOTHING = 0
local ATMOS_DAY_1 = 1
local ATMOS_DAY_2 = 2
local ATMOS_UNDERWORLD = 3
local ATMOS_NIGHT_1 = 4
local ATMOS_NIGHT_2 = 5
local ATMOS_SKY = 6
local ATMOS_UNDERWORLD_DEEP = 7

local FADE = 0.05

-- Atmos status
local A_UNDETERMINED = 0
local A_PLAY = 1
local A_STOP = 2

local atmos_equal = function(atmos_no1, atmos_no2)
	if atmos_no1 == atmos_no2 then
		return true
	else
		if atmos_no1 == ATMOS_NIGHT_1 and atmos_no2 == ATMOS_NIGHT_2 then
			return true
		elseif atmos_no1 == ATMOS_NIGHT_2 and atmos_no2 == ATMOS_NIGHT_1 then
			return true
		elseif atmos_no1 == ATMOS_DAY_1 and atmos_no2 == ATMOS_DAY_2 then
			return true
		elseif atmos_no1 == ATMOS_DAY_2 and atmos_no2 == ATMOS_DAY_1 then
			return true
		end
	end
	return false
end

atmos.play_atmos = function(pname, atmos_no, fadein)
	if not atmos_no then
		atmos_no = 1
	end
	-- No-op if we already play this atmos
	if atmos_equal(atmos.current_atmos[pname], atmos_no) then
		return
	elseif atmos.current_atmos[pname] ~= nil then
		atmos.stop_atmos(pname, true)
	end
	minetest.log("info", "[hades_atmos] Playing atmos no. "..atmos_no.." for "..pname)
	local atm = ATMOS_LIST[atmos_no]
	if not atmos.handles[pname] then
		local fade
		if fadein then
			fade = FADE
		end
		local handle = minetest.sound_play(atm.name, {to_player=pname, gain=atm.gain, fade = fade, loop=true})
		atmos.handles[pname] = handle
		atmos.current_atmos[pname] = atmos_no
	end
	local player = minetest.get_player_by_name(pname)
	if not player then
		return
	end
end

atmos.stop_atmos = function(pname, fadeout)
	if atmos.handles[pname] then
		if fadeout then
			minetest.sound_fade(atmos.handles[pname], -FADE, 0.0)
		else
			minetest.sound_stop(atmos.handles[pname])
		end
		atmos.handles[pname] = nil
		atmos.current_atmos[pname] = nil
	end
	local player = minetest.get_player_by_name(pname)
	if not player then
		return
	end
end

local function update_atmos(player, fadein)
	local atm_no
	local y = player:get_pos().y
	if y > 1000 then
		-- Space atmos (silence)
	elseif y > 60 then
		-- Sky atmos
		atm_no = ATMOS_SKY
	elseif y < -1000 then
		-- Underworld atmos
		atm_no = ATMOS_UNDERWORLD_DEEP
	elseif y < -30 then
		atm_no = ATMOS_UNDERWORLD
	elseif minetest.get_timeofday() < 0.2291 or minetest.get_timeofday() > 0.7916 then
		-- Night time (ca. 19:00 to 5:30)
		atm_no = ATMOS_NIGHT_1 + math.random(0, 1)
	else
		-- Day time
		atm_no = ATMOS_DAY_1 + math.random(0, 1)
	end
	if atm_no == nil then
		atmos.stop_atmos(player:get_player_name(), true)
	else
		atmos.play_atmos(player:get_player_name(), atm_no, fadein)
	end
end

local function cyclic_update()
	for _, player in pairs(minetest.get_connected_players()) do
		update_atmos(player, true)
	end
	minetest.after(5, cyclic_update)
end

-- Mimimal start delay is required
minetest.after(0, cyclic_update)

minetest.register_on_joinplayer(function(player)
	update_atmos(player, false)
end)
