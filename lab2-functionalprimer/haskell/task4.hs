module Main where

ask :: String -> IO ()
ask prompt = do
    putStrLn prompt
    line <- getLine
    if line == "quit"
        then putStrLn "quitting..."
    else if line == ""
        then ask (prompt ++ "!")  -- Add an extra "!" to the prompt
        else do
            putStrLn ("you said: " ++ reverse line)
            ask prompt  -- Recursively call `ask` for continuous input

main :: IO ()
main = do
    let prompt = "please say something"
    ask prompt