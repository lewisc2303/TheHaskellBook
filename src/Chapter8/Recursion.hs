module Recursion where
    --recursive funciton to sum all numbers from 1 to n. n == argument.
    
    sumTotalToN :: Integral a => a -> a
    sumTotalToN n = go n 0
     where go n total
            | (n == 1) = total   
            | otherwise = go (n-1) (total + n)
    
    -- recursive function for multiplication of 2 numbers using summation
    muliply :: Integral a => a -> a -> a
    muliply n1 n2 = go n1 n2 0
     where go n1 n2 count
            | (n1 == 0) = count
            | otherwise = go (n1 - 1) n2 (count + n2)  
    
    data DividedResult a = Result a | DividedByZero deriving Show

    dividedBy :: Integral a => a -> a -> DividedResult a
    dividedBy num denom
     | denom == 0                  = DividedByZero
     | signum num == signum denom  = Result r
     | otherwise                   = Result (-r)
     where
        r = go (abs num) (abs denom) 0
        go n d count
         | n < d     = count
         | otherwise = go (n - d) d (count + 1)
    
    mc91 :: Integer -> Integer
    mc91 num 
     |    num > 100 = num - 10
     |    otherwise = 91 
        