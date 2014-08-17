module GameAction where

import Types

describeLocation :: Location -> String
describeLocation loc = show loc ++ "\n" ++
  case loc of
    Home       -> "You are standing in the middle of the room at the wooden table."
    FriendYard -> "You are standing in front of the night garden behind the small wooden fence."
    Garden     -> "You are in the garden. Garden looks very well: clean, tonsured, cool and wet."
    otherwise  -> "No description available for location with name " ++ show loc ++ "."

describeObject :: Object -> String
describeObject Table    = "Good wooden table with drawer."
describeObject Umbrella = "Nice red mechanic Umbrella."
describeObject Phone    = "The phone has some voice messages for you."
describeObject MailBox  = "The MailBox is closed."
describeObject obj      = "There is nothing special about " ++ show obj

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
