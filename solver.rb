class Solver
  def factorial(value)
    raise ArgumentError, 'N must be 0 or a positive integer.' if value.negative?
    return 1 if value.zero?

    (1..value).reduce(:*)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 15).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    number.to_s
  end
end

solver = Solver.new
puts solver.factorial(4)
puts solver.reverse('world')
puts solver.fizzbuzz(7)

