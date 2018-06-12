module School (School, add, empty, grade, sorted) where
import qualified Data.List as List

data School = School [(Int, [String])] deriving (Show)

add :: Int -> String -> School -> School
add gradeNum student (School map) = School $ insertWith (++) gradeNum [student] map

insertWith :: Eq a => (b -> b -> b) -> a -> b -> [(a,b)] -> [(a, b)]
insertWith _ a b []     = [(a, b)]
insertWith f a b ((fs, sn):xs) | fs == a    = (a, f sn b) : xs
                               | otherwise  = (fs, sn) : insertWith f a b xs

empty :: School
empty = School $ []

grade :: Int -> School -> [String]
grade _ (School []) = []
grade gradeNum (School ((x,y):mas)) | gradeNum == x = y
                                    | otherwise     = grade gradeNum $ School mas

sorted :: School -> [(Int, [String])]
sorted (School mas) = List.sortBy (sortPredicate) $ map (\(x,y)-> (x, List.sort y)) mas where
    sortPredicate (x1,x2) (y1,y2) | x1 == y1 = EQ
                                  | x1 >  y1 = GT
                                  | x1 <  y1 = LT
