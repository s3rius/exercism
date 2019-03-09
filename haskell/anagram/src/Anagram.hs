module Anagram (anagramsFor) where
import Data.List
import Data.Char

anagramsFor :: String -> [String] -> [String]
anagramsFor xs xss = filter (\s -> (map toLower s) /= lower && sorted == sort (map toLower s)) xss
  where
    lower = map toLower xs
    sorted = sort $ lower
