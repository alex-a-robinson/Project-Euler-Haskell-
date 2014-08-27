fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

evenNums = [fib n | n <- [0..], even (fib n)]

answer = sum (takeWhile ( <= 4000000) evenNums))