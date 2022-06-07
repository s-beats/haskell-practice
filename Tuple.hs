divmod x y = (x `div` y, x `mod` y)

main = do
  print $ divmod 4 2
  print a
  print b
  print c
  print $ fst a
  print $ snd a
  print t1
  print t2
  where
    a = divmod 4 2
    (b, c) = divmod 4 2
    triple = (1, 2, 3)
    (t1, t2, _) = triple