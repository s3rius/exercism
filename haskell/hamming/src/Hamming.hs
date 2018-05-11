module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance xs ys | length xs /= length ys = Nothing
               | otherwise = Just (foldr (\(a,b) s-> s + fromEnum (not $ a==b)) 0 $ zip xs ys)
