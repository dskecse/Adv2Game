module Main where

import Types
import Objects
import Locations
import GameAction

run :: Location -> IO ()
run curLoc =
  let
    locObjects = locationObjects curLoc
    locDescr = describeLocation curLoc
    objectsDescr = enumerateObjects locObjects
    fullDescr = locDescr ++ objectsDescr
  in do
  putStrLn fullDescr
  putStr "Enter command: "
  x <- getLine
  case (convertStringToAction x) of
    Quit             -> putStrLn "Be seen you..."
    Investigate obj  -> do
      putStrLn (investigate obj locObjects)
      run curLoc
    Look             -> do
      putStrLn fullDescr
      run curLoc
    Go dir           -> do
      putStrLn ("\nYou're going to " ++ show dir ++ ".\n")
      run (walk curLoc dir)
    conversionResult -> do
      putStrLn (evalAction conversionResult)
      putStrLn "End of turn.\n"
      run curLoc

main = do
  putStrLn "Quest adventure on Haskell.\n"
  run Home
