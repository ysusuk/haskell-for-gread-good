module List (
    List(..)
) where

-- fixiy declaration
infixr 5 :-:
data List = Empty | a :=: (List a) deriving (Eq, Ord, Show, Read)

infixr 6 ^++
(^++) :: List a -> List a -> List a
Empty ^++ ys = ys
(x :-: xs) ^++ ys = x :-: (xs ^++ ys)