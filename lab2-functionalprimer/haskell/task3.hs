module Main where

-- Using guards instead of nested if-else
sgn :: Int -> Int
sgn x
    | x < 0     = -1
    | x == 0    = 0
    | otherwise = 1  -- `otherwise` is equivalent to `else`
main = do
    putStrLn "Please enter a number"
    input <- getLine 
    let x = (read input :: Int)
    putStrLn( show (sgn (x)) )