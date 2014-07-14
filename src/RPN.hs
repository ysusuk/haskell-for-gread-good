module RPN (
	evaluate
) where

evaluate :: String -> Double
evaluate = head . foldl eval [] . words
    where eval (x:y:ys) "+" = (x + y):ys
          eval (x:y:ys) "*" = (x * y):ys
          eval (x:y:ys) "-" = (y  x):ys
          eval xs number = read number:xs

