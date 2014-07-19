public class FizzBuzz {
  private final int[] numbers;

  public FizzBuzz(int[] numbers) {
    this.numbers = numbers;
  }

  public String[] fizzBuzz() {
    String[] strings = new String[this.numbers.length];
    for(int i = 0; i < this.numbers.length; i++) {
      int number = this.numbers[i];
      if (isFizzBuzz(number)) {
        strings[i] = "FizzBuzz";
      } else if (isFizz(number)) {
        strings[i] = "Fizz";
      } else if (isBuzz(number)) {
        strings[i] = "Buzz";
      } else {
        strings[i] = Integer.toString(number);
      }
    }
    return strings;
  }

  private boolean isFizz(int number) {
    return (number != 0) && (number % 3) == 0;
  }

  private boolean isBuzz(int number) {
    return (number != 0) && (number % 5) == 0;
  }

  private boolean isFizzBuzz(int number) {
    return isFizz(number) && isBuzz(number);
  }
}
