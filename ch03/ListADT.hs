data List a = Cons a (List a)
            | Empty
            deriving (Show)

fromList (x:xs) = Cons x (fromList xs)
fromList [] = Empty

toList (Cons x xs) = x:toList(xs)
toList Empty = []
