import System.Environment

main :: IO ()
main = print . sum . filter even . fib $ []

fib :: [Integer] -> [Integer]
fib []  = fib [1]
fib [1] = fib [2, 1]
fib (x:y:xs) | x > 4000000 = new_list
             | otherwise   = fib new_list
    where new_list = x+y : (x:y:xs)
