module Problem004 (problem004) where

problem004 :: Integer
problem004 = maximum $ filter palindrome [a*b | a <- [100..999], b <- [100..999]]
    where palindrome x = (show x) == (reverse $ show x)

main :: IO ()
main = print problem004
