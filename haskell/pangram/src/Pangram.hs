module Pangram (isPangram) where
import Data.List
import Data.Char

isPangram :: String -> Bool
isPangram text = (==26) . length . map head . group . sort . map toLower $ filter isAlpha text
