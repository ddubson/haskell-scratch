module Functors (functorExamples, tupleFromInput) where

-- A Functor takes a container of a (i.e. Maybe a), applies a function f, and returns a container of b (i.e Maybe b)
-- fmap (*2) (Just 2) --> Just 4
-- fmap (\x -> x / 5) (Nothing) --> Nothing

data Person = Person {
  firstName :: String,
  lastName :: String,
  age :: Int
}

personFromTuple :: (String, String, Int) -> Person
personFromTuple (fName, lName, age) = Person fName lName age

primitiveConvertTuple :: Maybe (String, String, Int) -> Maybe Person
primitiveConvertTuple Nothing = Nothing
primitiveConvertTuple (Just t) = Just (personFromTuple t)

-- A functor takes 2 inputs, and produces 1 output
functorConvertTuple :: Functor f => f (String, String, Int) -> f Person
functorConvertTuple = fmap personFromTuple

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
  -- Input of a string, is broken into a tuple, which then is converted into a
  -- maybe of Person data type
  let maybePerson = functorConvertTuple . tupleFromInput $ "John Doe 32"
  case maybePerson of
    Nothing -> print "Nothin'"
    Just person -> print . show . age $ person
