{-# LANGUAGE NPlusKPatterns #-}

import Data.Char
import Data.Foldable
import Data.List
import Data.Monoid
import Unsafe.Coerce

data Nat = Zero
         | Succ Nat
         deriving Show

natToInteger :: Nat -> Integer
natToInteger Zero = 0
natToInteger (Succ n) = (1 + natToInteger n)

natToInteger' :: Nat -> Integer
natToInteger' = \ n -> genericLength [c | c <- show n, c == 'S']

integerToNat :: Integer -> Nat
integerToNat 0 = Zero
integerToNat (n + 1) = Succ (integerToNat n)

--integerToNat' :: Integer -> Nat
--integerToNat' (n + 1) = Succ (integerToNat' n)
--integerToNat' 0 = Zero

--integerToNat' :: Integer -> Nat
--integerToNat' (n + 1) = let m = integerToNat' n in Succ m
--integerToNat' 0 = Zero

add :: Nat -> Nat -> Nat
add (Succ m) n = Succ (add n m)
add Zero n = n

mult m Zero = Zero
mult m (Succ n) = add m (mult m n)

data Tree = Leaf Integer
          | Node Tree Integer Tree

occurs :: Integer -> Tree -> Bool
occurs m (Leaf n) = m == n
occurs m (Node l n r)
  = case compare m n of
  	  LT -> occurs m l
  	  EQ -> True
  	  GT -> occurs m r

binaryTree = (Node (Node (Leaf 1) 3 (Leaf 4)) 5 (Node (Leaf 6) 7 (Leaf 9)))
shouldOccur = occurs 7 binaryTree
shouldNotOccur = occurs 8 binaryTree

data Tree' = Leaf' Integer
           | Node' Tree' Tree'

balanced :: Tree' -> Bool
leaves (Leaf' _) = 1
leaves (Node' l r) = leaves l + leaves r
balanced (Leaf' _) = True
balanced (Node' l r) = abs (leaves l - leaves r) <= 1 && balanced l && balanced r

balancedTree = (Node' (Node' (Leaf' 1) (Leaf' 4)) (Node' (Leaf' 6) (Leaf' 9)))
unbalancedTree = (Node' (Node' (Node' (Node' (Leaf' 3) (Leaf' 2)) (Leaf' 4)) (Leaf' 1)) (Node' (Leaf' 6) (Leaf' 9)))

balance :: [Integer] -> Tree'
halve xs = splitAt (length xs `div` 2) xs
balance [x] = Leaf' x
balance xs = Node' (balance ys) (balance zs)
  where (ys, zs) = halve xs

data Expr = Add Expr Expr | Val Int
