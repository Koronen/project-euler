module Problem004_Test where

import Test.HUnit
import Control.Monad (void)
import Problem004 (problem004)

testProblem004 = TestCase $ assertEqual "Problem004" 906609 problem004

main :: IO ()
main = void $ runTestTT testProblem004
