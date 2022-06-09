swap [x] = [x]
swap (x : y : ys)
  | x < y = y : swap (x : ys)
  | otherwise = x : swap (y : ys)

main = do
  print $ swap [3, 5, 1, 2]