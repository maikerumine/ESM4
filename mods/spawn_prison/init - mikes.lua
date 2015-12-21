
spawn_prison = {}
spawn_prison.pos = {x=0, y=3, z=0}

if minetest.setting_get_pos("static_spawnpoint") then
    spawn_prison.pos = minetest.setting_get_pos("static_spawnpoint")
end

minetest.register_chatcommand("spawn", {
    description = "Teleport you to spawn point.",
    func = function(name)
        local player = minetest.get_player_by_name(name)
        if player == nil then
            -- just a check to prevent the server crashing
            return false
        end
        


	local pos = player:getpos()
        	if pos.x>-20 and pos.x<20 and pos.y>-20 and pos.z>-20 and pos.z<20 
			then
			minetest.chat_send_player(name, "YOU MUST MOVE FARTHER FROM SPAWN!")
			else
        	if pos.x<-47 and pos.x>-255 and pos.y>-20 and pos.z<1078 and pos.z>820
			then
			minetest.chat_send_player(name, "YOU MUST CLIMB OUT!")

        else
            player:setpos(spawn_prison.pos)
            minetest.chat_send_player(name, "Teleported to spawn!")
		end        
		end
    end,
})


