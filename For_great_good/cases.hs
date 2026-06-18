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
