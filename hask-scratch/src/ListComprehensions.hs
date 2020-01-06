module ListComprehensions (listComprehensionsExamples) where

simpleListComprehension = [x * 2 | x <- [0..20]]

listComprehensionsExamples :: IO ()
listComprehensionsExamples = do
  print simpleListComprehension