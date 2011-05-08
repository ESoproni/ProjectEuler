module Fibonacci where
--take integer x and return the first x numbers in the Fibonacci sequence

{-- fibonacci :: Int -> Int


    Fibonacci 0 = 0
    Fibonacci 1 = 1
    Fibonacci 2 = 1
    Fibonacci x = Fibonacci(x - 1) + Fibonacci (x - 2) --}
    
-- a more elegant and effective solution
fibonacci = 1:2:zipWith(+) fibonacci (tail fibonacci)    

--  [1,2]: zipWith(+) [1,2]     [2]     ==> [1,2]:[1+2]         ==> [1,2,3]
--  [1,2]: zipWith(+) [1,2,3]   [2,3]   ==> [1,2]:[1+2,2+3]     ==> [1,2,3,5]
--  [1,2]: zipWith(+) [1,2,3,5] [2,3,5] ==> [1,2]:[1+2,2+3,3+5] ==> [1,2,3,5,8]
