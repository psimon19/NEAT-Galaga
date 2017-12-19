---------------------------------------------------------------
--
--		main.lua
--		Contains helpful utility functions for neural networks
--
--
--
--
---------------------------------------------------------------
--	Author: Peter Simon
---------------------------------------------------------------

local utils = require("scripts.util")

-- Galaga only uses "A", "B", "LEFT", and "RIGHT"
local buttons = {
	"A",
	"B",
	"Left",
	"Right",
}

local inputs = {}					-- Possibly not necessary
local outputLength = #buttons		-- Want the number of outputs to be possible button presses


local NUM_GENOMES = 			-- Number of genomes per species
local NUM_SPECIES =				-- Number of species per generation

local CLONE_PROB = 				-- Probability of cloning a genome
local CROSSOVER_PROB = 			-- Probability of crossing two genomes
 
local WEIGHT_PROB = 			-- Probability of changing weights
local NEW_WEIGHT_PROB = 		-- Probability of choosing a new weight

local ADD_GENE_PROB = 			-- Probability of adding a new gene
local ADD_NODE_PROB = 			-- Probability of adding a new node

local DISABLE_GENE_PROB = 		-- Probability to disable a gene
local ENABLE_GENE_PROB = 		-- Probability to enable a gene




-- The xpos of our input
function getInput()
	return utils.player_xpos()







function fitness()

-- Score - (x * time)
