module EuclidGCD (euclidGcd) where

myGCD x y = if remainder == 0
            then y
            else myGCD y remainder
            where remainder = x `mod` y

euclidGcd :: IO()
euclidGcd = do
    print (myGCD 64 34)
