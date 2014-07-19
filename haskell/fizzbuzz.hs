fizz number
  | number == 0 = False
  | (number `mod` 3) == 0 = True
  | otherwise = False

buzz number
  | number == 0 = False
  | (number `mod` 5) == 0 = True
  | otherwise = False

fizz_buzz number
  | fizz(number) && buzz(number) = "FizzBuzz"
  | fizz(number) = "Fizz"
  | buzz(number) = "Buzz"
  | otherwise = show number

main = do
  let numbers = map (fizz_buzz) [0..100]
  print numbers
