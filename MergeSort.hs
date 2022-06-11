merge xs [] = xs
merge [] ys = ys
merge (x : xs) (y : ys)
  | x < y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys

mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort (take h xs)) (mergeSort (drop h xs))
  where
    h = (length xs) `div` 2

main = do
  print (mergeSort [1, 0, 3, 5])
