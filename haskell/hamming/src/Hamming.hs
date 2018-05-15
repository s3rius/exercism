module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance xs ys | length xs /= length ys = Nothing
               | otherwise = Just (sum . map (comp) $ zip xs ys)
       where comp (a,b) |    a==b   = 0
                        | otherwise = 1
