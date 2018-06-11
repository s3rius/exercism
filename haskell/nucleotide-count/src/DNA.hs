module DNA (nucleotideCounts) where

import           Data.List
import           Data.Map

nucleotideCounts :: String -> Either String (Map Char Int)
nucleotideCounts "" = Right $ fromList [('A', 0), ('C', 0), ('G', 0), ('T', 0)]
nucleotideCounts xs | all (`elem` "ACGT") xs = Right $ Data.Map.union  (fromList $ Prelude.map (\x-> (head x, length x)) $ group $ sort xs) (fromList [('A', 0), ('C', 0), ('G', 0), ('T', 0)])
                    | otherwise = Left "Nah"
