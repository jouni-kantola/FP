isTrue x = x == True

takeWhile' _ [] = []
takeWhile' p (x : xs) 
  | p x = x : takeWhile' p xs
  | otherwise = []

dropWhile' _ [] = []
dropWhile' p (x : xs)
  | p x = dropWhile' p xs
  | otherwise = x : xs

ex5_map_a f = foldr (\ x xs -> xs ++ [f x]) []
ex5_map_c f = foldl (\ xs x -> f x : xs) []
ex5_map_d f = foldl (\ xs x -> xs ++ [f x]) []

unfold p h t x
  | p x = []
  | otherwise = h x : unfold p h t (t x)

int2bin = unfold (== 0) (`mod` 2) (`div` 2)

chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)
chop8' = unfold null (take 8) (drop 8)