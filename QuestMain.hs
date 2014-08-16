describeLocation :: String -> String
describeLocation locName = case locName of
  "Home"       -> "You are standing in the middle of the room at the wooden table."
  "FriendYard" -> "You are standing in front of the night garden behind the small wooden fence."
  otherwise    -> "Unknown location."
