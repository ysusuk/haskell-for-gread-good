module SimpleTest where

import Test.HUnit
import Test.QuickCheck

import Simple

testFactorial0 :: Assertion
testFactorial0 =
    1 @=? factorial' 0

testFactorial1 :: Assertion
testFactorial1 =
    1 @=? factorial' 1

testFactorial2 :: Assertion
testFactorial2 =
    2 @=? factorial' 2

testFactorial3 :: Assertion
testFactorial3 =
    6 @=? factorial' 3