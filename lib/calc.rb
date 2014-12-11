class Calc

  EQUAL_SYMBOL = '='

  def initialize
    @screen = [0]
  end

  def screen
    final_value = ""
    @screen.each  do |current_digit|
      if current_digit == EQUAL_SYMBOL
        final_value = Sum.new.exec(final_value)
      else
        final_value += current_digit.to_s
      end
    end
    present(final_value)
  end

  def sum(final_value)
  end

  def type(digit)
    @screen << digit
  end

  def present(number)
    number.to_i
  end
end

class Sum
  def exec(value)
    total = 0
    numbers = value.split('+')
    numbers.each do |number|
      total = total + number.to_i
    end
    total
  end
end
