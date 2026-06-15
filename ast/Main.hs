module Main where

import System.Environment (getArgs)
import Calc.Lex (tokens)
import Calc.Par (pExp)
import Interpreter (eval)

main :: IO ()
main = do
    args <- getArgs
    case args of
        [expr] -> case pExp (tokens expr) of
            Right ast    -> print (eval ast) 
            Left error -> putStrLn $ "Parse failed: " ++ error
        _      -> putStrLn "Usage: figure it out yourself dumbass"
