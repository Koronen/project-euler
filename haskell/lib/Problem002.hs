module Problem002 (problem002) where

-- For fibs, see:
-- <http://www.haskell.org/haskellwiki/The_Fibonacci_sequence#Using_the_infinite_list_of_Fibonacci_numbers>
problem002 :: Integer
problem002 = sum $ filter even $ takeWhile (<= 4000000) fibs
    where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main :: IO ()
main = print problem002
