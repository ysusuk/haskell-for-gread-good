import System.Environment

double' :: Int -> Int
double' x = x + x

double :: Int -> Int -> Int
double x y = double' x + double' y

doubleLessThen100 x = if x > 100
	then x
	else x * 2

rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]

factorial :: Int -> Int
factorial n = product [1..n]

factorial' :: (Integral a) => a -> a
factorial' 0 = 1
factorial' n = n * factorial' (n - 1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- Patern match

head' :: [a] -> a
head' [] = error "can't call head on empty list"
head' (x:_) = x

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- Guards

bmi :: (RealFloat a) => a -> a -> String
bmi weight height
    | bmi <= skinny = "underweight"
    | bmi <= normal = "normal"
    | bmi <= fat = "fat"
    | otherwise   = "whale"
    where bmi = weight / height ^ 2 
          skinny = 18.5
          normal = 25.0
          fat = 30.0

comparison :: (Ord a) => a -> a -> Ordering
a `comparison` b
    | a > b = GT
    | a < b = LT
    | otherwise = EQ
