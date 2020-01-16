module RecursiveFunctions (recFuncExamples) where

-- Get the the largest entity (has to be instance of Ord) in a list
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "max of empty list!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

recFuncExamples :: IO ()
recFuncExamples = do
  -- feed a list to maximum' fn and then feed that result to print
  print . maximum' $ [5,25,32,3]