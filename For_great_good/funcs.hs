doubleMe x = x + x

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial x = x * factorial (x - 1)

lucky :: (Integral a) => a -> String
lucky 7 = "Lucky number 7!!!"
lucky x = "Sorry"

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = "Empty string, whoops!!!"
capital x@(y:xs) = "the capital of" ++ x ++ "is" ++ [y]
