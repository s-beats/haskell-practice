import Control.Monad (when)

main = do
  let listInt = [1, 2, 3, 4, 5]
  print listInt
  print listString
  print $ listInt !! 4
  where
    listString = ["hoge", "huga", "piyo"]
