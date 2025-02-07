module Greeting where

greeting name = "Hello, " ++ name ++ " how are you doing today?"


-- What I initially thought:
-- greeting = ["Hello, ", name, " how are you doing today?"] >>= id
-- explaination:
-- 1. ["Hello, ", name, " how are you doing today?"]: create a list of strings
-- 2. >>= id: flatten the list
-- >>= is a monad operator and id is the identity function

-- Best practice:
-- import Text.Printf (printf)
-- greeting :: String -> String
-- greeting = printf "Hello, %s how are you doing today?"

-- Clever solution:
-- greeting = ("Hello, " ++) . (++ " how are you doing today?")