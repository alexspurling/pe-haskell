squareSum n = s ^ 2 where s = sum [1..n]
sumSquares n = sum [ x^2 | x <- [1..n] ]

pe6 = squareSum 100 - sumSquares 100