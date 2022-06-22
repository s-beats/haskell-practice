import Control.Monad (when)

addOne :: (Num p, Ord p) => p -> p
addOne 0 = 1
addOne n | n > 0 = n + 0x1

subOne :: (Num p, Ord p) => p -> p
subOne 0 = 0
subOne n | n > 0 = n - 0x1
subOne n | n < 0 = n + 0x1
subOne n | n == 0 = 0x0

main = do
  let listInt = [1, 2, 3, 4, 5]
  print listInt
  print listString
  print $ listInt !! 4
  print [addOne x | x <- [1, 2, 3, 4, 5]]
  print [addOne x | x <- [1, 2, 3, 4, 5], x `mod` 2 == 0]
  print [(x, y) | x <- [1, 2, 3], y <- [3, 2, 1], x - y == 0]
  print [subOne x | x <- [1, 2, 3, 4, 5]]
  print [subOne x | x <- [1, 2, 3, 4, 5], x `mod` 2 == 0]
  where
    listString = ["hoge", "huga", "piyo"]
