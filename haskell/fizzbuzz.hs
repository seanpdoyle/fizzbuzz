fizz number
  | number == 0 = False
  | (number `mod` 3) == 0 = True
  | otherwise = False

buzz number
  | number == 0 = False
  | (number `mod` 5) == 0 = True
  | otherwise = False

fizzbuzz number = fizz(number) && buzz(number)

to_string number
  | fizzbuzz(number) = "FizzBuzz"
  | fizz(number) = "Fizz"
  | buzz(number) = "Buzz"
  | otherwise = show number

main = do
  let numbers = map (to_string) [0..100]
  print numbers
