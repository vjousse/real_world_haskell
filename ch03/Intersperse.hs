intersperse :: a -> [[a]] -> [a]
intersperse delimiter [] = []
intersperse delimiter (x:[]) = x
intersperse delimiter (x:xs) = x ++ [delimiter] ++ (intersperse delimiter xs)
