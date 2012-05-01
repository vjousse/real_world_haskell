data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving (Show)

simpleTree = Node "parent" (Node "Left child" Empty Empty)
                           (Node "Right child" (Node "Level 3" Empty (Node "Level 4" Empty Empty)) Empty)


-- Count Tree tree size using recursion
treeSize :: Tree[a] -> Int
treeSize Empty                = 0
treeSize (Node a l r)         = 1 + max (treeSize l) (treeSize r)


data MaybeTree a = MaybeNode a (Maybe (MaybeTree a)) (Maybe (MaybeTree a))
                 deriving (Show)

simpleMaybeTree = MaybeNode "parent"
                    (Just(MaybeNode "Left child" Nothing Nothing))
                    (Just(MaybeNode "Right child" Nothing Nothing))
