module Interpreter (eval) where

import Calc.Abs

eval :: Exp -> Integer
eval expr = case expr of
    EAdd e1 e2 -> eval e1 + eval e2
    ESub e1 e2 -> eval e1 - eval e2
    EMul e1 e2 -> eval e1 * eval e2
    EDiv e1 e2 -> eval e1 `div` eval e2
    EInt n     -> n
