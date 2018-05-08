module Squares (difference, squareOfSums, sumOfSquares) where

difference :: Integral a => a -> a
difference n = (squareOfSums n) - (sumOfSquares n)  

squareOfSums :: Integral a => a -> a
squareOfSums n = (sum_h 1 n)^2
    where sum_h i n | i < n = i + sum_h (i+1) n
                    | otherwise = n

sumOfSquares :: Integral a => a -> a
sumOfSquares n = s_sum_h 1 n
    where s_sum_h i n | i < n = (i^2) + s_sum_h (i+1) n
                      | otherwise = n^2
