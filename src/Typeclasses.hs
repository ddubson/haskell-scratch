module Typeclasses (typeExample) where

-- Data class called Point is defined as having a constructor Pt with two Floating point numbers
data Point = Pt Float Float

-- Point data class is an instance of type Eq with the following definition
instance Eq Point where
  (Pt x y) == (Pt x' y') = x == x' && y == y'

typeExample :: IO ()
typeExample = do
  let pt1 = Pt 1 2
  let pt2 = Pt 1 2
  print . show $ pt1 == pt2