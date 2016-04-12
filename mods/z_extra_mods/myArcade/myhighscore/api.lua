
-- Store any information we might need for the games that will use highscore
-- (icons, description, or whatever)
myhighscore.registered_games = {}

-- This table will contain a table for each registered game which
-- will be an array of player scores
myhighscore.scores = {}

-- How many scores to keep saved per game
local stored_scores = 50

-- Name of the folder to save the scores to
-- each game highscore list will be saved in a file inside this directory
local score_directory = minetest.get_worldpath().."/myhighscores/"

-- You can register a new arcade game using this function
-- The definition will get added to the table of registered games.
function myhighscore.register_game(name, definition)
	definition.description = definition.description or name
	myhighscore.registered_games[name] = definition
	myhighscore.load_scores(name)
end

-- Returns true if score from A is smaller than score from B
-- Used for sorting the score arra
function myhighscore.is_score_higher(scoreA, scoreB)
	return scoreA.score > scoreB.score
end

-- Saves a given score for the given game. "score" will be a table containing at least:
--  player (player name) and score (points)
function myhighscore.save_score(name, score)
	local scores = myhighscore.scores[name]

	-- Check first if the last score is higher
	if scores[stored_scores] and
		myhighscore.is_score_higher(scores[stored_scores], score) then
		return false
	end

	table.insert(scores, score)
	-- sort the array
	table.sort(scores, myhighscore.is_score_higher)
	-- check position and remove any extra ones
	local pos = 0
	for i,sc in pairs(scores) do
		if sc == score then
			pos = i
		elseif i > stored_scores then
			scores[i] = nil
		end
	end
	-- save it to disk
	local f, err = io.open(score_directory .. name, "w")
	f:write(minetest.serialize(scores))
	f:close()
	-- return the position we hold on the list
	return pos
end


-- Read scores from disk for the given game, or initialize the scores table if not present
function myhighscore.load_scores(name)
	local f, err = io.open(score_directory .. name, "r")
	local data = {}
	if f then
		data = minetest.deserialize(f:read("*a")) or {}
		f:close()
	end
	myhighscore.scores[name] = data
end

-- Create the scores directory if it doesn't exist!
minetest.mkdir(score_directory)
