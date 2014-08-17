module GameAction where

import Types

evalAction :: Action -> String
evalAction act = "Action: " ++ show act ++ "!"

convertStringToAction :: String -> Action
convertStringToAction str = case reads str of
  [(x, _)] -> x
  _        -> Quit
