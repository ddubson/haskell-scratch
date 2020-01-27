module ReadFromStdIn (readFromStdin) where

readFromStdin :: IO ()
readFromStdin = do
    putStrLn $ "Hello, World."
    putStrLn $ "Please enter some input: "
    inputString <- getLine
    putStrLn $ inputString