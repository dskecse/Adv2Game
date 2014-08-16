data Location = Home | FriendYard | Garden

describeLocation :: Location -> String
describeLocation loc = case loc of
  Home       -> "You are standing in the middle of the room at the wooden table."
  FriendYard -> "You are standing in front of the night garden behind the small wooden fence."
  Garden     -> "You are in the garden. Garden looks very well: clean, tonsured, cool and wet."
