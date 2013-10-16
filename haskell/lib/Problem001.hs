module Problem001 (problem001) where

problem001 :: Integer
problem001 = sum $ filter multipleOfThreeOrFive [1..999]
    where multipleOfThreeOrFive x = x `mod` 3 == 0 || x `mod` 5 == 0

main :: IO ()
main = print problem001
