module FoldFunctions where

sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

elem' :: (Ord a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs

maximum' :: (Ord a) => [a] -> a
maximum' (y:ys) = foldr (\x acc -> if x > acc then x else acc) y ys

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

--product' ::

--filter' ::

--head' ::

--last' ::