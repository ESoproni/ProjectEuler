problem36 :: Integer -> Integer

problem36 x
  | x == 0      = 0
  | mod x 2 > 0 = 3 * x + 1
  | otherwise   = div x 2
  
problem36Seq :: Integer -> [Integer]

problem36Seq x 
  | x == 1    = [1]
  | otherwise = x : problem36Seq (problem36 x)
  
main = print (length (problem36Seq 22))