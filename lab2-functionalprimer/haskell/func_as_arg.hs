module Main where

-- Function that generates a list of numbers from a to b
inpFunc :: Int -> Int -> [Int]
inpFunc a b = [a..b]  

-- Define applicatorFunc
applicatorFunc :: [Int] -> Char -> Double
applicatorFunc inpList s  
    | s == 's'  = fromIntegral (sum inpList)  -- Compute sum
    | s == 'a'  = fromIntegral (sum inpList) / fromIntegral (length inpList)  -- Compute average
    | otherwise = error "Invalid choice! Enter 's' for sum or 'a' for average." -- Handle invalid input

main :: IO ()
main = do
    putStrLn "Enter the starting number (a):"
    aInput <- getLine
    putStrLn "Enter the ending number (b):"
    bInput <- getLine
    putStrLn "Enter 's' for sum or 'a' for average:"
    choice <- getLine
    
    let a = read aInput :: Int
    let b = read bInput :: Int
    let numbers = inpFunc a b
    let result = applicatorFunc numbers (head choice) -- Take the first character of input
    
    putStrLn ("Result = " ++ show result)