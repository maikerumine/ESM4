local current_modname = minetest.get_current_modname()

local util = {}

local formspec_name = current_modname..":confirm_awake"

local create_formspec = function(title, button)
    local formspec = {
        "formspec_version[4]",
        "size[4,2.375]",
        "label[0.375,0.75;", minetest.formspec_escape(title), "]",
        "button_exit[0.375,1.125;3.25,0.8;confirm;", minetest.formspec_escape(button), "]"
    }
    return table.concat(formspec, "")
end

util.show_formspec = function(player, title, button)
	local name = player:get_player_name()
    minetest.show_formspec(name, formspec_name, create_formspec(title, button))
end

util.get_formspec_name = function()
	return formspec_name
end

return util
