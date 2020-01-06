module Main where

import Lists
import EuclidGCD
import ListComprehensions

main :: IO ()
main = do
  print "###### List examples ########"
  listFuncs
  print "#############################"
  print "###### Euclid Greatest Common Divisor (GCD) ###########"
  euclidGcd
  print "#############################"
  print "##### List Comprehensions ############"
  listComprehensionsExamples
  print "#########################################"
