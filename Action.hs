onlyA :: Monad m => Char -> m [Char]
onlyA 'a' = return "ok"
onlyA _ = return "ng"

fact :: (Eq a, Num a, Monad m) => a -> m a
fact 0 = return 1
fact n = do
  n' <- fact (n - 1)
  return $ n * n'

-- fact n | n > 0 = n * fact (n - 1)

main = do
  r <- onlyA 'a'
  print r
  if r == "ok" then print "end" else main
  print =<< fact 5
