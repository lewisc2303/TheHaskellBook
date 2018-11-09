module Chp7 where

    --Anonymous functions Q3
    addOneIfOdd :: Integral a => a -> a
    addOneIfOdd n = case odd n of  
        True -> f n
        False -> n
        where f = \n -> n + 1
    addFive :: Integer -> Integer -> Integer  --error at runtime?
    addFive = \x -> \y -> (if x > y then y else x) +5

    mflip f y x = f y x

    --pattern matching Q4
    f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f)) 
    f (a, b, c) (d, e, f) = ((a, d), (c, f))

    --case practice Q5
    functionC :: Integral a => a -> a -> a 
    functionC x y = case ( x > y) of
        True -> x
        False -> y
    
    ifEvenAdd2 :: Integral a => a -> a    
    ifEvenAdd2 n = case even n of
        True -> n + 2
        False -> n

    nums :: Integral a => a -> a 
    nums x =
        case compare x 0 of
        LT -> -1 
        GT -> 1
        EQ -> 0
    
    --Artful Dodgy
    dodgy :: Num a => a -> a -> a
    dodgy x y = x + y * 10

    oneIsOne :: Num a => a -> a
    oneIsOne = dodgy 1 

    oneIsTwo :: Num a => a -> a
    oneIsTwo = (flip dodgy) 2
    