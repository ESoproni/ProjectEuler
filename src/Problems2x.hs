module Problems2x where

{-- Problem 28

Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:
21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13

It can be verified that the sum of the numbers on the diagonals is 101.
What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?
--}

sumCorners :: Int -> Int
{-- x is the corner with highest value which is in turn the size of one side ^ 2 --}
sumCorners x
  | mod x 2 == 0                 = error "must be an odd number"
  | x == 1                       = 1
  | truncate(sqrt (fromIntegral x)) ^ 2  /= x = error "must be an integer which fulfills x^2"
  | x > 1                        = sum[x - (y * (truncate (sqrt (fromIntegral x)) - 1))|y <- [0..3]]

spDiagSum :: Int -> Int
{-- sum of the diagonals in a spiral, where x is the size of the side --}
spDiagSum x
  | x == 1          = x
  | mod x 2 == 0    = error "must be an odd number"
  | x > 1           = sum[ sumCorners (y^2) | y <- [x,x-2..1]]
  
problem28 :: Int
problem28 = spDiagSum 1001  