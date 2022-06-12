quickSort [] = []
quickSort (n : xs) = quickSort lt ++ [n] ++ quickSort gte
  where
    lt = [x | x <- xs, x < n]
    gte = [x | x <- xs, x >= n]

main = do
  print (quickSort [1, 3, 0, 4, 2, 5])
