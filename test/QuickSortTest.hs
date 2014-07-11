module QuickSortTest where

import Test.HUnit
import Test.QuickCheck

import QuickSort

testQuickSortSorted :: Assertion
testQuickSortSorted =
    [1,2,3,4] @=? quickSort [1,2,3,4]

testQuickSortUnsorted :: Assertion
testQuickSortUnsorted =
    [1,2,3,4] @=? quickSort [4,3,2,1]

testQuickSortNegative :: Assertion
testQuickSortNegative =
    [-4,-3,-2,-1] @=? quickSort [-1,-2,-3,-4]

testQuickSortEmpty :: Assertion
testQuickSortEmpty =
	assertBool "should be empty" (null (quickSort [] :: [Int]))
