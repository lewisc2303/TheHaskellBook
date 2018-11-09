module Database where

import Data.Time

data DatabaseItem = DbString String
                        | DbNumber Integer
                        | DbDate   UTCTime
                        deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem] 
theDatabase =
 [ DbDate (UTCTime (fromGregorian 1911 5 1)
    (secondsToDiffTime 34123)) 
 , DbNumber 9001
 , DbString "Hello, world!"
 , DbDate (UTCTime (fromGregorian 1921 5 1)
    (secondsToDiffTime 34123))
 ]
--1
filterDbDate :: (DatabaseItem -> [UTCTime]) -> [DatabaseItem] -> [UTCTime]  --UTCTime being a list??? confused me for a long time
filterDbDate _ [] = []
filterDbDate f xs = foldr (\a b -> f a ++ b) [] xs                          --Dont fully get the "\a b -> f a ++ b" syntaxtical meaning?

dbTimeFilter :: DatabaseItem -> [UTCTime]
dbTimeFilter x = case x of
    DbDate time -> time : []
    _           ->        []

filterDbDate' :: [DatabaseItem] -> [UTCTime] 
filterDbDate' [] = []
filterDbDate' xs = foldr (\a b -> f a ++ b) [] xs
        where f x = case x of
                DbDate time -> time : []
                _           ->        []

--2
dbNumFilter :: DatabaseItem -> [Integer]
dbNumFilter x = case x of 
    DbNumber integer -> integer : []
    _                -> []                              

filterDbGen :: (DatabaseItem -> [a]) -> [DatabaseItem] -> [a]  
filterDbGen _ [] = []
filterDbGen f xs = foldr (\a b -> f a ++ b) [] xs

--3

recentDate :: [DatabaseItem] -> Maybe UTCTime
recentDate [] = Nothing
recentDate xs = Just (foldr1 f (filterDbDate' xs))
        where 
            f :: UTCTime -> UTCTime -> UTCTime
            f = (\a b -> if (a > b) == True then a else b)

--UTCTime {utctDay :: Day, utctDayTime :: DiffTime}

recentDate' ::[DatabaseItem] -> UTCTime
recentDate' xs = maximum (filterDbGen dbTimeFilter xs)

--4
sumDb ::[DatabaseItem] -> Integer
sumDb xs = sum (filterDbGen dbNumFilter xs)

--5
avgDb :: [DatabaseItem] -> Double 
avgDb xs = fromIntegral ((sumDb xs) `div` (fromIntegral (length (filterDbGen dbNumFilter xs))))