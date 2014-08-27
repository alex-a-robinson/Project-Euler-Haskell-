import Data.Char

num = show (2^1000)

digits :: [Char] -> [Int]
digits xs = [digitToInt x | x <- xs]

answer = sum $ digits num