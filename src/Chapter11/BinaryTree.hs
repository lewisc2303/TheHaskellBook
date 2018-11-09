
data BinaryTree a = 
    Leaf
    | Node (BinaryTree a) a (BinaryTree a) 
    deriving (Eq, Ord, Show)

insert' :: Ord a => a -> BinaryTree a -> BinaryTree a 
insert' b Leaf = Node Leaf b Leaf
insert' b (Node left a right)
    | b == a = Node left a right
    | b < a = Node (insert' b left) a right 
    | b > a = Node left a (insert' b right)

mapTree :: (a -> b) -> BinaryTree a -> BinaryTree b 
mapTree _ Leaf = Leaf
mapTree f (Node left a right) =
    Node (mapTree f left) (f a) (mapTree f right) 

preorder :: BinaryTree a -> [a]
preorder Leaf = []
preorder (Node left a right) = left ++ a ++ right 

foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree _ acc Leaf = acc
foldTree f acc tree = foldr f acc (preorder tree)

