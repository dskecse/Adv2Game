module Locations where

import Types

describeLocation :: Location -> String
describeLocation loc = show loc ++ "\n" ++
  case loc of
    Home       -> "You are standing in the middle of the room at the wooden table."
    FriendYard -> "You are standing in front of the night garden behind the small wooden fence."
    Garden     -> "You are in the garden. Garden looks very well: clean, tonsured, cool and wet."
    otherwise  -> "No description available for location with name " ++ show loc ++ "."

walk :: Location -> Direction -> Location
walk Home North       = Garden
walk Home South       = FriendYard
walk FriendYard North = Home
walk FriendYard South = Garden
walk Garden North     = FriendYard
walk Garden South     = Home
walk curLoc _         = curLoc
