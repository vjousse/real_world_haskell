data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving (Show)

simpleTree = Node "parent" (Node "Left child" Empty Empty)
                           (Node "Right child" (Node "Level 3" Empty (Node "Level 4" Empty Empty)) Empty)


-- Count Tree tree size using recursion
treeSize :: Tree[a] -> Int
treeSize Empty                = 0
treeSize (Node a Empty Empty) = 1
treeSize (Node a Empty r)     = 1 + treeSize r
treeSize (Node a l Empty)     = 1 + treeSize l
treeSize (Node a l r)         = max (1 + treeSize l) (1 + treeSize r)


data MaybeTree a = MaybeNode a (Maybe (MaybeTree a)) (Maybe (MaybeTree a))
                 deriving (Show)

simpleMaybeTree = MaybeNode "parent"
                    (Just(MaybeNode "Left child" Nothing Nothing))
                    (Just(MaybeNode "Right child" Nothing Nothing))
