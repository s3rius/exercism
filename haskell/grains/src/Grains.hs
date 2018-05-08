module Grains (square, total) where

square :: Integer -> Maybe Integer
square n | n < 1 || n > 64 = Nothing
         | otherwise = Just(2^(n-1))

total :: Integer
total = calc 1 65
 where calc i n | i < n = unwrap(square i) + calc (i+1) n
                | otherwise = 0
       unwrap Nothing = 0
       unwrap (Just a) = a
