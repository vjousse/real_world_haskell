myLength :: [a] -> Int
myLength []   = 0
myLength (x:xs) = 1 + myLength(xs)

myAverage [] = 0
myAverage x = (sum x) / fromIntegral(length x)

palindrome :: [a] -> [a]
palindrome [] = []
palindrome (x:xs) = (x : palindrome(xs)) ++ (x:[])

isPalindrome :: Eq a => [a] -> Bool
isPalindrome []       = True
isPalindrome xs
    | odd(length xs)  = False
isPalindrome (a:b)
    | (a == (last b)) = isPalindrome(init b)
isPalindrome (_)      = False
