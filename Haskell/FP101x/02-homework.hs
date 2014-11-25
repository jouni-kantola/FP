ex4 = [tail, init, reverse]
ex5 xs = head (tail xs)
ex6 (x, y) = (y, x)  -- ex6 == swap
ex7 x y = (x, y) -- ex7 == pair
ex8 x = x * 2
ex9_palindrome xs = reverse xs == xs
ex10_twice f x = f (f x)
ex18_f xs = take 3 (reverse xs)