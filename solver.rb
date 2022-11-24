class Solver
    def factorial(number)
      number.negative? ? (raise StandardError, 'NegativeNumberFactorialError') :
       (number == 0 ? 1 : (number * factorial(number -1)))
    end
  
    def reverse(word)
      word.instance_of?(String) ? word.reverse : (raise StandardError, 'Not A String Error')
    end
  end