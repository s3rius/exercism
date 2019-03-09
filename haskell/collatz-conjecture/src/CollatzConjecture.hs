module CollatzConjecture where
import Data.List

collatz :: Integer -> Maybe Integer
collatz x
  | x < 1 = Nothing
  | otherwise = Just $ toInteger $ length $ unfoldr step x

step :: Integer -> Maybe (Integer, Integer)
step x
  | x == 1 = Nothing
  | even x = Just (1, x `div` 2)
  | otherwise = Just (1 ,3 * x + 1)
