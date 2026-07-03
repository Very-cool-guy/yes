elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys

maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\x acc -> if x > acc then x else acc)

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []

sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1

funnyNum :: Double
funnyNum = sqrt $ 1 + 2 + 3

funnyList :: [Double]
funnyList = map ($ 3) [(4+), (10*), sqrt]

negative :: (Floating a) => a -> a
negative = negate . abs
