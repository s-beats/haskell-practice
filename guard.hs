onlyLinux :: [Char] -> Bool
onlyLinux s
  | s == "Linux" = True
  | otherwise = False

main = do
  print $ onlyLinux "Linux"
  print $ onlyLinux "Windows"