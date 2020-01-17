module Functors (functorExamples, tupleFromInput) where

tupleFromInput :: String -> Maybe (String, String, Int)
tupleFromInput input =
  if length stringComponents /= 3
  then Nothing
  else Just (stringComponents !! 0, stringComponents !! 1, age)
  where
    stringComponents = words input
    age = (read (stringComponents !! 2) :: Int)

functorExamples :: IO ()
functorExamples = do
  -- Primitive example of a Maybe
  putStrLn . show . tupleFromInput $ "John Doe 32"