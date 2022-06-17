import Debug.Trace

merge xs [] = trace ("A " ++ show xs ++ []) xs
merge [] ys = trace ("B " ++ show ys ++ []) ys
merge (x : xs) (y : ys)
  | x < y = trace ("C " ++ show (x : xs) ++ show (y : ys)) x : merge xs (y : ys)
  | otherwise = trace ("D " ++ show (x : xs) ++ show (y : ys)) y : merge (x : xs) ys

mergeSort [] = trace ("E ") []
mergeSort [x] = trace ("F " ++ show [x]) [x]
mergeSort xs = trace ("G " ++ show xs) merge (mergeSort (take h xs)) (mergeSort (drop h xs))
  where
    h = (length xs) `div` 2

main = do
  print (mergeSort [1, 0, 3, 5])
