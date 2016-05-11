class Squares
  attr_reader :number
  VERSION = 2

  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum = (1..number).map { |i| i }.inject(:+)
    sum**2
  end

  def sum_of_squares
    (1..number).map { |i| i**2 }.inject(:+)
  end

  def difference
    number == 0 ? 0 : (square_of_sum - sum_of_squares)
  end
end
