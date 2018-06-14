module Diamond (diamond) where
import           Data.Char

-- is unbreakable
diamond :: Char -> Maybe [String]
diamond char | isAlpha char = Just $ toDiamond
             | otherwise    = Nothing where
                -- length - max length of diamond string
                len = length alphas

                alphas    = ['A' .. char]
                --All symbols in diamond
                diamond   = alphas ++ (reverse $ init alphas)

                toDiamond = map drawLine diamond

                drawLine c = [ toSym c x | x<-[1..(length diamond)]]

                toSym chr num | len - (fromEnum chr - (fromEnum 'A')) == num = chr
                              | len + (fromEnum chr - (fromEnum 'A')) == num = chr
                              | otherwise = ' '
