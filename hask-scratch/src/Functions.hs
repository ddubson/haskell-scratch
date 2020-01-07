module Functions (patternMatching) where

fact :: (Integral a) => a -> a
fact 0 = 1
fact n = n * fact (n - 1)

patternMatching :: IO ()
patternMatching = do
  putStrLn "Pattern matching example (Factorial)"
  putStrLn (show (fact 6))