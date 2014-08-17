module Main where

import Types

describeLocation :: Location -> String
describeLocation loc = show loc ++ "\n" ++
  case loc of
    Home       -> "You are standing in the middle of the room at the wooden table."
    FriendYard -> "You are standing in front of the night garden behind the small wooden fence."
    Garden     -> "You are in the garden. Garden looks very well: clean, tonsured, cool and wet."
    otherwise  -> "No description available for location with name " ++ show loc ++ "."

evalAction :: Action -> String
evalAction act = "Action: " ++ show act ++ "!"

convertStringToAction :: String -> Action
convertStringToAction str = case reads str of
  [(x, _)] -> x
  _        -> Quit

walk :: Location -> Direction -> Location
walk Home North       = Garden
walk Home South       = FriendYard
walk FriendYard North = Home
walk FriendYard South = Garden
walk Garden North     = FriendYard
walk Garden South     = Home
walk curLoc _         = curLoc

run curLoc = do
  putStrLn (describeLocation curLoc)
  putStr "Enter command: "
  x <- getLine
  case (convertStringToAction x) of
    Quit             -> putStrLn "Be seen you..."
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
