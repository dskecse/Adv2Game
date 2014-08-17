module Objects where

import Types

describeObject :: Object -> String
describeObject Table    = "Good wooden table with drawer."
describeObject Umbrella = "Nice red mechanic Umbrella."
describeObject Phone    = "The phone has some voice messages for you."
describeObject MailBox  = "The MailBox is closed."
describeObject obj      = "There is nothing special about " ++ show obj

locationObjects :: Location -> [Object]
locationObjects Home = [Table, Drawer, Umbrella, Phone]
locationObjects _    = []

enumerateObjects :: [Object] -> String
enumerateObjects []      = ""
enumerateObjects objects = "\nThere are some objects here: " ++ show objects

investigate :: Object -> [Object] -> String
investigate obj objects = case (obj `elem` objects) of
  True  -> describeObject obj
  False -> "You can't see any " ++ show obj ++ " here."
