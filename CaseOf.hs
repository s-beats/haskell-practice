onlyPogitive n = case n of
  0 -> "zero"
  _ | n > 0 -> show n

main = do
  print $ onlyPogitive (-1)