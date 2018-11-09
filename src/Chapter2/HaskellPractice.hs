module HaskellPractice where

--Chapter 2
sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

area r = 3.14 * r * r

areaP r = pi * r * r


foo x =
    let y = x * 2
        z=x^2 
    in 2 * y * z

mult1  = x * y
 where x = 5
       y = 6

ex1  = x * 3 + y
 where x = 3
       y = 1000

ex2    = x * 5
 where y = 10
       x = 10 * 5 + y

ex3    = z / x + y
 where x = 7
       y = negate x
       z = y * 10

waxOn = x * 5
 where z = 7 
       x = y ^ 2
       y = z + 8

triple x = x * 3

waxOff x = triple x