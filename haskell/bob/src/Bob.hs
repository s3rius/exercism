module Bob (responseFor) where
import Data.Char

responseFor :: String -> String
responseFor s | isQuestion s && isShouting s = "Calm down, I know what I'm doing!"
              | isQuestion s = "Sure."
              | isShouting s = "Whoa, chill out!"
              | isEmpty s    = "Fine. Be that way!"
              | otherwise    = "Whatever."
        where isShouting  s = fwithNES (all isUpper) (filter isAlpha s)
              isQuestion s = fwithNES ((== '?') . head) (filter (not . isSpace) (reverse s))
              isEmpty = all isSpace
              fwithNES f s | s == "" = False
                           | otherwise = f s
