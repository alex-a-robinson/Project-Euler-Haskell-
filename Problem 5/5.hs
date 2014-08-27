import Data.List

factors n = filter (\x -> (n `mod` x) == 0) [2..n]

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = firstFactor : primeFactors nextFactor
  where
    firstFactor = (factors n) !! 0
    nextFactor = n `div` firstFactor
    
primeCount :: [Int] -> [(Int, Int)]
primeCount xs = [(x, 1) | x <- xs]

mergePrimes :: [(Int, Int)] -> [(Int, Int)]
mergePrimes xs = foldl merge [] xs 
  where
    merge :: [(Int, Int)] -> (Int, Int) -> [(Int, Int)]
    merge [] someTuple = [someTuple]
    merge xs someTuple = (init xs) ++ (merge2 (last xs) someTuple) 
      where
        merge2 :: (Int, Int) -> (Int, Int) -> [(Int, Int)]
        merge2 (a, b) (c, d) = if (a == c) then [(a, b + d)] else [(a, b), (c, d)] 
        
factorsOf1to20 = concatMap (\x -> mergePrimes $ primeCount $ primeFactors x) [2..20]

sortGT (a1, b1) (a2, b2)
  | a1 < a2 = GT
  | a1 > a2 = LT
  | a1 == a2 = compare b1 b2
  


groupedSortedPrimeFactors = groupBy (\x y -> (fst x) == (fst y)) (sortBy sortGT factorsOf1to20)

heighestPrimeCount = map last groupedSortedPrimeFactors
primePowers = map (\(x,y) -> x ^ y) heighestPrimeCount
answer = product primePowers



