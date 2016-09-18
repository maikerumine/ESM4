-- basic vote by rnd, 2015

local basic_vote = {};

-- SETTINGS ----------------------------------------------------------------------

-- DEFINE VOTE TYPES
basic_vote.types = { -- [type] = { description , votes_needed , timeout}

[0] = {"ban for 2 minutes" , -3 , 30},                -- -3 means strictly more than 3 players need to vote ( so 4 or more)
[1] = {"remove interact of" , 0.5, 120}, -- 0.5 means at least 50% need to vote
[2] = {"give interact to" , 0.5 , 120},
[3] = {"kill" , -3 , 30},
[4] = {"poison" , -3 , 30},
[5] = {"teleport to me" , -3 , 30},
};
basic_vote.modreq = 2; -- more that this number of moderators from "anticheat" mod must vote for mod to succeed

-- needed for poison vote
local vote_poison_state = {};
basic_vote_poison = function(name)
	
	local player = minetest.get_player_by_name(name);
	
	if not vote_poison_state[name] then
		vote_poison_state[name] = 60;
	end
	
	vote_poison_state[name] = vote_poison_state[name] - 1;
	if vote_poison_state[name]<=0 then 
		vote_poison_state[name] = nil; return;
	end
	
	if player then
		if player:get_hp()>0 then 
			player:set_hp(player:get_hp()-4);
		end
	end
	
	minetest.after(2, function() basic_vote_poison(name) end)

end

basic_vote.kicklist = {};

-- DEFINE WHAT HAPPENS WHEN VOTE SUCCEEDS
basic_vote.execute = function(type, name, reason) 

	if type == 0 then
		local ip = tostring(minetest.get_player_ip(name));
		basic_vote.kicklist[ip] = minetest.get_gametime(); -- remembers start time
		minetest.kick_player(name, reason)
			
	elseif type == 1 then
	
		local privs = core.get_player_privs(name);privs.interact = false
		core.set_player_privs(name, privs);	minetest.auth_reload()
		
	elseif type == 2 then
	
		local privs = core.get_player_privs(name);privs.interact = true;
		core.set_player_privs(name, privs);	minetest.auth_reload()
	
	elseif type == 3 then
	
		local player = minetest.get_player_by_name(name); if not player then return end
		player:set_hp(0);
		
	elseif type == 4 then
		
		local player = minetest.get_player_by_name(name); if not player then return end
		if not vote_poison_state[name] then
			basic_vote_poison(name);
		end

	elseif type == 5 then
		
		local player = minetest.get_player_by_name(name); if not player then return end
		local vname = basic_vote.vote.voter; local vplayer = minetest.get_player_by_name(vname);
		if not vplayer then return end
		player:setpos(vplayer:getpos());
		
	end

end

minetest.register_on_prejoinplayer(
	function(name, ip)
		local name;
		if basic_vote.kicklist[ip] then 
			
			local t = minetest.get_gametime();
			t=t-basic_vote.kicklist[ip];
			if t>120 then 
				basic_vote.kicklist[ip] = nil;
			else
				return "You have been banned from the server."
			end
		end
		
	end
)




-- END OF SETTINGS ---------------------------------------------------------------

basic_vote.votes = 0; -- vote count
basic_vote.modscore = 0; -- how many moderators voted - need 3 for vote to succeed
basic_vote.voters = {}; -- who voted already
basic_vote.state = 0; -- 0 no vote, 1 vote in progress,2 timeout
basic_vote.vote = {time = 0,type = 0, name = "", reason = "", votes_needed = 0, timeout = 0, description = ""}; -- description of current vote


basic_vote.requirements = {[0]=0}
basic_vote.vote_desc=""; for i,v in pairs(basic_vote.types) do basic_vote.vote_desc = basic_vote.vote_desc .. " type ".. i .. ": ".. v[1]..", " end


-- starts a new vote
minetest.register_chatcommand("vote", { 
	privs = {
		interact = true
	},
	func = function(name, param)
		
		if basic_vote.state~=0 then 
			minetest.chat_send_player(name,"vote already in progress:") 
			minetest.chat_send_player(name,basic_vote.vote.description);
			return 
		end
		local player = minetest.get_player_by_name(name);
		
		-- split string param into parameters
		local paramt = string.split(param, " ") 
		for i = #paramt+1,3 do paramt[i]="" end
		
		
		if not basic_vote.types[ tonumber(paramt[1]) ] then minetest.chat_send_player(name,"USAGE: vote type name reason, "..basic_vote.vote_desc) return end
		
		basic_vote.vote.time = minetest.get_gametime();
		basic_vote.vote.type = tonumber(paramt[1]);
		basic_vote.vote.name=paramt[2] or "";
		basic_vote.vote.voter = name;
		basic_vote.vote.reason = paramt[3]
		basic_vote.vote.votes_needed =  basic_vote.types[ basic_vote.vote.type ][2];
		basic_vote.vote.timeout = basic_vote.types[ basic_vote.vote.type ][3];
		
		
		--check if target valid player
		if not minetest.get_player_by_name(basic_vote.vote.name) and basic_vote.vote.type~= 1 then return end
		
		-- check anticheat db
		local ip = tostring(minetest.get_player_ip(basic_vote.vote.name));
		if anticheatdb and anticheatdb[ip] then -- #anticheat mod: makes detected cheater more succeptible to voting
			if anticheatsettings.moderators[name] then -- moderator must call vote
				basic_vote.vote.votes_needed=0; -- just need 1 vote
				name = "#anticheat"; -- so cheater does not see who voted - anonymous vote
			end
		end
		
		basic_vote.votes = 0; basic_vote.modscore = 0; basic_vote.voters = {};
		
		basic_vote.vote.description = "## VOTE (by ".. name ..") to ".. (basic_vote.types[basic_vote.vote.type][1] or "") .. " " .. (basic_vote.vote.name or "") .. " because " .. (basic_vote.vote.reason or "").. " ##\nsay /y to vote. Timeout in ".. basic_vote.vote.timeout  .. "s.";
		
		minetest.chat_send_all(basic_vote.vote.description);
		basic_vote.state = 1; minetest.after(basic_vote.vote.timeout, function() 
			if basic_vote.state == 1 then basic_vote.state = 2;basic_vote.update(); end
		end)
	end
	}
)

-- check if enough votes for vote to succeed or fail vote if timeout
basic_vote.update = function()
	local players=minetest.get_connected_players();
	local count = #players;

	local votes_needed;
	
	if basic_vote.vote.votes_needed>0 then
		votes_needed = basic_vote.vote.votes_needed*count; -- percent of all players
		if basic_vote.vote.votes_needed>=0.5 then -- more serious vote, to prevent ppl voting serious stuff with few players on server, at least 6 votes needed
			if votes_needed<6 then votes_needed = 6 end
		end
		
	else
		votes_needed = -basic_vote.vote.votes_needed; -- number instead
	end
	
	if basic_vote.state == 2 then -- timeout
		minetest.chat_send_all("##VOTE failed. ".. basic_vote.votes .." voted (needed more than ".. votes_needed ..")");
		basic_vote.state = 0;basic_vote.vote = {time = 0,type = 0, name = "", reason = ""}; return 
	end
	if basic_vote.state~=1 then return end -- no vote in progress
	
	-- check if enough votes
	
	if basic_vote.modscore> basic_vote.modreq then -- enough moderators voted for vote to succeed
		basic_vote.votes = votes_needed+1;
	end
	
	if basic_vote.votes>votes_needed then  -- enough voters
		minetest.chat_send_all("##VOTE succeded. "..basic_vote.votes .." voted ");
		local type = basic_vote.vote.type;
                basic_vote.execute(basic_vote.vote.type,basic_vote.vote.name, basic_vote.vote.reason)
		basic_vote.state = 0;basic_vote.vote = {time = 0,type = 0, name = "", reason = ""};
		
	end
end

local cast_vote = function (name,param)
	if basic_vote.state~=1 then return end -- vote not in progress
		local ip = tostring(minetest.get_player_ip(name));
		if basic_vote.voters[ip] then return else basic_vote.voters[ip]=true end -- mark as already voted
		basic_vote.votes = basic_vote.votes+1;
		if anticheatsettings and anticheatsettings.moderators[name] then -- moderator from anticheat mod
			basic_vote.modscore=basic_vote.modscore+1;
		end
		local privs = core.get_player_privs(name);if privs.kick then basic_vote.votes = 100; end
		basic_vote.update(); minetest.chat_send_player(name,"vote received");
end

minetest.register_chatcommand("y", { 
	privs = {
		interact = true
	},
	func = function(name, param)
		cast_vote(name,param)
	end
	}
)