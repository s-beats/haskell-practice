insert x [] = [x]
insert x (y : ys)
  | x < y = x : y : ys
  | otherwise = y : insert x ys

insertSort [] = []
insertSort (x : xy) = insert x $ insertSort xy

main = do
  print $ insertSort [12, 4, 1, 9, 3, 5]
