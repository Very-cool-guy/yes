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

densitytell :: (RealFloat a) => a -> a -> String
densitytell mass volume
    | density < 1.2 = "Wow! bro is light"
    | density <= 12 = "Wow! bro is kinda light"
    | otherwise = "Wow! bro is heavy"
    where density = mass / volume

densitylots :: (RealFloat a) => [(a,a)] -> [a]
densitylots xs = [density m v | (m,v) <- xs]
    where density m v = m / v

max' :: (Ord a) => a -> a -> a
max' a b | a < b = b | otherwise = a

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "nope"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in sideArea + 2 * topArea

head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

listOfFuncs = map (*) [0..]
meowwoof = (listOfFuncs !! 4) 5

superLamb = filter (\xs -> xs > 15) [1..100]

funnyLamb :: (Num a) => a -> a -> a -> a
funnyLamb = \x -> \y -> \z -> x + y + z
