module Calc
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
end
