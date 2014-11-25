import Prelude hiding ((!!))
and_a [] = True
and_a (b : bs) = b && and bs
and_b [] = True
and_b (b : bs)
 | b = and bs
 | otherwise = False
and_e [] = True
and_e (b : bs) 
 | b == False = False
 | otherwise = and bs
and_g [] = True
and_g (b : bs) = and bs && b
and_h [] = True
and_h (b : bs)
 | b = b
 | otherwise = and bs
concat_b [] = []
concat_b (xs : xss) = xs ++ concat_b xss
replicate_d 0 _ = []
replicate_d n x = x : replicate_d (n - 1) x
(!!) :: [a] -> Int -> a 
(x : _) !! 0 = x
(_ : xs) !! n = xs !! (n - 1)
elem_a :: Eq a => a -> [a] -> Bool
elem_a _ [] = False
elem_a x (y : ys)
 | x == y = True
 | otherwise = elem_a x ys
merge_d :: Ord a => [a] -> [a] -> [a]
merge_d [] ys = ys
merge_d xs [] = xs
merge_d (x : xs) (y : ys)
 = if x <= y then x : merge_d xs (y : ys) else y : merge_d (x : xs) ys
halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs
msort_b :: Ord a => [a] -> [a]
msort_b [] = []
msort_b [x] = [x]
msort_b xs = merge_d (msort_b ys) (msort_b zs)
 where (ys, zs) = halve xs