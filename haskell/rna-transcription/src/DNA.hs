module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA dna | all (`elem` "ACGT") dna = Just(map convert dna) 
          | otherwise = Nothing
  where 
      convert el | el == 'G' = 'C'
                 | el == 'C' = 'G'
                 | el == 'T' = 'A'
                 | el == 'A' = 'U'
