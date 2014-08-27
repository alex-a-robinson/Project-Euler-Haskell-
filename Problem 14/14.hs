import Data.List
import Data.Ord

nextTerm n = if (even n) then n `div` 2 else 3*n + 1

genSequence :: Int -> [Int]
genSequence 1 = [1]
genSequence n = n : genSequence (nextTerm n)

answer = head (maximumBy (comparing length) [genSequence x | x <- [1..999999]])