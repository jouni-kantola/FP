let arr = 5 : [] -- linked list with head 5, tail []
head arr -- 5
tail arr -- []

-- List comprehensions
[x | x <- [1..10], x < 5, x > 2]
[x | x <- "outrageous", not (elem x "aoueiy")]
[x | x <- "outrageous", not (x `elem` "aoueiy")]
[[x * y | x <- [1..12]] | y <- [1..12]]