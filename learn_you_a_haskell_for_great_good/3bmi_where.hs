-- where

-- bmiTell 39 3.0
bmiTell :: Double -> Double -> String
bmiTell weight height
  | bmi <= 18.5 = "1"
  | bmi <= 25.0 = "2"
  | bmi <= 30.0 = "3"
  | otherwise   = "else"
  where bmi = weight / height ^ 2
