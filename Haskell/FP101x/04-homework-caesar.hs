import Data.Char

upperOrLowerA :: Char -> Char
upperOrLowerA c
  | isLower c = 'a'
  | otherwise = 'A'

let2int :: Char -> Int
let2int c = ord c - ord (upperOrLowerA c)

int2let :: Int -> Char
int2let n = chr (ord (upperOrLowerA 'a') + n)

shift :: Int -> Char -> Char
shift n c
  | isAlpha c = int2let ((let2int c + n) `mod` 26)
  | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]
