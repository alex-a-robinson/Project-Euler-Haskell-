factors n = filter (\x -> (n `mod` x) == 0) [1..(n `div` 2)]

d n = sum $ factors n

answer = sum [n | n <- [1..10000], ((d (d n)) == n) && ((d n) /= n)]