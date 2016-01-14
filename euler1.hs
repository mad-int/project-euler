-- projecteuler.net Problem 1

-- The tail-recursive version is the slowest.
-- Measured with ":+s" in ghci.
-- and the native version is the fastest of the looping ones.
-- With 10.000.000 as argument only the native version is working.
-- The other two looping ones die after a while.
-- The winner is, of course, the last non-looping version.

sum_three_five :: Integer -> Integer
-- native version:
--sum_three_five n
-- | n <= 2          = 0
-- | n `mod` 3 == 0  = n + sum_three_five (n-1)
-- | n `mod` 5 == 0  = n + sum_three_five (n-1)
-- | otherwise       = sum_three_five (n-1)

-- tail-recursive version:
--sum_three_five2 :: Integer -> Integer
--sum_three_five2 n =
-- let n_ =  if n `mod` 3 == 0 || n `mod` 5 == 0 then n else 0
-- in
--   if n <= 2 then 0
--   else n_ + sum_three_five2 (n-1)

-- higher-order functions on lists version:
--sum_three_five3 :: Integer -> Integer
--sum_three_five3 n =
--  sum $ map (\x -> if x `mod` 3 == 0 || x `mod` 5 == 0 then x else 0) [1 .. n]

-- Do this euler-trick for example alpha = 5 and n = 10:
--  0 + 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10  -- The sequence 0 .. 10.
-- 10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 + 0   -- The sequence 0 .. 10 reversed.
-- 10                + 10                 + 10  -- Only the numbers that are multiplies of 5 are added vertically.
-- k = 10/5 + 1 = 3
-- n = 10
-- Afterwards one needs to divide by 2 as two sequences have been added.
-- k*n = 30/2 = 5 + 10
sum_multiplies :: Integer -> Integer -> Integer
sum_multiplies alpha n =
  let
    n_ = n - (n `mod` alpha) -- n round down to the next multiple of alpha
    k = (n_ `div` alpha) + 1 --
  in
    k*n_ `div` 2

-- The multiples of 15 are contained in both the 3-and 5-sequence,
-- that means they are added up 2x.
-- And that means we need to substract them 1x.
-- sum_three_five4 :: Integer -> Integer
sum_three_five n = sum_multiplies 3 n + sum_multiplies 5 n - sum_multiplies (3*5) n

