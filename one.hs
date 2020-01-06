fuel :: Integer -> Integer
fuel = (\x -> x - 2) . (\x -> x `div` 3)

calculateFuel :: Integer -> Integer
calculateFuel x
        | fuel' <= 0 = 0
        | otherwise = fuel' + calculateFuel fuel'
    where fuel' = fuel x

parseInput :: String -> [Integer]
parseInput = (map read) . lines

main :: IO ()
main = do
    rawData <- getContents
    let parsedInput = parseInput rawData
        totalFuel =  (sum . map calculateFuel) parsedInput
    putStrLn (show totalFuel)
