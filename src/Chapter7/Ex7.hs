module Ex7 where

    --1
    tensDigit :: Integral a => a -> a 
    tensDigit x = d
        where xLast = x `div` 10
              d = xLast `mod` 10

    --rewrite with divMod
    -- tensDigit2 :: Integral a => a -> a 
    -- tensDigit2 x = (f . g) x 10
    --     where f = snd
    --           g = divMod   --why?


    --2
    foldBool :: a -> a -> Bool -> a
    foldBool x y z =
        case z of
            True -> x
            False -> y
    
    foldBool2 :: a -> a -> Bool -> a
    foldBool2 x y z  
        | (z == True) = x
        | (z == False) = y

    --3
    g :: (a -> b) -> (a, c) -> (b, c)
    g ab (a, c) = (ab a, c)

    --4
    --addList :: (Integer -> [Integer] -> [Integer]) -> ([Integer] -> [Integer]) -> (Integer -> [Integer]) WHY?
    addList :: Integer -> Integer -> [Integer]
    addList = take 5 $ .filter odd . enumFrom
