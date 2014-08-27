isPrime n = not $ any divisible $ takeWhile notTooBig [2..] where
  divisible x = n `mod` x == 0
  notTooBig x = x*x <= n 

primes = filter isPrime [2..]

answer = sum (takeWhile (\x -> x < 2000000) primes)