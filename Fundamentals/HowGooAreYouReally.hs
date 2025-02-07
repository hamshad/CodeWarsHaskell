module HowGoodAreYou where

betterThanAverage :: [Int] -> Int -> Bool
betterThanAverage allScore myScore = fromIntegral myScore > averageScore
  where
    averageScore = fromIntegral (sum allScore + myScore) / fromIntegral (1 + length allScore)

-- Best practice:
-- betterThanAverage :: [Int] -> Int -> Bool
-- betterThanAverage xs x = x > div (sum xs) (length xs)

-- Clever solution:
-- betterThanAverage :: [Int] -> Int -> Bool
-- betterThanAverage xs x = x > (sum xs) `div` length xs