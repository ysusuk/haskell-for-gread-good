module Tree (
    Tree(..),
    singleton,
    insert,
    elem
) where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

insert :: (Ord a) => a -> Tree a -> Tree a
insert x EmptyTree = singleton x
insert x (Node a left right)
    | x == a = Node x left right
    | x < a  = Node a (insert x left) right
    | x > a  = Node a left (insert x right)

elemEx :: (Ord a) => a -> Tree a -> Bool
elemEx x EmptyTree = False
elemEx x (Node a left right)
    | x == a = True
    | x < a  = elemEx x left
    | x > a  = elemEx x right
