module Chp5 where

--currying
-- curry f a b = f (a, b)
-- curry :: ((t1, t2) -> t) -> t1 -> t2 -> t
-- fst :: (a, b) -> a


fstString :: [Char] -> [Char] -- change ++ to ->
fstString x = x ++ " in the rain"
sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"
sing = if (x < y) then fstString x else sndString y
 where x = "Singin"
       y = "Somewhere"

main :: IO () -- type signature != function declaration
main = do
print (1 + 2)
putStrLn "10"
print (negate (-1)) 
print ((+) 0 blah) 
 where blah = negate 1

 --Type Kwon-do
f :: Int -> String
f = undefined
g :: String -> Char
g = undefined
h :: Int -> Char
h x = g (f x)

data A 
data B 
data C

q :: A -> B
q = undefined
w :: B -> C
w = undefined
e :: A -> C
e x = w (q x)

data X 
data Y
data Z

xz :: X -> Z 
xz = undefined
yz :: Y -> Z 
yz = undefined
xform :: (X, Y) -> (Z, Z) 
xform (x, y)= (xz x, yz y)

munge :: (x -> y) -> (y -> (w, z)) -> x -> w -- How to approach this?
munge xy ywz x = fst (ywz (xy x))
 

whatDoIDo :: (Integer -> Bool) -> (String -> Integer) -> String -> Bool
whatDoIDo bc ab a = bc ( ab ( a ) )
