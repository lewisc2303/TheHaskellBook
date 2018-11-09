

module Ex6 where
    import Data.List

    f :: RealFrac a => a
    f = 1.0

    -- freud ::a -> IO()  --why???
    -- freud x = x

    myX = 1 :: Int
    sigmund :: Int -> Int 
    sigmund x = myX

    jung :: Ord a => [a] -> a
    jung xs = head (sort xs)

    mySort :: [Char] -> [Char] 
    mySort = sort
    signifier :: [Char] -> Char 
    signifier xs = head (mySort xs)

    chk :: Eq b => (a -> b) -> a -> b -> Bool 
    chk ab a b = ab a == b

    arith :: Num b => (a -> b) -> Integer -> a -> b --dont fully get? + fromInteger n 
    arith ab i a = ab a
