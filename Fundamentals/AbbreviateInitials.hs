module Initials where

import Data.Char (isUpper,isAlpha)

-- todo
-- "John Doe" -> "J.D"

getInitials :: String -> String
getInitials name =
    case words name of
        [first, last] -> [toUpper (head first), '.', toUpper (head last)]


-- Best practice:
-- import Data.Char (toUpper)
-- import Data.List (interperse)
-- getInitials :: String -> String
-- getInitials = interperse "." . map (toUpper . head) . words


-- failed attempt
-- explaination:
-- 1. words name: split name into words
-- 2. [first, last]: destructure the list into two variables
-- 3. [toUpper (head first), '.', toUpper (head last)]: get the first character of each word, convert to upper case, and append a dot
-- what `case words name of` does is to pattern match the result of words name

-- getInitials name = [c | c <- name, isUpper c] >>= \x -> [x, '.']
-- explaination:
-- 1. [c | c <- name, isUpper c]: filter out all upper case characters
-- 2. >>= \x -> [x, '.']: for each character, append a dot
-- [c | c <- ..., isUpper c] is a list/set comprehension
-- >>= is a monad operator

-- getInitials = concatMap (\x -> if " " == [x] then "." else [x]) . filter isUpper
-- expaination:
-- 1. filter isUpper: filter out all non-upper case characters
-- 2. map (\x -> if " " == [x] then '.' else x): replace space with dot
-- is \x -> if " " == [x] then '.' else x a lambda function? Yes, it is.
-- how does lambda functions work in Haskell?
-- https://stackoverflow.com/questions/1012573/getting-started-with-haskell
-- what . do is to chain two functions together