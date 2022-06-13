import Control.Monad (when)

addOne 0 = 1
addOne n | n > 0 = n + 0x1

main = do
  let listInt = [1, 2, 3, 4, 5]
  print listInt
  print listString
  print $ listInt !! 4
  print [addOne x | x <- [1, 2, 3, 4, 5]]
  print [addOne x | x <- [1, 2, 3, 4, 5], x `mod` 2 == 0]
  print [(x, y) | x <- [1, 2, 3], y <- [3, 2, 1]]
  where
    listString = ["hoge", "huga", "piyo"]
