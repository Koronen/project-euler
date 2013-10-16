module Problem001_Test where

import Test.HUnit
import Control.Monad (void)
import Problem001 (answer)

testAnswer = TestCase $ assertEqual "Answer" 233168 answer

main :: IO ()
main = void $ runTestTT testAnswer
