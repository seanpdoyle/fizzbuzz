import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;
import static org.junit.Assert.*;

public class FizzBuzzTest {
  @Test
  public void fizzbuzzMapsStrings() {
    int[] numbers = {
      0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
    };
    String[] expected = {
      "0", "1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"
    };

    FizzBuzz fizzbuzz = new FizzBuzz(numbers);
    String[] fizzBuzzStrings = fizzbuzz.fizzBuzz();

    assertArrayEquals("fizzbuzz output incorrect", fizzBuzzStrings, expected);
  }
}
