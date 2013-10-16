module Problem002_Test where

import Test.HUnit
import Control.Monad (void)
import Problem002 (answer)

testAnswer = TestCase $ assertEqual "Answer" 4613732 answer

main :: IO ()
main = void $ runTestTT testAnswer
