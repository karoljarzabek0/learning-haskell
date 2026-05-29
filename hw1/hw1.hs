-- Homework1
-- Credit card validator

firstDigit :: Integer = 1234

inputList :: [Integer] = [1, 2, 3, 4, 5]

toDigitsRev :: Integer -> [Integer]
toDigitsRev n
    | n < 1 = []
    | n < 10 = [n]
    | otherwise = mod n 10 : toDigitsRev (n `div` 10)

toDigits :: Integer -> [Integer]
toDigits n
    | n < 1 = []
    | n < 10 = [n]
    | otherwise = toDigits (n `div` 10) ++ [n `mod` 10]

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther (x : (y : zs)) = x * 2 : y : doubleEveryOther zs

main = do
    let tList = filter odd inputList :: [Integer]
    --    print tList
    print (doubleEveryOther inputList)

    print (toDigitsRev firstDigit)
    print (toDigits firstDigit)
