main :: IO ()
main = do
  print (double 2)
  print (join "a" "b")

double :: Int -> Int
double n =
  n * 2

join :: String -> String -> String
join s1 s2 =
  s1 ++ s2
