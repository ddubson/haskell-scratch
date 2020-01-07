module Functions (patternMatching, guards) where

fact :: (Integral a) => a -> a
fact 0 = 1
fact n = n * fact (n - 1)

patternMatching :: IO ()
patternMatching = do
  putStrLn "Pattern matching example (Factorial)"
  putStrLn (show (fact 6))

weather :: (RealFloat a) => a -> String
weather reading
  | reading < 40.0 = "It's cold"
  | reading >= 40.0 && reading <= 70.0 = "It's nice"
  | reading > 70.0 = "It's warm"
  | otherwise = "I don't know."

guards :: IO ()
guards = do
  putStrLn "Guards example"
  print (weather 55.5)