module Fibonacci where
--take integer x and return the first x numbers in the Fibonacci sequence

{-- fibonacci :: Int -> Int


    Fibonacci 0 = 0
    Fibonacci 1 = 1
    Fibonacci 2 = 1
    Fibonacci x = Fibonacci(x - 1) + Fibonacci (x - 2) --}
    
-- a more elegant and effective solution
fibonacci = 1:2:zipWith(+) fibonacci (tail fibonacci)    