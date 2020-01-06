fuel :: Integer -> Integer
fuel = (\x -> x - 2) . (\x -> x `div` 3)

parseInput :: String -> [Integer]
parseInput = (map read) . lines

main :: IO ()
main = do
    rawData <- getContents
    let parsedInput = parseInput rawData
        totalFuel =  (sum . map fuel) parsedInput
    putStrLn (show totalFuel)
