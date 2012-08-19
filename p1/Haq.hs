import System.Environment

main :: IO ()
main = print . haqify $ [1..999]

haqify :: [Integer] -> Integer
haqify =
    sum . filter filter_func
    where
        filter_func :: Integer -> Bool
        filter_func x =
            mod x 5 == 0 ||
            mod x 3 == 0
