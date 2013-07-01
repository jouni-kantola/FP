--subtract x y = x - y -- already defined as x y == y - x
add x y = x + y
multiply x y = x * y
divide x y = x / y

subtract_test = True == ((subtract 3 5) == 2)
add_test = True == ((add 5 3) == 8)
multiply_test = True == ((multiply 5 3.1) == 15.5)
divide_test = True == ((divide 5 2) == 2.5)