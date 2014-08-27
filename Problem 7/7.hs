
isPrime n = not $ any divisible $ takeWhile notTooBig [2..] where
  divisible x = n `mod` x == 0
  notTooBig x = x*x <= n 

primes = filter isPrime [2..]

main = print (primes !! 10000) -- Remember index starts at 0 so do one less

