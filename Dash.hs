sum' [] = 0
sum' (x : xs) = x + sum' xs

-- https://stackoverflow.com/questions/33732513/why-does-product-return-1
product' [] = 1
product' (x : xs) = x * product' xs

take' _ [] = []
take' n _ | n <= 0 = []
take' n (x : xs) = x : take' (n -1) xs

drop' _ [] = []
drop' n xs | n <= 0 = xs
drop' n (_ : xs) = drop' (n -1) xs

reverse' [] = []
reverse' (x : xs) = reverse' xs ++ [x]

main = do
  print $ sum' [10 .. 15]
  print $ product' [1 .. 5]
  print $ take' 3 [1, 2, 3, 4, 5]
  print $ drop' 1 [1, 2, 3]
  print $ reverse' [1 .. 10]
