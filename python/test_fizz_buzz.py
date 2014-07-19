import unittest

def fizz(number):
  return number != 0 and number % 3 == 0

def buzz(number):
  return number != 0 and number % 5 == 0

def fizz_buzz(number):
  return fizz(number) and buzz(number)

def fizz_buzz_strings(numbers):
  strings = []
  for number in numbers:
    if fizz_buzz(number):
      strings.append("FizzBuzz")
    elif fizz(number):
      strings.append("Fizz")
    elif buzz(number):
      strings.append("Buzz")
    else:
      strings.append(str(number))

  return strings

class FizzBuzzTest(unittest.TestCase):
  def test_fizz_buzz_strings(self):
    expected = ["0", "1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz",
        "11", "Fizz", "13", "14", "FizzBuzz"]
    numbers = range(0, 16)

    self.assertEqual(fizz_buzz_strings(numbers), expected)
