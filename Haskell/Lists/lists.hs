oneTwoThree = 1:2:3:[] -- [1,2,3]
multiply13 = [13,26..24*13] -- take 24 [13,26..]
yearsSince year = [year .. 2013]
name = "Jouni"
swedishAlphabet = ['a' .. 'z'] ++ ['å', 'ä', 'ö']
tentens = take 10 (repeat 10)
tenToHundead = [10, 20 .. 100]
twentyToOne = [20,19..1]
initials firstName lastName = head firstName : head lastName : []
oddNumbers from to = [x | x <- [from .. to], odd x]
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]