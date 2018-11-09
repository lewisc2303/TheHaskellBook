module Chp3Ex where
--3.8
    --2a. 
    toShout x = x ++ "!" 

    --2b.
    returnLetterFromWord x y = y !! x 

    --2c.
    returnEndOfString x y = drop x y

    --3.
    thirdLetter :: String -> Char
    thirdLetter x = (!!) x 2

    --4.
    letterIndex :: Int -> Char
    letterIndex x = (!!) y x
     where y = "blah blah blah"

    -- Doesent work!?
    --Works when a Int for x is used but not when x is an argument
    --Issue was int was written instead of Int!!! 

    --5.
    rvrse :: String
    rvrse = concat [take 5 x, " is ", drop 9 x]
     where x = "curry is awesome"
