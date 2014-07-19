fizz :: (Int) -> (Bool)
fizz number
  | number == 0 = False
  | (number `mod` 3) == 0 = True
  | otherwise = False

buzz :: (Int) -> (Bool)
buzz number
  | number == 0 = False
  | (number `mod` 5) == 0 = True
  | otherwise = False

fizzbuzz :: (Int) -> (Bool)
fizzbuzz number = fizz(number) && buzz(number)

to_string :: (Int) -> (String)
to_string number
  | fizzbuzz(number) = "FizzBuzz"
  | fizz(number) = "Fizz"
  | buzz(number) = "Buzz"
  | otherwise = show number

main :: IO ()
main = do
  let numbers = map (to_string) [0..100]
  print numbers
