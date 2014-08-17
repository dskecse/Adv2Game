data Location = Home
              | FriendYard
              | Garden
              | OtherRoom
      deriving (Eq, Show, Read)

-- Where to go using Walk and Go commands
data Direction = North
               | South
               | West
               | East
       deriving (Eq, Show, Read)

-- Player's actions
data Action = Look
            | Go
            | Inventory
            | Take
            | Drop
            | Investigate
            | Quit
            | Save
            | Load
            | New
    deriving (Eq, Show, Read)

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

run curLoc = do
  putStrLn (describeLocation curLoc)
  putStr "Enter command: "
  x <- getLine
  case (convertStringToAction x) of
    Quit             -> putStrLn "Be seen you..."
    conversionResult -> do
      putStrLn (evalAction conversionResult)
      putStrLn "End of turn.\n"
      run curLoc
