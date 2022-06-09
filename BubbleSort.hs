swap [x] = [x]
swap (x : y : ys)
  | x < y = y : swap (x : ys)
  | otherwise = x : swap (y : ys)

bubbleSort [] = []
bubbleSort xs = x : bubbleSort ys
  where
    (x : ys) = reverse $ swap xs

main = do
  print $ swap [0, 3, 5, 4, 1, 2]
  print $ bubbleSort [0, 3, 5, 4, 1, 2]