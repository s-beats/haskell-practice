import Control.Monad.Error.Class (Error (strMsg))
import Data.Char

rot13char ch
  | 'a' <= ch && ch <= 'm'
      || 'A' <= ch && ch <= 'M' =
    chr $ ord ch + 13
  | 'n' <= ch && ch <= 'z'
      || 'N' <= ch && ch <= 'Z' =
    chr $ ord ch - 13
  | otherwise = ch

-- rot13 :: [Char] -> [Char]

-- rot13 :: [Char] -> [Char]
rot13 str
  | str == "" = str
  | otherwise = rot13char (head str) : rot13 (drop 1 str)

main = do
  print $ ord '😌'
  print $ chr 10
  print $ rot13 "Hello, World"