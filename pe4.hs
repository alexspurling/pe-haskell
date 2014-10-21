isPalindrome :: Integer -> Bool
isPalindrome n = isPalindromeStr (show n)

isPalindromeStr :: (Eq a) => [a] -> Bool
isPalindromeStr s
    | length s <= 1 = True
    | otherwise = (head s) == (last s) && isPalindromeStr (tail (init s))

isPalindrome2 n = s == (reverse s) where s = show n

threeDigitProducts = [ a * b | b <- [100..999], a <- [100..999] ]

pe4 = last (filter isPalindrome2 threeDigitProducts)