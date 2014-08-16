describeLocation :: Integer -> String
describeLocation locNumber = case locNumber of
  1 -> "You are standing in the middle of the room at the wooden table."
  2 -> "You are standing in front of the night garden behind the small wooden fence."
  -- Descriptions of other locations go here.
  otherwise -> "Unknown location."
