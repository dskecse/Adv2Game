module Types where

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
            | Go Direction
            | Inventory
            | Take
            | Drop
            | Investigate Object
            | Quit
            | Save
            | Load
            | New
    deriving (Eq, Show, Read)

data Object = Table
            | Umbrella
            | Drawer
            | Phone
            | MailBox
            | FriendKey
    deriving (Eq, Show, Read)
