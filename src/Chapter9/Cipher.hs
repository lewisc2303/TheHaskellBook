module Cipher where

    import Data.Char

    --let amount = 5

    toUniCode :: String -> [Int]
    toUniCode [] = []
    toUniCode (x:xs) = ord x : toUniCode xs 

    ceaser :: Int -> String -> [Int]
    ceaser amount word = map (+ amount) (toUniCode word)

    fromUniCode :: [Int] -> String
    fromUniCode [] = []
    fromUniCode (x:xs) = chr x : fromUniCode xs
       
    unceaser :: Int -> [Int] -> String
    unceaser amount unicode = fromUniCode (map (subtract amount) unicode)