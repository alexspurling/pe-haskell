divisors n = [ x | x <- [1..floor (sqrt (fromIntegral n))], n `mod` x == 0]
primes = [x | x <- [2..], length (divisors x) == 1]
pe7 = primes !! (10001-1)