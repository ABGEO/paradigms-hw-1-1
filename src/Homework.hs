{-|
Module      : Homework
Description : CST Programming Paradigms - Homework 1.1
Copyright   : (c) Temuri Takalandze, 2020
License     : MIT
Maintainer  : me@abgeo.dev
Stability   : experimental
Portability : POSIX

The Homework module contains function 'processList'
summing or multiplying list depending on given operator.
-}
module Homework (processList) where

-- |The 'processList' function summing or multiplying
-- list depending on given operator.
processList :: (Int -> Int -> Int) -> [Int] -> Int
processList operator [] = 1 `operator` 1 == 1 ? 1 $ 0
processList operator (number:numbers) = number `operator` (processList operator numbers)

infixr 1 ?
(?) :: Bool -> a -> a -> a
(True ? a) _ = a
(False ? _) b = b
