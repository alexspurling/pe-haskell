divisibleUpToN x u = all (\d -> x `mod` d == 0) [u,u-1..2]
firstDivisibleByOneToN n = head (filter (flip (divisibleUpToN) n) [n,2*n..])
pe5 = firstDivisibleByOneToN 20