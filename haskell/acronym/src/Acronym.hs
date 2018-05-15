module Acronym (abbreviate) where
import Data.Char


abbreviate :: String -> String
abbreviate text = reverse $ resr "" $ unwords . map mapper $ words  text
  where  resr acc [] = acc
         resr acc text@(a:xs) | not $ isAlpha a = resr acc ((toUpper $ head xs) : (tail xs))
                              | isUpper a       = resr (a:acc) xs
                              | otherwise       = resr acc xs
         mapper word | all isUpper word = head word : []
                     | otherwise = word
