oplus :: Char -> Int -> String -> String
oplus _ _ [] = error "failed!"
oplus c 1 xs = c:xs
oplus c n (x:xs) = x:(oplus c (n - 1) xs)

oplusc2 = (oplus 'c' 2)

ominus :: Char -> Int -> String -> String
ominus c 1 (x:xs)
    | x == c = xs	
	| otherwise =  error "failed!"
ominus c n (x:xs) = x:(ominus c (n - 1) xs)

ominus2 = (ominus 'c' 2)