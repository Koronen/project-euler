module Problem002_Test where

import Test.HUnit
import Control.Monad (void)
import Problem002 (problem002)

testProblem002 = TestCase $ assertEqual "Problem002" 4613732 problem002

main :: IO ()
main = void $ runTestTT testProblem002
