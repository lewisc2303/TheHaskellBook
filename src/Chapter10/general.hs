module General where


fibs = 1 : scanl (+) 1 fibs 
fibsT x = take x fibs

fibsTW x = takeWhile (<x) fibs  

--Try to write the factorial function from Recursion as a scan. 
--You’ll want scanl again, and your start value will be 1. 
--Warning: this will also generate an infinite list, so you may want to pass it through a take function or similar.

fact = 1 : scanl (*) 1 [1..] 
factTake = take 20 fact
