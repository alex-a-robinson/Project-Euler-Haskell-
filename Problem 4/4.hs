digits :: Integral x => x -> [x]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]

isPalindrome xs = (take ((length xs) `div`  2) xs) == (take ((length xs) `div`  2) (reverse xs))

threeDigitMultiples = [x * y | x <- [100..999], y <- [100..999]]

palindromes = [x | x <- threeDigitMultiples, isPalindrome (digits x)]

main :: IO ()

main = do
  print (maximum palindromes)


