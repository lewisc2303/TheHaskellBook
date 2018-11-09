module Review where
    
--1 
stops = "pbtdkg"
vowels = "aeiou"
--a

tupleWords :: [(Char, Char, Char)]
tupleWords = go stops vowels stops
    where go stops' vowels' stops2'
            | stops2' == [] = []
            | stops' == [] = go stops vowels (tail stops2')
            | vowels' == [] = go (tail stops') vowels stops2'
            | otherwise = (head stops', head vowels', head stops2') : go stops' (tail vowels') stops2'

--b
pFilter :: [(Char, Char, Char)]
pFilter = filter f tupleWords
            where f = \(a, _, _) -> a == 'p'

--c 

noun = ["bat", "cat", "bone", "phone", "holiday", "camel", "monkey", "bottle", "fungus", "paper"]
verb = ["eats", "flys", "swims", "floats", "attacks", "sits", "falls", "swings", "shouts"]

tupleSentance :: [(String, String, String)]
tupleSentance = go noun verb
    where go noun' verb'
            | noun' == [] = []
            | verb' == [] = go (tail noun') verb
            | otherwise = (head noun', head verb', head noun') : go noun' (tail verb')        

--2/3
seekritFunc :: String -> Double
seekritFunc x =
    (/) average size
        where average = sum (map (fromIntegral . length) (words x))
              size = fromIntegral (length (words x))
