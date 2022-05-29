-- main という関数
main :: IO ()
main = do
  print (double 2)

-- double という関数
double :: Int -> Int
double n =
  n * 2
