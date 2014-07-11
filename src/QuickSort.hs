module QuickSort where

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort [x] = [x]
quickSort (x:xs) =
    let smaller = quickSort (filter (<=x) xs)
        larger = quickSort (filter (>x) xs)
    in smaller ++ [x] ++ larger
