arr = 5 : [] -- linked list with head 5, tail []
arrs_head = head arr -- 5
arrs_tail = tail arr -- []

-- List comprehensions
three = [x | x <- [1..10], x > 2, x < 5, odd x]
consonants text = [x | x <- text, not (x `elem` "aoueiy")]
multiplication_table = [[x * y | x <- [1..12]] | y <- [1..12]]
primes = 2 : 3 : [ x | x <- [ 5, 7 .. ], length [ y | y <- [ 3, 5 .. x ], y < x, x `mod` y == 0] == 0]
