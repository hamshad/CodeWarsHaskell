module ANeedleInTheHaystack (findNeedle) where

import Data.List (findIndex)
import Data.Maybe (fromJust)

findNeedle :: [String] -> String
findNeedle haystack = "found the needle at position " ++ show (fromJust (findIndex (== "needle") haystack))

-- show function converts the integer to a string
-- findIndex function finds the index of the string "needle" in the list of strings
-- fromJust function extracts the value from the Maybe type

-- Best practice:
-- module ANeedleInTheHaystack where
-- import Data.List (elemIndex)
-- import Data.Maybe (fromJust)
-- findNeedle :: [String] -> String
-- findNeedle = ("found the needle at position " ++) . show . fromJust . elemIndex "needle"

-- Clever solution:
-- module ANeedleInTheHaystack where
-- findNeedle :: [String] -> String
-- findNeedle = ("found the needle at position " ++) . show . length . takeWhile (/= "needle")
