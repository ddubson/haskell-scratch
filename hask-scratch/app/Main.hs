module Main where

import Lists
import EuclidGCD
import ListComprehensions
import Functions

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
  patternMatching
  guards