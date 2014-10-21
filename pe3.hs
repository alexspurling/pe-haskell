divisors n = [ x | x <- [1..floor (sqrt (fromIntegral n))], n `mod` x == 0]
primes = [x | x <- [2..], length (take 2 (divisors x)) == 1]

primeFactors n = factors n primes
factors 1 _ = []
factors n (p:ps)
    | n `mod` p == 0 = p : factors (n `div` p) (p:ps)
    | otherwise = factors n ps
    
pe3 = last (primeFactors 600851475143 )