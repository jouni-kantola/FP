-- Linked lists
arr = 5 : [] -- linked list with head 5, tail []
arrs_head = head arr -- 5
arrs_tail = tail arr -- []
oneTwoThree = 1:2:3:[] -- [1,2,3]

multiply13 = [13,26..24*13] -- take 24 [13,26..]
yearsSince year = [year .. 2013]
name = "John Doe"
swedishAlphabet = ['a' .. 'z'] ++ ['å', 'ä', 'ö']
tentens = take 10 (repeat 10)
tenToHundead = [10, 20 .. 100]
twentyToOne = [20,19..1]
initials firstName lastName = head firstName : head lastName : []

-- List comprehensions
three = [x | x <- [1..10], x > 2, x < 5, odd x]
oddNumbers from to = [x | x <- [from .. to], odd x]
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
consonants text = [x | x <- text, not (x `elem` "aoueiy")]
multiplication_table = [[x * y | x <- [1..12]] | y <- [1..12]]
primes = 2 : 3 : [ x | x <- [ 5, 7 .. ], length [ y | y <- [ 3, 5 .. x ], y < x, x `mod` y == 0] == 0]