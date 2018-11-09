module Chp6 where
 --writing typeclass instances
 data Trivial =
    Trivial'

 instance Eq Trivial where
  Trivial' == Trivial' = True

--writing days of the week typeclass
 data DayOfWeek =
  Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Show)

 -- Date is a data type
 data Date =
  Date DayOfWeek Int

 instance Eq DayOfWeek where
    (==) Mon Mon = True 
    (==) Tue Tue = True 
    (==) Wed Wed = True
    (==) Thu Thu = True
    (==) Fri Fri = True
    (==) Sat Sat = True
    (==) Sun Sun = True
    (==) _ _ = False
    -- Dont fully get the below syntax (why indentation?)
 instance Eq Date where
    (==) (Date weekday dayOfMonth)
     (Date x y) =
     weekday == x && dayOfMonth == y

    --  (Date weekday' dayOfMonth') =
    --  weekday == weekday' && dayOfMonth == dayOfMonth'

 data Identity a = 
    Identity a   
 instance Eq a => Eq (Identity a) where
    (==) (Identity x) (Identity y) = x == y 

-- Ex Eq Instances
 data TisAnInteger = TisAn Integer

 instance Eq TisAnInteger where
   (==) (TisAn a) (TisAn b) = a == b

-- dont get the = a == b part?
 data TwoIntegers = Two Integer Integer

 instance Eq TwoIntegers where
  (==) (Two a1 a2) (Two b1 b2) = a1 == b1 && a2 == b2 

 data StringOrInt = 
  TisAnInt Int | TisAString String
 
 instance Eq StringOrInt where
  (==) (TisAnInt a1) (TisAnInt b1) = a1 == b1
  (==) (TisAString a1) (TisAString b1) = a1 == b1

 data Pair a =
  Pair a a

 instance Eq a => Eq (Pair a) where
  (==) (Pair a1 b1) (Pair a2 b2) = a1 == a2 && b1 == b2 -- only works for Num, not string. Why?

 data Tuple a b =
  Tuple a b 
 
 instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a1 b1) (Tuple a2 b2) = a1 == a2 && b1 == b2 -- same as above

 data Which a =
  ThisOne a | ThatOne a

 instance Eq a => Eq (Which a) where
  (==) (ThisOne a1) (ThisOne a2) = a1 == a2
  (ThatOne a1) == (ThatOne a2) = a1 == a2

 data EitherOr a b =
  Hello a
  | Goodbye b
  
 instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a1) (Hello a2) = a1 == a2
  (==) (Goodbye b1) (Goodbye b2) = b1 == b2 
  (==) _ _                      = False


-- test :: Pair
-- test = if ((==) (Pair 1 1) (Pair 1 1 ) == True) 
--       then printStrLn "test complete"
--       else printStrLn "test failed" 


-- Exercises: Tuple Experiment

--  quottRem :: Integral a => a -> a -> (a, a)
--  quotRem x1 y1 = (x1 quot y1, x1 rem y1)

--  divvMod :: Integral a => a -> a -> (a, a)
--  divMod x2 y2 = (x2 div y2, x2 mod y2)

 instance Ord DayOfWeek where
  compare Fri Fri = EQ 
  compare Fri _ = GT
  compare _ Fri = LT
  compare _ _ = EQ

  instance Eq Colour where 
    (==) Green Green = True
    (==) Blue Blue = True
    (=) Red Red = True
    (==) Red _ = False
    (==) _ _ = False