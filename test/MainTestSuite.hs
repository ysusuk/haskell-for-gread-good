module Main (
   main
) where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.Framework.Providers.QuickCheck2

import SimpleTest
import QuickSortTest

main :: IO ()
main = defaultMain tests

tests :: [Test]
tests =
	[
        testGroup "simple test group"
        [
            testCase "fact 0" testFactorial0,
            testCase "fact 1" testFactorial1,
            testCase "fact 2" testFactorial2,
            testCase "fact 3" testFactorial3
        ],
        testGroup "simple test group"
        [
            testCase "test sorted" testQuickSortSorted,
            testCase "test unsorted" testQuickSortUnsorted,
            testCase "test negative" testQuickSortNegative,
            testCase "test empty" testQuickSortEmpty
        ]
    ]