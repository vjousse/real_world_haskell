import Data.List

xs = [[1,2,3],[1,3],[1]]

sortList :: [[a]] -> [[a]]
sortList xs = sortBy compareLength xs
    where compareLength a b = compare (length a)(length b)
