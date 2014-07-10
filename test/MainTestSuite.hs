module Main (
    main
) where

import Test.Tasty
import Test.Tasty.QuickCheck
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests =
    testGroup "test group"
    [
        testCase "fact 0" testFactorial0,
        testCase "fact 1" testFactorial1,
        testCase "fact 2" testFactorial2,
        testCase "fact 3" testFactorial3,
    ]