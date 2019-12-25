module Lib
    ( interactiveDoubling
    ) where

import Text.Read

interactiveDoubling :: IO ()
interactiveDoubling = do
  putStrLn "Choose a number: "
  s <- getLine
  let mx = readMaybe s :: Maybe Double
  case mx of
    Just x -> putStrLn ("The double is: " ++ (show (double x)))
    Nothing -> do
      putStrLn "This is not a valid number. Retrying..."
      interactiveDoubling

double x = x * 2
