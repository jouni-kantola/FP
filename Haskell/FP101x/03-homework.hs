xs = [1,2,3,4,5]
-- ex0a_halve xs = (take n xs, drop n xs)
 -- where n = ((length xs) / 2)
ex0b_halve xs = splitAt (length xs `div`2) xs
ex0c_halve xs = (take (n `div` 2) xs, drop (n `div` 2) xs)
 where n = length xs
ex0f_halve xs = splitAt (div (length xs) 2) xs
-- ex0g_halve xs = splitAt (length xs / 2) xs
ex0h_halve xs = (take n xs, drop n xs)
 where n = length xs `div` 2
ex1a_safetail xs = if null xs then [] else tail xs
ex1b_safetail [] = []
ex1b_safetail (x : xs) = xs
ex1c_safetail (_ : xs)
 | null xs = []
 | otherwise = tail xs
ex1d_safetail xs
 | null xs = []
 | otherwise = tail xs
ex1g_safetail [x] = [x]
ex1g_safetail (_ : xs) = xs
ex1h_safetail
 = \ xs ->
  case xs of
  	[] -> []
  	(_ : xs) -> xs
--ex4a_mult x y z = \ x -> (\ y -> (\ z -> x * y * z))
--ex4b_mult = \ x -> (x * \ y -> (y * \ z -> z))
ex4c_mult = \ x -> (\ y -> (\ z -> x * y * z))
-- f x g y == ((f x) g) y
remove n xs = take n xs ++ drop (n + 1) xs
funct :: Int -> [a] -> [a]
funct x xs = take (x + 1) xs ++ drop x xs