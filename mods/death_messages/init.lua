--[[
death_messages - A Minetest mod which sends a chat message when a player dies.
Copyright (C) 2016  EvergreenTree

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
--]]
--Carbone death coords
--License of media (textures and sounds) From carbone subgame
--------------------------------------
--mods/default/sounds/player_death.ogg: from OpenArena – GNU GPL v2.
-----------------------------------------------------------------------------------------------
local title = "Death Messages"
local version = "0.1.2"
local mname = "death_messages"
-----------------------------------------------------------------------------------------------
dofile(minetest.get_modpath("death_messages").."/settings.txt")
-----------------------------------------------------------------------------------------------

-- A table of quips for death messages.  The first item in each sub table is the
-- default message used when RANDOM_MESSAGES is disabled.



local messages = {}

-- Toxic death messages
messages.toxic = {
	" melted into a ball of radioactivity.",
	" thought chemical waste was cool.",
	" melted into a jittering pile of flesh.",
	" couldn't resist that warm glow of toxic water.",
	" dug straight down.",
	" went into the toxic curtain.",
	" thought it was a toxic-tub.",
	" is radioactive.",
	" didn't know toxic water was radioactive."
}

-- Lava death messages
messages.lava = {
	" melted into a ball of fire.",
	" thought lava was cool.",
	" melted into a ball of fire.",
	" couldn't resist that warm glow of lava.",
	" dug straight down.",
	" went into the lava curtain.",
	" thought it was a hottub.",
	" is melted.",
	" didn't know lava was hot."
}

-- Drowning death messages
messages.water = {
	" drowned.",
	" ran out of air.",
	" failed at swimming lessons.",
	" tried to impersonate an anchor.",
	" forgot he wasn't a fish.",
	" swam poorly.",
	" danced with the riptide.",
	" forgot their floaties.",
	" fell out the boat.",
	" dropped their tanks.",
	" got the bends.",
}

-- Burning death messages
messages.fire = {
	" burned to a crisp.",
	" got a little too warm.",
	" got too close to the camp fire.",
	" just got roasted, hotdog style.",
	" got burned up. More light that way.",
	" BBQ d.",
	" is well done.",
	" cooking rather nicely.",
	" has got the hot foot.",
	" ignighted.",
}

-- Other death messages
messages.other = {
	" died.",
	" did something fatal.",
	" gave up on life.",
	" is somewhat dead now.",
	" passed out -permanently.",
	" kinda screwed up.",
	" couldn't fight very well.",
	" got 0wn3d.",
	" got SMOKED.",
	" got hurted by Oerkki.",
	" got gotten.",
	" got learned.",
	" got taught.",
	" got schooled.",
	" got Norrised.",
	" got Rick Rolled.",
	" got hit up.",
	" got gotted.",
	" got fixed.",
	" got educated."
}

-- PVP Messages
messages.pvp = {
	" fisted",
	" sliced up",
	" rekt",
	" punched",
	" hacked",
	" skewered",
	" blasted",
	" tickled",
	" gotten",
	" sword checked",
	" turned into a jittering pile of flesh",
	" buried",
	" served",
	" poked",
	" attacked viciously",
	" busted up",
	" schooled",
	" told",
	" learned",
	" chopped up",
	" deader than ded ded ded",
	" CHOSEN to be the ONE",
	" all kinds of messed up",
	" smoked like a Neuport",
	" hurted",
	" ballistic-ed",
	" jostled",
	" EZ'd",
	" E to the Z d",
	" Norris d",
	" gotted",
	" acked",
	" written up",
	" ticketed",
	" warned",
	" educated",
	" funded",
	" painted",
	" cleaned",
	" whooped",
	" K.T.F.O.",
	" punished",
	" edited",
	" hasta la vista d",
	" Covid-19'd",
	" taxed",
	" pressed",
	" flexed",
	" flossed",
	" choked out"
}

-- Player Messages
messages.player = {
	" for talking smack about thier mother.",
	" for cheating at Tic-Tac-Toe.",
	" for being a stinky poop butt.",
	" for letting Baggins grief.",
	" because it felt like the right thing to do.",
	" for spilling milk.",
	" for wearing a n00b skin.",
	" for not being good at PVP.",
	" because they are a n00b.",
	" for reasons uncertain.",
	" for reasons.",
	" for exploring in Oerkkii territory.",
	" for hugging a mummy.",
	" for hugging a stonemonster.",
	" for chatting.",
	" with the quickness.",
	" while texting.",
	" while being AFK.",
	" while eating.",
	" while picking a greasy booger.",
	" while mining.",
	" while walking.",
	" while running.",
	" while jumping.",
	" while climbing.",
	" while swimming."
}

-- MOB After Messages
messages.mobs = {
	" and was eaten with a gurgling growl.",
	" then was cooked for dinner.",
	" then went to the supermarket.",
	" badly.",
	" terribly.",
	" horribly.",
	" with the quickness.",
	" rather nicely.",
	" without warning.",
	" because that is the right thing to do.",
	" for not paying attention.",
	" with good intentions.",
	" like a boss.",
	" in a haphazard way.",
	" that sparkles in the twilight with that evil grin.",
	" and now is covered by blood.",
	" so swiftly, that not even Chuck Norris could block.",
	" for talking smack about Oerkkii's mother.",
	" and grimmaced wryly.",
	" hoping Baggins could help with backup.",
	" hoping RND could help with backup.",
	" hoping 843jdc could help with backup.",
	" hoping disableclouds could help with backup.",
	" hoping AspireMint could help with backup.",
	" hoping tring could help with backup.",
	" hoping maikerumine could help with backup.",
	" hoping asia14 could help with backup.",
	" hoping talamh could help with backup.",
	" hoping Explorer could help with backup.",
	" hoping Joker-_- could help with backup.",
	" hoping sorcerykid could help with backup.",
	" hoping stoneminer could help with backup.",
	" hoping gold_digger could help with backup.",
	" hoping ack could help with backup.",
	" hoping jtee could help with backup.",
	" hoping kumma could help with backup.",
	" hoping CobbleGuy could help with backup.",
	" hoping BeerHolder could help with backup.",
	" hoping parasite could help with backup.",
	" hoping Erstazi could help with backup.",
	" hoping Master_CJ could help with backup.",
	" hoping Arisha_L could help with backup.",
	" hoping aidenminer could help with backup.",
	" hoping sokomine could help with backup.",
	" hoping ultimate_noob could help with backup.",
	" hoping UltimateNoob could help with backup.",
	" hoping AndDT could help with backup.",
	" hoping lag01 could help with backup.",
	" hoping anotherbrick could help with backup.",
	" hoping sss could help with backup.",
	" hoping shammmmmm could help with backup.",
	" hoping BlueFireUn could help with backup.",
	" hoping RedFireUn could help with backup.",
	" hoping GoldFireUn could help with backup.",
	" hoping Cat-Boy could help with backup.",
	" hoping 1248 could help with backup.",
	" hoping Wuzzy could help with backup.",
	" hoping barsik could help with backup.",
	" hoping ngregor could help with backup.",
	" hoping krestonosec could help with backup.",
	" hoping amygos could help with backup.",
	" hoping clix could help with backup.",
	" hoping cleanerpro could help with backup.",
	" hoping polopro could help with backup.",
	" hoping sasha2 could help with backup.",
	" hoping Evil could help with backup.",
	" hoping poop could help with backup.",
	" hoping lolswag could help with backup.",
	" hoping Zorg could help with backup.",
	" hoping you could help with backup.",
	" hoping them could help with backup.",
	" thinking they were playing on TOP could help with backup.",
	" hoping 1337 could help with backup.",
	" hoping Fixer could help with backup.",
	" hoping SerVesta could help with backup.",
	" hoping IMS_BULLDOGS could help with backup.",
	" hoping publicworks could help with backup.",
	" hoping Takahara could help with backup.",
	" hoping twoelk could help with backup.",
	" hoping Pitriss could help with backup.",
	" hoping Kilarin could help with backup.",
	" hoping Celeron55 could help with backup.",
	" hoping Calinou could help with backup.",
	" hoping PeterKabin could help with backup.",
	" hoping Megurine could help with backup.",
	" hoping bitsflashing could help with backup.",
	" hoping IPv6 could help with backup.",
	" hoping GarulfoDG could help with backup.",
	" hoping Gael de Sailly could help with backup.",
	" hoping botumin could help with backup.",
	" hoping BBmine could help with backup.",
	" hoping Dragonop could help with backup.",
	" hoping HeavyTruth could help with backup.",
	" hoping TemaX could help with backup.",
	" hoping The_deaths could help with backup.",
	" hoping edub could help with backup.",
	" hoping Andrey01 could help with backup.",
	" hoping Cpt_mcg could help with backup.",
	" hoping why could help with backup.",
	" hoping Gordini could help with backup.",
	" hoping iisu could help with backup.",
	" hoping ExeterDad could help with backup.",
	" hoping Kibbie could help with backup.",
	" hoping Putney34 could help with backup.",
	" hoping vanek2 could help with backup.",
	" hoping sneke could help with backup.",
	" hoping edd could help with backup.",
	" hoping suckerforpain could help with backup.",
	" hoping igoreg2005 could help with backup.",
	" hoping Stix could help with backup.",
	" hoping Zayneb could help with backup.",
	" hoping GreenDiamond could help with backup.",
	" hoping JNEITRONS could help with backup.",
	" hoping Enrikoo could help with backup.",
	" hoping SaKeL could help with backup.",
	" hoping PolySaken could help with backup.",
	" hoping Lone_Wolf could help with backup.",
	" hoping paramat could help with backup.",
	" hoping garywhite could help with backup.",
	" hoping burli could help with backup.",
	" hoping jackspades could help with backup.",
	" hoping Sirvoid could help with backup.",
	" hoping ManElevation could help with backup.",
	" hoping Minetest Sam could help with backup.",
	" hoping SolDeNoche could help with backup.",
	" hoping TheMiner could help with backup.",
	" hoping PrairieSky could help with backup.",
	" hoping LaserJet could help with backup.",
	" hoping jordan4ibanez could help with backup.",
	" hoping DragonsVolcanoDance could help with backup.",
	" hoping ABJ could help with backup.",
	" hoping New_Player could help with backup.",
	" hoping irishka could help with backup.",
	" hoping Briet could help with backup.",
	" hoping Emerald could help with backup.",
	" hoping Lupercus could help with backup.",
	" hoping Joshoua could help with backup.",
	" thinking they were playing on 0b0t.",
	" thinking they were playing on 1b1t.",
	" thinking they were playing on 2b2t.",
	" thinking they were playing on 3b3t.",
	" thinking they were playing on 4b4t.",
	" thinking they were playing on 5b5t.  The best Minecraft server BTW.",
	" thinking they were playing on 6b6t.",
	" thinking they were playing on 7b7t.",
	" thinking they were playing on 8b8t.",
	" thinking they were playing on 9b9t.",
	" thinking they were playing on 10b10t.",
	" thinking they were playing on #b#t."
}

function get_message(mtype)
	if RANDOM_MESSAGES then
		return messages[mtype][math.random(1, #messages[mtype])]
	else
		return messages[1] -- 1 is the index for the non-random message
	end
end


minetest.register_on_dieplayer(function(player, hitter)

		local player_name = player:get_player_name()
		local node = minetest.registered_nodes[minetest.get_node(player:get_pos()).name]
		local pos = player:get_pos()
		local death = {x=0, y=3, z=0}
		minetest.sound_play("player_death", {pos = pos, gain = 1})
		pos.x = math.floor(pos.x + 0.5)
		pos.y = math.floor(pos.y + 0.5)
		pos.z = math.floor(pos.z + 0.5)
		local param2 = minetest.dir_to_facedir(player:get_look_dir())
		local player_name = player:get_player_name()
		

		if minetest.is_singleplayer() then
			player_name = "You"
		end
		
			
		-- Death by lava
		if node.name == "default:lava_source" then
			minetest.chat_send_all(
			string.char(0x1b).."(c@#ffffff)"..player_name .. 
			string.char(0x1b).."(c@#ff0000)"..get_message("lava"))
			if player:get_hp() == 0 then end
			--player:setpos(death)
		elseif node.name == "default:lava_flowing"  then
			minetest.chat_send_all(
			string.char(0x1b).."(c@#ffffff)"..player_name .. 
			string.char(0x1b).."(c@#ff0000)"..get_message("lava"))
			if player:get_hp() == 0 then end
			--player:setpos(death)
		-- Death by drowning
		elseif player:get_breath() == 0 then
			minetest.chat_send_all(
			string.char(0x1b).."(c@#ffffff)"..player_name .. 
			string.char(0x1b).."(c@#ff0000)"..get_message("water"))
			if player:get_hp() == 0 then end
			--player:setpos(death)
		-- Death by fire
		elseif node.name == "fire:basic_flame" then
			minetest.chat_send_all(
			string.char(0x1b).."(c@#ffffff)"..player_name .. 
			string.char(0x1b).."(c@#ff0000)"..get_message("fire"))
			if player:get_hp() == 0 then end
			--player:setpos(death)
		-- Death by Toxic water
		elseif node.name == "es:toxic_water_source" or node.name == "es:toxic_water_flowing" or node.name == "groups:radioactive" then
			minetest.chat_send_all(
			string.char(0x1b).."(c@#ffffff)"..player_name .. 
			string.char(0x1b).."(c@#ff0000)"..get_message("toxic"))
			minetest.after(1.5, function()  return
				player:setpos(death)  --gamebreaker?
			end)
			if player:get_hp() == 0 then return end
			--player:setpos(death)

		-- Death by something else
		--================================
		--================================
		--================================
		--================================
		--================================
		else
			minetest.chat_send_all(
			string.char(0x1b).."(c@#ffffff)"..player_name .. 
			string.char(0x1b).."(c@#ff0000)"..get_message("other"))  --toospammy
			minetest.after(1.5, function()  return
				--player:setpos(death)  --gamebreaker?
			end)
			if player:get_hp() == 0 then end
		--player:setpos(death)
		--minetest.sound_play("pacmine_death", { gain = 0.35})  NOPE!!!	
		end

--=====================
--minetest.chat_send_player(player,"Not a valid axis. Valid options are X, Y or Z.")
	
--minetest.chat_send_player(name, "Please wait " .. spawn_limit_max-(t-t0) .. "s before using /spawn again");	
--minetest.chat_send_player(name,string.char(0x1b).."(c@#000000)".."[DEATH COORDINATES] "..string.char(0x1b).."(c@#ffffff)" .. player_name .. string.char(0x1b).."(c@#000000)".." left a corpse full of diamonds here: " ..minetest.pos_to_string(pos) .. string.char(0x1b).."(c@#aaaaaa)".." Come and get them before they are found!!")
--=====================

		--minetest.chat_send_all(string.char(0x1b)..
		--minetest.chat_send_all(player_name, "Died " );
		minetest.chat_send_player(player_name, string.char(0x1b)..
		"(c@#000000)"..
		"[DEATH COORDINATES] "..
		string.char(0x1b)..
		"(c@#ffffff)" ..
		player_name ..
		string.char(0x1b)..
		"(c@#FFAADD)"..
		--" died here: 6900, -420, 1337" ..
		minetest.pos_to_string(pos) ..
		string.char(0x1b)..
		"(c@#aaaaaa)"..
		" Bones with some loot will expire in 12 minutes.")
		
--=====================
--=====================
	end)--after
	


--=====================
--=====================
--=====================
--bigfoot code
-- bigfoot547's death messages
-- hacked by maikerumine

-- get tool/item when  hitting   get_name()  returns item name (e.g. "default:stone")

minetest.register_on_punchplayer(function(player, hitter)

	
--	local pos = player:get_pos()
--	local death = {x=0, y=23, z=-1.5}
  if not (player or hitter) then
  return false   end
  if not hitter:get_player_name() == "" then
     return false  end
  minetest.after(0, function(holding)
 local hp = 1
      if player:get_hp() >= 0.01 and hitter:get_player_name() ~= "" and holding == hitter:get_wielded_item() ~= "" then
			
			local holding = hitter:get_wielded_item() 
				if holding:to_string() ~= "" then  
				local weap = holding:get_name(holding:get_name())
					--if holding and player:get_hp() == 0 then  
					minetest.chat_send_all(
					string.char(0x1b).."(c@#ffffff)"..player:get_player_name()..
					string.char(0x1b).."(c@#ff0000)".." was"..
					string.char(0x1b).."(c@#ff0000)"..get_message("pvp")..
					string.char(0x1b).."(c@#ff0000)".." by "..
					string.char(0x1b).."(c@#ffffff)"..hitter:get_player_name()..
					string.char(0x1b).."(c@#ffffff)".." with "..
					string.char(0x1b).."(c@#00bbff)"..weap..
					string.char(0x1b).."(c@#00bbff)"..get_message("player"))  --TODO: make custom mob death messages
					
					--end 	
					
				end
		
		
		if player=="" or hitter=="" then return end -- no killers/victims
        return true

		elseif hitter:get_player_name() == "" and player:get_hp() == 0 then
					minetest.chat_send_all(
					string.char(0x1b).."(c@#ffffff)"..player:get_player_name()..
					string.char(0x1b).."(c@#ff0000)".." was"..
					string.char(0x1b).."(c@#ff0000)"..get_message("pvp")..
					string.char(0x1b).."(c@#ff0000)".." by "..
					--string.char(0x1b).."(c@#ffffff)"..hitter:get_luaentity().name..  --too many mobs add to crash
					--above is buggy with fireball nuan rainbo when hit by bullet.
					string.char(0x1b).."(c@#00bbff)"..get_message("mobs"))  --TODO: make custom mob death messages
					
		if player=="" or hitter=="" or hitter=="*"  then return end -- no mob killers/victims
		else
		
			if player:get_hp() == 0 then end
        return false	
      end  --if player and and
   end)  --after
   
   
   
   --[[
   	while player:get_hp() == 0 and hitter:get_player_name() ~= "" and holding == hitter:get_wielded_item() ~= ""  --make more specific
	do


		if player:get_hp() == 0 then
			break
		end
	end
]] --  example dowhile

 
end)  --hitter func


-----------------------------------------------------------------------------------------------
print("[Mod] "..title.." ["..version.."] ["..mname.."] Loaded...")
-----------------------------------------------------------------------------------------------
