class Solver
  def factorial(number)
    raise StandardError, 'NegativeNumberFactorialError' if number.negative?

    (number.zero? ? 1 : (number * factorial(number - 1)))
  end

  def reverse(word)
    word.instance_of?(String) ? word.reverse : (raise StandardError, 'Not A String Error')
  end

  def fizzbuzz(number)
    if (number % 15).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
