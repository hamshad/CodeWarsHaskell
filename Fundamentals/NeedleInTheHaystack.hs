module ANeedleInTheHaystack (findNeedle) where

import Data.List (findIndex)
import Data.Maybe (fromJust)

findNeedle :: [String] -> String
findNeedle haystack = "found the needle at position " ++ show (fromJust (findIndex (== "needle") haystack))

-- show function converts the integer to a string
-- findIndex function finds the index of the string "needle" in the list of strings
