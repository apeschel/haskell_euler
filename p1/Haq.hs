--
-- Copyright (c) 2006 Don Stewart - http://www.cse.unsw.edu.au/~dons/
-- GPL version 2 or later (see http://www.gnu.org/copyleft/gpl.html)
--
import System.Environment

-- | 'main' runs the main program
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
