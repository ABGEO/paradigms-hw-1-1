module Main where

import Homework

main :: IO ()
main = do
  let array = [5, 12, 16, 7, 10]
  print "Calculate the sum of the array"
  print (processList (+) array)

  print "Calculate the multiplier of the array"
  print (processList (*) array)
