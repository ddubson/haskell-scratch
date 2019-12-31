module Main where

import Lists
import EuclidGCD

main :: IO ()
main = do
  print "###### List examples ########"
  listFuncs
  print "#############################"
  print "###### Euclid Greatest Common Divisor (GCD) ###########"
  euclidGcd
  print "#############################"
