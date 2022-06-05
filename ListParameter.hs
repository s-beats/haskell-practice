onlyFirst (x : _) = x

onlySecond (_ : x : _) = x

main = do
  print $ onlyFirst [1, 2]
  print $ onlySecond [1, 2, 3]
