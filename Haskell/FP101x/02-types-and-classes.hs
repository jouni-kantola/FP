e0 = [False, True, False, True]
e1 = [[1, 2], [3, 4]]
e2 = [[[1, 2, 3]], [[3, 4, 5]]]
e3 x = x * 2
e4 (x, y) = x
e5 (x, y, z) = z
e6 a b = a * b
e7 (x, y) = (y, x)
e7b (x, y) = y * x
e8 a b = (b, a)
e9 [x, y] = (x, True)
e10 (x, y) = [x, y]
e11 = ('\a', True)
e12 = ('a', 1)
e13a x y = x / y
e13b x y = x + y * y
e13c x = x * x
e13d x y = x * x - x
e14 = ("Haskell", [3.1, 3.14, 3.141, 3.1415])
e15a x y = (x, y)
e15b x y = (y, x)
e15c xs ys = (head xs, head ys)
e15d a b = [a, b]