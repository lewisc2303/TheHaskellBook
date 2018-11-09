module General where
    import Data.Bool

    myHead :: [a] -> Maybe a
    myHead [] = Nothing
    myHead (x:_) = Just x

    eftBool :: Bool -> Bool -> [Bool]
    eftBool t r = enumFromTo t r

    eftOrd ::  Ordering -> Ordering -> [Ordering]
    eftOrd a b = enumFromTo LT GT

    -- myWords :: String -> [String]
    -- myWords word = [word1, word2]
    --     where 
    --         word1 = takeWhile (/= ' ') word 
    --         word2 = takeWhile (/= ' ') (dropWhile (== ' ') ((dropWhile (/= ' ') word)))

    myWords :: String -> Char -> [String]
    myWords [] ' ' = []
    myWords word x
                | (dropWhile (/= x) word == "") = [word]
                | otherwise = (head x) : (myWords (tail x) x)
                    where 
                        tail x = dropWhile (== x ) (dropWhile (/= x ) word)
                        head x = takeWhile (/= x ) word
    
    mySqr :: [Integer]                    
    mySqr = [x^2 | x <- [1..5]]

    myCube :: [Integer]
    myCube = [y^3 | y <- [1..5]]

    myTuple :: [(Integer, Integer)]
    myTuple = [(x, y) | x <- mySqr , y <- myCube, x < 50, y < 50]
    
    myNumber :: Int
    myNumber = length myTuple

    foldBool :: [Integer]
    foldBool = map (\x -> bool x (-x) (x==3)) [1..10]

    noMult3 :: [Integer]
    noMult3 = filter (\x -> mod x 3 == 0) [1..30]

    numMult3 :: Int
    numMult3 = length noMult3
    
    articles :: String -> Bool
    articles "an" = False
    articles "the" = False
    articles "a" = False
    articles _ = True

    noArticles :: String -> [String]
    noArticles = (filter (articles)) . words

    zipp :: [a] -> [b] -> [(a, b)]
    zipp _ [] = []
    zipp [] _ = []    
    zipp (x1:x1s) (x2:x2s) = (x1, x2) : (zipp x1s x2s)

    zippWith :: (a -> b -> c) -> [a] -> [b] -> [c]
    zippWith f _ [] = []
    zippWith f [] _ = []    
    zippWith f (x1:x1s) (x2:x2s) = (f x1 x2) : (zippWith f x1s x2s)