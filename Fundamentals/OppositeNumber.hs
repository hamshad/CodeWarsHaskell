module Codewars.Kata.Opposite where

opposite :: Num a => a -> a
opposite a = a - (a*2)

-- Best practice:
-- opposite :: Num a => a -> a
-- opposite = negate

-- Clever solution:
-- opposite :: Num a => a -> a
-- opposite = (0-)