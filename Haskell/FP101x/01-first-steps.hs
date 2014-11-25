double x = x + x
quadruple x = double (double x)
take_doubled x y = take (double x) y
factorial n = product [1..n]
average_infix ns = sum ns `div` length ns
average_parenthesis ns = div (sum ns) (length ns)
count_lists nss = length nss