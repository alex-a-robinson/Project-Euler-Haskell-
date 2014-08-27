factors n = filter (\x -> (n `mod` x) == 0) [2..n]

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = firstFactor : primeFactors nextFactor
  where
    firstFactor = (factors n) !! 0
    nextFactor = n `div` firstFactor
    
answer = maximum (primeFactors 600851475143)