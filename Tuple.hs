divmod x y = (x `div` y, x `mod` y)

main = do
  print $ divmod 4 2
  print a
  print b
  print c
  where
    a = divmod 4 2
    (b, c) = divmod 4 2