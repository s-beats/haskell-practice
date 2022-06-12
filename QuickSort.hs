-- 先頭の要素を取り出す
-- 先頭の要素未満の値の配列を作る
-- 先頭の要素以上の値の配列を作る
-- 配列はソートする
-- 結合する
-- https://qiita.com/7shi/items/0ece8c3394e1328267ed#%E3%82%AF%E3%82%A4%E3%83%83%E3%82%AF%E3%82%BD%E3%83%BC%E3%83%88

quickSort [] = []
quickSort (n : xs) = quickSort lt ++ [n] ++ quickSort gte
  where
    lt = [x | x <- xs, x < n]
    gte = [x | x <- xs, x >= n]

main = do
  print (quickSort [1, 3, 0, 4, 2, 5])
