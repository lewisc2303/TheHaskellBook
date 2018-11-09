module WordNumber where

    import Data.List (intersperse)

    digitToWord :: Int -> String 
    digitToWord n = 
        case n of
        0 -> "zero"
        1 -> "one"
        2 -> "two"
        3 -> "three"
        4 -> "four"
        5 -> "five"
        6 -> "six"
        7 -> "seven"
        8 -> "eight"
        9 -> "nine"       

    digits :: Int -> [Int] 
    digits n 
     | (fst (dM) == 0) = [ snd (dM) ]
     | otherwise = (++) [(snd (dM))] (digits (fst (dM)))
        where 
            dM = divMod n 10
        
            

    wordNumber :: Int -> String 
    wordNumber = concat . (intersperse " - ") . (map digitToWord) . reverse. digits

    digits :: Int -> [Int] 
    digits n = [dig3, dig2, dig1]
     where 
        dig1 = snd (divMod n 10)
        dig2 = snd (divMod (fst (divMod n 10)) 10)
        dig3 = snd (divMod (fst (divMod (fst (divMod n 10)) 10)) 10)


    -- how to use compostion operator with brackets or $
    -- if the function has 2 arguments, brackets are need to make the currying suceed, as otherwise it will not know which argument is the curried function.