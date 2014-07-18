$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "minitest/autorun"
require "fizzbuzz"

class FixnumTest < Minitest::Test
  def test_zero_is_nothing
    refute 0.fizz?, "0 is not fizz"
    refute 0.buzz?, "0 is not fizz"
    refute 0.fizz_buzz?, "0 is not fizz"
  end

  def test_fizz
    assert 3.fizz?
  end

  def test_not_fizz
    refute 2.fizz?
  end

  def test_buzz
    assert 5.buzz?
  end

  def test_not_buzz
    refute 4.buzz?
  end

  def test_fizz_buzz
    assert 15.fizz_buzz?
  end

  def test_not_fizz_buzz
    refute 16.fizz_buzz?
  end
end

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    fizz_buzz = FizzBuzz.new(0..15)

    assert_equal [0, 1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizz_buzz"],
                 fizz_buzz.fizz_buzz
  end
end
