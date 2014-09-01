import Data.Char

factorial x = product [1..x]

digits :: [Char] -> [Int]
digits xs = [digitToInt x | x <- xs] 

answer =  sum $ digits $ show $ factorial 100