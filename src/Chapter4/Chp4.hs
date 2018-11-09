
module Ch4 where

--Mood swing exersize
data Mood = Blah | Woot deriving Show
-- Blah and Woot equal data constructors
-- Dat

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

myAbs :: Int -> Int
myAbs word = 
    if word < 0 
        then negate word
    else word

f :: (a, b) -> (c, d) -> ((b, d), (a, c)) 
f x y = ((snd x, snd y), (fst x, fst y))

