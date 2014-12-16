module Calc
  class Screen

    EQUAL_SYMBOL = '='

    def initialize(sum)
      @screen = [0]
      @sum = sum
    end

    def screen
      final_value = ""
      @screen.each  do |current_digit|
        if current_digit == EQUAL_SYMBOL
          final_value = @sum.exec(final_value)
        else
          final_value += current_digit.to_s
        end
      end
      present(final_value)
    end

    def type(digit)
      @screen << digit
    end

    def present(number)
      number.to_i
    end
  end
end
