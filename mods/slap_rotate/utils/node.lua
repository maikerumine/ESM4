local util = {}

util.can_interact = function(user, pos)
	local node = minetest.get_node(pos)
	local ndef = minetest.registered_nodes[node.name]
	if not ndef then
		return false
	end

	local player_name = user and user:get_player_name() or ""
	if minetest.is_protected(pos, player_name) then
		minetest.record_protection_violation(pos, player_name)
		return false
	end
	return true
end

return util
