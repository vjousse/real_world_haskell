safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead xs = Just $ head xs

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail xs = Just $ tail xs

safeInit :: [a] -> Maybe [a]
safeInit [] = Nothing
safeInit xs = Just $ init xs

splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith predicate [] = []
splitWith predicate xs = case break predicate xs of
    ([], b) -> splitWith predicate(tail b)
    (a, b)  -> [a] ++ (splitWith predicate b)

main = print $ splitWith splittableChar "test a eueua eaeaauw"
    where splittableChar a = a == 'a'

--main = print $ break splittableChar "a eueua eaeaau"
--    where splittableChar a = a == 'a'
