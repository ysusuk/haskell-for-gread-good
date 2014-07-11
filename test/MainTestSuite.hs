module Main (
   main
) where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.Framework.Providers.QuickCheck2

import SimpleTest

main :: IO ()
main = defaultMain tests

tests :: [Test]
tests =
	[
        testGroup "test group"
        [
            testCase "fact 0" testFactorial0,
            testCase "fact 1" testFactorial1,
            testCase "fact 2" testFactorial2,
            testCase "fact 3" testFactorial3
        ]
    ]