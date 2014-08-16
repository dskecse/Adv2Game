import Data.Char

upperCaseString :: String -> String
upperCaseString str = map toUpper str

describeLocation :: String -> String
describeLocation locName = case (upperCaseString locName) of
  "HOME"       -> "You are standing in the middle of the room at the wooden table."
  "FRIENDYARD" -> "You are standing in front of the night garden behind the small wooden fence."
  otherwise    -> "Unknown location."
