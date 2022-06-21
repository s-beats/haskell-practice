import System.Random

randAlpha = randomRIO ('a', 'd')

main = do
  r <- randAlpha
  print r
  if r == 'd' then print "end" else main
