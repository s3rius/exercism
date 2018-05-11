module Acronym (abbreviate) where
import Data.Char


abbreviate :: String -> String
abbreviate text = foldr (folding) [] $ unwords . map (upFirst) . map (mapper) $ words text 
   where  mapper [] = []
          mapper text@(a:xs) | all isUpper text = a:[]
                             | not $ isAlpha a = upFirst xs
                             | otherwise = a : mapper xs       
          folding el xs | isUpper el = el:xs
                        | otherwise  = xs
          upFirst [] = []
          upFirst (x:xs) = toUpper x : xs
