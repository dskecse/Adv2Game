data Location = Home
              | FriendYard
              | Garden
      deriving (Eq)

-- Where to go using Walk and Go commands
data Direction = North
               | South
               | West
               | East
       deriving (Eq)

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
    deriving (Eq)

describeLocation :: Location -> String
describeLocation loc = case loc of
  Home       -> "You are standing in the middle of the room at the wooden table."
  FriendYard -> "You are standing in front of the night garden behind the small wooden fence."
  Garden     -> "You are in the garden. Garden looks very well: clean, tonsured, cool and wet."
