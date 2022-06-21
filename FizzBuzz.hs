fizzbuzz :: (Integral a, Show a) => a -> [Char]
fizzbuzz n
  | n `mod` 15 == 0 = "FizzBuzz"
  | n `mod` 3 == 0 = "Fizz"
  | n `mod` 5 == 0 = "Buzz"
  | otherwise = show n

main :: IO ()
main = do
  print $ map fizzbuzz [1 .. 50]
