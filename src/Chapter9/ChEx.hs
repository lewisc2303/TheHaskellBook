module ChEx where

    import Data.Char
--2
    filterCap :: String -> String 
    filterCap word = filter isUpper word

--3

    capitalise :: String -> String
    capitalise (x:xs) = (toUpper x: xs)

--4
    capitaliseAll :: String -> String
    capitaliseAll [] = []
    capitaliseAll (x:xs) = toUpper x : capitaliseAll xs

--5
    capitaliseReturn :: String -> Char
    capitaliseReturn = toUpper . head 

--Bool 1
    myOr :: [Bool] -> Bool
    myOr [] = False
    myOr (x:xs) = if x == True then True else myOr xs

--Bool 2
    myAny :: (a -> Bool) -> [a] -> Bool 
    myAny f [] = False
    myAny f (x:xs) = if (f x == True) then True else myAny f xs


-- 3
    myElem :: Eq a => a -> [a] -> Bool
    myElem _ [] = False
    myELem y (x:xs) = if x == y then True else myElem y xs 
                                                            --why do both throw exceptions!!!
    myElem' :: Eq a => a -> [a] -> Bool
    myElem' _ [] = False
    myELem' y (x:xs) = x == y || myElem' y xs 

-- 4
    myReverse :: [a] -> [a]
    myReverse [] = []
    myReverse (x:xs) = myReverse xs ++ x : []

    squish :: [[a]] -> [a]
    squish []     = []
    squish (x:xs) = x ++ squish xs 

    squishMap :: (a -> [b]) -> [a] -> [b] --works but with very few methods as such a polymorphic type
    squishMap f [] = []
    squishMap f x = squish (map f x)
    
    --8
    myMaximumBy :: Eq a => (a -> a -> Ordering) -> [a] -> a    
    myMaximumBy f (x:xs) = go f (x:xs) x                    --throws an excepption? can do xs == [] but that doesent comapare last in the list
        where go f (x:xs) greatest
                | (x:xs) == [] = greatest
                | f x greatest == GT = go f xs x
                | f x greatest == LT = go f xs greatest
                | f x greatest == EQ = go f xs greatest


    