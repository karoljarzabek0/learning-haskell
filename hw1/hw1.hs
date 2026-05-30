-- Homework1
-- Credit card validator
{- HLINT ignore "Use foldr" -}

firstDigit :: Integer = 1234
secondDigit :: Integer = 8765

inputList :: [Integer] = [1, 2, 3, 4, 5]

-- This function works
toDigitsRev :: Integer -> [Integer]
toDigitsRev n
    | n < 1 = []
    | n < 10 = [n]
    | otherwise = mod n 10 : toDigitsRev (n `div` 10)

-- This function works
toDigits :: Integer -> [Integer]
toDigits n
    | n < 1 = []
    | n < 10 = [n]
    | otherwise = toDigits (n `div` 10) ++ [n `mod` 10]

intListLength :: [Integer] -> Integer
intListLength [] = 0
intListLength (x : xs) = 1 + intListLength xs

-- This works
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther (a : b : cs)
    | even (intListLength (a : b : cs)) = a * 2 : b : doubleEveryOther cs
    | otherwise = a : b * 2 : doubleEveryOther cs

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits [x] = sum (toDigits x)
sumDigits (x : xs) = sumDigits [x] + sumDigits xs

validate :: Integer -> Bool
validate n
    | sumDigits (doubleEveryOther (toDigits n)) `mod` 10 == 0 = True
    | otherwise = False

no1 = 4012888888881881
no2 = 4012888888881882

main = do
    -- let tList = filter odd inputList :: [Integer]
    --    print tList

    print (toDigitsRev firstDigit)
    print (toDigits firstDigit)

    print (toDigits secondDigit)

    print "--------------------"
    print (doubleEveryOther inputList)
    print (doubleEveryOther (toDigits secondDigit))
    print (doubleEveryOther [1, 2, 3])
    print "--------------------"

    print $ validate no1
    print $ validate no2
