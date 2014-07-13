module Shape (
	Point(..),
    Shape(..),
    area,
    nudge,
--    baseCircle,
--    baseRectangle
) where

data Point = Point Float Float deriving Show
data Shape = Circle Point Float | Rectangle Point Point deriving Show

area :: Shape -> Float
area (Circle _ r) = pi * r ^ 2
area (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) diffX diffY = Circle (Point (x + diffX) (y + diffY)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) diffX diffY = Rectangle
    (Point (x1 + diffX) (y1 + diffY))
    (Point (x2 + diffX) (y2 + diffY))