class FizzBuzz
  def initialize(range)
    @range = Array(range)
  end

  def fizz_buzz
    @range.map do |number|
      case
      when number.fizz_buzz? then "fizz_buzz"
      when number.buzz? then "buzz"
      when number.fizz? then "fizz"
      else number
      end
    end
  end
end

class Fixnum
  def fizz?
    !zero? && to_i % 3 == 0
  end

  def buzz?
    !zero? && to_i % 5 == 0
  end

  def fizz_buzz?
    fizz? && buzz?
  end
end
