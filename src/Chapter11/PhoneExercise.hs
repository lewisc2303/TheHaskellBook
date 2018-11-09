module PhoneExercise where

import Data.Char 
    
type Digit = Char
type Presses = Int

data DaPhone = DaPhone Digit [Char]

one = DaPhone '1' "1"
two = DaPhone '2' "abc2"
three = DaPhone '3' "def3"
four = DaPhone '4' "ghi4"
five = DaPhone '5' "jkl5"
six = DaPhone '6' "mno6"
seven = DaPhone '7' "pqrs7"
eight = DaPhone '8' "tuv8"
nine = DaPhone '9' "wxyz9"
* = DaPhone '*' "^"
zero = DaPhone '0' "+_"
# = DaPhone '#' ".,"

convo :: [String] 
convo = 
    ["Wanna play 20 questions",
        "Ya",
        "U 1st haha",
        "Lol ok. Have u ever tasted alcohol lol",
        "Lol ya",
        "Wow ur cool haha. Ur turn",
        "Ok. Do u think I am pretty Lol",
        "Lol ya",
        "Haha thanks just making sure rofl ur turn"]

reverseTaps :: DaPhone -> Char -> [(Digit, Presses)] 
reverseTaps (DaPhone d c) 

--come back to