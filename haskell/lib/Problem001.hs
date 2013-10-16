module Problem001 (answer) where

answer :: Integer
answer = sum $ filter multipleOfThreeOrFive [1..999]
    where multipleOfThreeOrFive x = x `mod` 3 == 0 || x `mod` 5 == 0

main :: IO ()
main = print answer
