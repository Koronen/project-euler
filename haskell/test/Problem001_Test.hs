module Problem001_Test where

import Test.HUnit
import Control.Monad (void)
import Problem001 (problem001)

testProblem001 = TestCase $ assertEqual "Problem001" 233168 problem001

main :: IO ()
main = void $ runTestTT testProblem001
