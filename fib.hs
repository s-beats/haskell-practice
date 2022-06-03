fib :: (Eq a, Num a, Num p) => a -> p
fib 0 = 0
fib 1 = 1
fib n = fib (n -1) + fib (n -2)

fibGuard :: (Eq a, Num a, Num p) => a -> p
fibGuard n
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fib (n -1) + fib (n -2)

main = do
  print $ fib 6
  print $ fibGuard 6
