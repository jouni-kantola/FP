yearsSince year = [year .. 2013]
name = "Jouni"
swedishAlphabet = ['a' .. 'z'] ++ ['å', 'ä', 'ö']
tentens = take 10 (repeat 10)
tenToHundead = [10, 20 .. 100]
initials firstName lastName = head firstName : head lastName : []
oddNumbers from to = [x | x <- [from .. to], odd x]