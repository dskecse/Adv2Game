prod x y = x * y
printString str = putStrLn str

printSqrt1 x =
  if x < 0
  then putStrLn "x < 0!"
  else putStrLn ("Sqrt of " ++ show x ++ " = " ++ show (sqrt x))

printSqrt2 x = case x < 0 of
  True  -> putStrLn "x < 0!"
  False -> putStrLn ("Sqrt of " ++ show x ++ " = " ++ show (sqrt x))

thinkAboutSquaredX x = case x of
  0.0  -> "I think, x is 0, because 0 * 0 = 0."
  1.0  -> "x is 1, because 1 * 1 = 1."
  4.0  -> "Well, x is 2, because 2 * 2 = 4."
  9.0  -> "x = 3."
  16.0 -> "No way, x = 4."
  25.0 -> "Ha! x = 5!"
  otherwise -> if x < 0 then "x < 0!" else "Sqrt of " ++ show x ++ " = " ++ show (sqrt x)

describeLocation locNumber = case locNumber of
  1 -> "You are standing in the middle of the room at the wooden table."
  2 -> "You are standing in front of the night garden behind the small wooden fence."
  -- Descriptions of other locations go here.
  otherwise -> "Unknown location."
