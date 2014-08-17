module Main where

import Types
import GameAction

run :: Location -> IO ()
run curLoc = do
  let locDescr = describeLocation curLoc
  let objectsDescr = enumerateObjects (locationObjects curLoc)
  let fullDescr = locDescr ++ objectsDescr
  putStrLn fullDescr
  putStr "Enter command: "
  x <- getLine
  case (convertStringToAction x) of
    Quit             -> putStrLn "Be seen you..."
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
  putStrLn "Quest adventure on Haskell."
  run Home
