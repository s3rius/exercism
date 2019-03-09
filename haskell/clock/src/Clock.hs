module Clock (addDelta, fromHourMin, toString) where

data Clock = Clock {hours :: Int, minutes::Int} deriving (Show, Eq)

instance Num Clock where
  (+) (Clock ha ma) (Clock hb mb) =  fromHourMin (ha + hb) (ma + mb)

fromHourMin :: Int -> Int -> Clock
fromHourMin hour min = Clock hours minutes
  where
    hours = (hour + (min `div` 60)) `mod` 24
    minutes = min `mod` 60

toString :: Clock -> String
toString clock = show (hours clock) ++ ":" ++ show (minutes clock)

addDelta :: Int -> Int -> Clock -> Clock
addDelta hour min clock = error "You need to implement this function."
