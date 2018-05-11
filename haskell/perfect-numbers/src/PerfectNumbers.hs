module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify num |       num <= 0   = Nothing
             | alsum num == num = Just Perfect
             | alsum num >  num = Just Abundant
             | alsum num <  num = Just Deficient

alsum num = sum . filter (\el -> num `mod` el == 0) $ [1..(num-1)]
