pyths_all n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]
pyths_right n = [(x,y,z) | x <- [1..n], y <- [x..n], z <- [y..n], x^2 + y^2 == z^2]
factors n = [x | x <- [1..n], n `mod` x == 0] -- sql/linq = where, haskell = guard
perfects n = [x | x <- [1..n], sum (init (factors x)) == x]
perfects_guard n = [x | x <- [1..n], isPerfect x] where isPerfect num = sum (init (factors num)) == num
another_way_to_do_it x y = concat [[(x,y) | x <- [1..3]] | y <- [4..6]]
find :: (Eq a) => a -> [(a, b)] -> [b]
find k t = [v | (k', v) <- t, k == k']
positions :: (Eq a) => a -> [a] -> [Int]
positions x xs = find x (zip xs [0..n])
  where n = length xs - 1
scalar_product xs ys = sum [ x * y | (x, y) <- xs `zip` ys]
riffle xs ys = concat [[x, y] | (x, y) <- zip xs ys]
divides :: Int -> Int -> Bool
divides x y = x `mod` y == 0
divisors :: Int -> [Int]
divisors x = [d | d <- [1..x], x `divides` d]