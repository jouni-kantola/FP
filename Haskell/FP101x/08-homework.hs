putStr' [] = return ()
putStr' (x : xs) = putChar x >> putStr' xs

putStrLn' [] = putChar '\n'
putStrLn' xs = putStr' xs >> putStrLn' ""

getLine' = get []
get :: String -> IO String
get xs
  = do x <- getChar
       case x of
         '\n' -> return xs
         _ -> get (xs ++ [x])

interact' :: (String -> String) -> IO ()
interact' f
  = do input <- getLine'
       putStrLn' (f input)

--sequence_' :: Monad m => [m a] -> m ()
--sequence_' ms = foldr (>>) (return ()) ms
--sequence_' [] = return ()
--sequence_' (m : ms) = m >>= \ _ -> sequence_' ms

sequence' :: Monad m => [m a] -> m [a]
sequence' ms = foldr func (return []) ms
  where 
  	func :: (Monad m) => m a -> m [a] -> m [a]
  	func m acc
  	  = do x <- m
  	       xs <- acc
  	       return (x : xs)

mapM' :: Monad m => (a -> m b) -> [a] -> m [b]
mapM' f [] = return []
mapM' f (a : as)
  = f a >>= \ b -> mapM' f as >>= \ bs -> return (b : bs)

filterM' :: Monad m => (a -> m Bool) -> [a] -> m [a]
filterM' _ [] = return []
filterM' p (x : xs)
  = do flag <- p x
       ys <- filterM' p xs
       if flag then return (x : ys) else return ys

foldLeftM :: Monad m => (a -> b -> m a) -> a -> [b] -> m a
foldLeftM f a [] = return a
foldLeftM f a (x : xs) = f a x >>= \fax -> foldLeftM f fax xs

liftM :: Monad m => (a -> b) -> m a -> m b
liftM f m = m >> \ a -> return (f a)