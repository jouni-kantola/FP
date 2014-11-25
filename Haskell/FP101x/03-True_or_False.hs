import Prelude hiding ((&&),(||))
import Debug.Trace

a && b = if a then b else False

a || b
  | a == b = a
  | otherwise = True

main = do
  print $ True && True
  print $ False && True
  print $ True && False
  print $ False && False 
  print $ True || True
  print $ False || True
  print $ True || False
  print $ False || False