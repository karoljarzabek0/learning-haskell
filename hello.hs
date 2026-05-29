biggestInt, smallestInt :: Int
biggestInt = maxBound
smallestInt = minBound

main = do
  putStrLn "Hello World!"
  putStrLn ("The best odd numbers: " ++ show (filter odd [10 .. 20]))

  putStrLn ("Max bound: " ++ show biggestInt ++ " | Min bound: " ++ show smallestInt)
