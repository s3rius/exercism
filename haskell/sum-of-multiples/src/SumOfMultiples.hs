module SumOfMultiples (sumOfMultiples) where
import Data.List

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum . map head . group . sort $ concat $ map (mapper 1 limit) factors
     where mapper i limit num | num*i < limit = num*i: mapper (i+1) limit num
                              | otherwise = []
