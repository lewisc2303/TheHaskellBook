module As-Patterns where

f :: Show a => (a, b) -> IO (a, b) 
f t@(a, _) = do
            print a
            return t

isSubsequenceOf :: (Eq a) => [a] -> [a] -> Bool
isSubsequenceOf [] _ = True
isSubsequenceOf _ [] = False
isSubsequenceOf ax@(x:xs) (y:ys)  --The ax@ makes sure that (x:xs) does not change thorughout the recursion
  | x == y = isSubsequenceOf xs ys
  | otherwise = isSubsequenceOf ax ys