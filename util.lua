---------------------------------------------------------------
--
--		util.lua
--		Contains helpful utility functions for neural networks
--
--
--
--
---------------------------------------------------------------
--	Author: Peter Simon
---------------------------------------------------------------

-- constant values, memory locations & other useful things
local SCORE_FIRST_DIGIT = 0x00E0 -- Score: 9xxxxxx
local SCORE_SECOND_DIGIT = 0x00E1 -- Score: x9xxxxx
local SCORE_THIRD_DIGIT = 0x00E2 -- Score: xx9xxxx
local SCORE_FOURTH_DIGIT = 0x00E3 -- Score: xxx9xxx
local SCORE_FIFTH_DIGIT = 0x00E4 -- Score: xxxx9xx
local SCORE_SIXTH_DIGIT = 0x00E5 -- Score: xxxxx9x
local SCORE_SEVENTH_DIGIT = 0x00E6 -- Score: xxxxxx9
local PLAYER_XPOS = 0x0203 -- Player's x position
local PLAYER_CURRENT_LIVES = 0x0487 --Player's current lives count

function player_score()
	score = tonumber(memory.readbyte(SCORE_FIRST_DIGIT)..
					memory.readbyte(SCORE_SECOND_DIGIT)..
					memory.readbyte(SCORE_THIRD_DIGIT)..
					memory.readbyte(SCORE_FOURTH_DIGIT)..
					memory.readbyte(SCORE_FIFTH_DIGIT)..
					memory.readbyte(SCORE_SIXTH_DIGIT)..
					memory.readbyte(SCORE_SEVENTH_DIGIT));
	
	return score

function player_xpos()
	return tonumber(memory.readbyte(PLAYER_XPOS))

function player_lives()
	return tonumber(memory.readbyte(PLAYER_CURRENT_LIVES))
	
