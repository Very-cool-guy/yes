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

sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys 
