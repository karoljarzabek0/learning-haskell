-- Homework1
-- Credit card validator

firstDigit :: Int = 1

inputList :: [Int] = [1, 2, 3, 4]

main = do
    let tList = filter odd inputList :: [Int]
    print tList
