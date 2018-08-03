myGCD x y = if remainder == 0
            then y
            else myGCD y remainder
            where remainder = x `mod` y

main :: IO()
main = do
    let result = myGCD 64 34
    print result