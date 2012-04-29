data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving (Show)

simpleTree = Node "parent" (Node "Left child" Empty Empty)
                           (Node "Right child" Empty Empty)


data MaybeTree a = MaybeNode a (Maybe (MaybeTree a)) (Maybe (MaybeTree a))
                 deriving (Show)

simpleMaybeTree = MaybeNode "parent"
                    (Just(MaybeNode "Left child" Nothing Nothing))
                    (Just(MaybeNode "Right child" Nothing Nothing))
