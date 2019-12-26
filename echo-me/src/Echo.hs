module Echo
    ( echoMe
    ) where

import Text.Read

-- reads as 'echoMe function has the type of IO type class that takes in a `unit` type'
-- in reality, echoMe is an action, an IO monad that produces nothing aka ()
echoMe :: IO ()
echoMe = do
  putStrLn "Say something: "
  userInput <- getLine
  let maybeOfUserInput = readMaybe userInput :: Maybe String -- the double colon and thereafter is what is called a `type annotation` - helps the compiler understand the statement on the left
  case maybeOfUserInput of
    Just x -> putStrLn ("You said: " ++ x)
    Nothing -> do
      putStrLn "You didn't say anything. Try again!"
      echoMe
