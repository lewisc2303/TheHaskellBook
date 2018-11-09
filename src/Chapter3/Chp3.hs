-- module Print2 where

--     main:: IO()
--     main = do
--         putStrLn "Count to four for me"
--         putStr "one, two"
--         putStrLn "three, and"
--         putStrLn "four!"


-- module Print3 where 

--     myGreeting :: String
--     myGreeting = "Hello " ++ "World"

--     hello :: [Char] -- [Char] is the same as String
--     hello = "hello"

--     world :: [Char]
--     world = "world"

--     main :: IO ()
--     main = do
--         putStrLn myGreeting
--         putStrLn secondGreeting
--         where secondGreeting = concat [hello, " ", world]  

    -- module Print3 where 

    --     myGreeting :: String
    --     myGreeting = (++) "Hello " "World"
        
    --     hello :: [Char] -- [Char] is the same as String
    --     hello = "hello"
        
    --     world :: [Char]
    --     world = "world"
        
    --     main :: IO ()
    --     main = do
    --             putStrLn myGreeting
    --             putStrLn secondGreeting
    --             where secondGreeting = 
    --                 (++) hello ((++) " " world)
    module Print3Broken where

        greeting = "Yarrrrr"
        
        printSecond :: IO () 
        printSecond = do
          putStrLn greeting

        main :: IO () 
        main = do
        putStrLn greeting 
        printSecond
        
        