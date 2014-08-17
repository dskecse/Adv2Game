module Main where

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

run count = do
  putStrLn ("\nTurns count: " ++ show count)
  putStrLn $ show $ last $ take count fibs
  run (count + 1)

main = do
  run 1
