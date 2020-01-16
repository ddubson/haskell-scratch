module RecursiveFunctions (recFuncExamples) where

-- Get the the largest entity (has to be instance of Ord) in a list
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "max of empty list!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

-- Determine if an entity in a list exists
elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
  | a == x = True
  | otherwise = a `elem'` xs

-- Quicksort
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerOrEqual = [a | a <- xs, a <= x]
      larger = [a | a <- xs, a > x]
  in quicksort smallerOrEqual ++ [x] ++ quicksort larger

recFuncExamples :: IO ()
recFuncExamples = do
  -- feed a list to maximum' fn and then feed that result to print
  print . maximum' $ [5,25,32,3]

  -- feed a list to elem' fn with a member to find, then print the result
  print $ elem' 12 [4,3,2,6,4,12,3,5]

  -- Quicksort
  print . quicksort $ [5,6,2,7,12,8,234,8723,233,2,42,6]