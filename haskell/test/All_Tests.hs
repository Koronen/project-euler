module All_Tests where

import Test.HUnit
import Control.Monad (void)

import Problem001_Test (testProblem001)
import Problem002_Test (testProblem002)
import Problem004_Test (testProblem004)

tests = TestList [
    TestLabel "Problem001" testProblem001,
    TestLabel "Problem002" testProblem002,
    TestLabel "Problem004" testProblem004]

main :: IO ()
main = void $ runTestTT tests
