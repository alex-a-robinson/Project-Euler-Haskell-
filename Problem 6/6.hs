sumOfSquares = sum [x^2 | x <- [1..100]]
squareOfSum = (sum [1..100]) ^ 2
difference = abs(squareOfSum - sumOfSquares)