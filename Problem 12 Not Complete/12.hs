import Data.List

factors n = filter (\x -> (n `mod` x) == 0) [2..n]

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = firstFactor : primeFactors nextFactor
  where
    firstFactor = (factors n) !! 0
    nextFactor = n `div` firstFactor
    
 
calcTriNum n = sum [1..n]

triNums = [calcTriNum x | x <- [1..]]

answer = head [x | x <- triNums, (length (factors x)) >= 4]

