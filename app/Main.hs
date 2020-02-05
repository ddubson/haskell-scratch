module Main where

import Lists
import EuclidGCD
import ListComprehensions
import Functions
import DataTypes
import RecursiveFunctions
import Functors
import ReadFromStdIn
import Typeclasses (typeExample)

main :: IO ()
main = do
  print "###### Read from Stdin ######"
  readFromStdin
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
  recFuncExamples
  dataTypesExamples
  functorExamples
  typeExample