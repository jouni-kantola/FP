n = a `div` length xs
 where a = 10
       xs = [1,2,3,4,5]

n2 = div a (head (reverse xs))
 where a = 100
       xs = [1,2,3,4,5,7,8,9,10]

cs = [1..10]

f = last cs
f2 = drop (length cs - 1) cs
f3 = head (drop (length cs - 1) cs)
f4 = tail (reverse cs)
f5 x = div x (head (reverse cs))

count [] = 0
count (x:xs) = 1 + count xs

prod [] = 1
prod (x:xs) = x * prod xs

xs = [1,1,3,5,4,2,2]

qsort [] = []
qsort (x : xs) = qsort larger ++ [x] ++ qsort smaller
 where smaller = [a | a <- xs, a <= x]
       larger = [b | b <- xs, b > x]

qsort2 [] = []
qsort2 (x : xs) = reverse(qsort2 larger ++ [x] ++ qsort2 smaller)
 where smaller = [a | a <- xs, a <= x]
       larger = [b | b <- xs, b > x]

qsort3 [] = []
qsort3 (x : xs) = qsort3 larger ++ qsort3 smaller ++ [x]
 where smaller = [a | a <- xs, a <= x]
       larger = [b | b <- xs, b > x]

qsort4 [] = []
qsort4 (x : xs)
 = reverse (qsort4 smaller) ++ [x] ++ reverse (qsort4 larger)
 where smaller = [a | a <- xs, a <= x]
       larger = [b | b <- xs, b > x]

qsort5 [] = []
qsort5 (x : xs) = qsort5 larger ++ [x] ++ qsort5 smaller
 where larger = [a | a <- xs, a > x || a == x]
       smaller = [b | b <- xs, b < x]

qsort6 [] = []
qsort6 (x : xs) 
 = reverse
  (reverse (qsort6 smaller) ++ [x] ++ reverse (qsort6 larger))
 where smaller = [a | a <- xs, a <= x]
       larger = [b | b <- xs, b > x]

qsort7 [] = []
qsort7 (x : xs) = qsort7 larger ++ qsort7 smaller
 where x = maximum xs
       smaller = [a | a <- xs, a < x]
       larger = [b | b <- xs, b >= x]