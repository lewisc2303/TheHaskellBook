module Rewrite where

    --1
    myOr :: [Bool] -> Bool 
    myOr = foldr (||) False 

    --2
    myAny :: (a -> Bool) -> [a] -> Bool
    myAny f xs = foldr (\a b -> (f a) || b) False xs

    --3
    myElem :: Eq a => a -> [a] -> Bool
    myElem x = foldr (\a b -> (x == a) || b ) False 

    --4
    -- myReverse :: [a] -> [a] 
    -- myReverse = foldl (\b a -> b : a) []   --why? Because the function is replacing the : with a function. 

    myReverse' :: [a] -> [a]
    myReverse' = foldl (flip (:)) []

    --5
    myMap :: (a -> b) -> [a] -> [b]
    myMap f xs= foldr (\a b -> (f a) : b) [] xs

    --6
    myFilter :: (a -> Bool) -> [a] -> [a]
    myFilter f = foldr (\a b -> if (f a) == True then a : b else b) [] 

    --7
    squish :: [[a]] -> [a] 
    squish = foldr (++) [] 

    --8
    squishMap :: (a -> [b]) -> [a] -> [b] 
    squishMap f = foldr (\a b -> (f a) ++ b) [] 

    --9
    squishAgain :: [[a]] -> [a] 
    squishAgain = squishMap id

    myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
    myMaximumBy f xs = foldl (\a b -> if (f a b) == GT then a else b) (head xs) xs