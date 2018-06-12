module Isogram (isIsogram) where
import           Data.Char
import           Data.List

isIsogram :: String -> Bool
isIsogram = all (\x -> 1 == length x) . filter (all isAlpha) . group . sort . map (toLower)
