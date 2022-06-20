data OS = Mac | Windows | Linux | IOS deriving (Show, Enum)

main = do
  print $ fromEnum Mac
  print $ fromEnum Windows
  print $ fromEnum Linux
  print $ fromEnum IOS
  --   $ではなく()で囲む
  print (toEnum 0 :: OS)
  print (toEnum 1 :: OS)
  print (toEnum 2 :: OS)
  print (toEnum 3 :: OS)
