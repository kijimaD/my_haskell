-- Guard
bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal."
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a while, congratulations!"

bmiTell2 :: Double -> Double -> String
bmiTell2 weight height
  | weight / height ^ 2 <= 18.5 = "1"
  | weight / height ^ 2 <= 25.0 = "2"
  | weight / height ^ 2 <= 30.0 = "3"
  | otherwise                   = "else"
-- bmiTell2 85 1.90

max' :: (Ord a) => a -> a -> a
max' a b
  | a <= b      = b
  | otherwise   = a

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a == b    = EQ
  | a <= b    = LT
  | otherwise = GT
