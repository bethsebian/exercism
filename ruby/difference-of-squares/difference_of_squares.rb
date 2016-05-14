class Squares
  attr_reader :number_range
  VERSION = 2

  def initialize(number)
    @number_range = 0..number
  end

  def square_of_sum
    (number_range).map { |i| i }.inject(:+)**2
  end

  def sum_of_squares
    (number_range).map { |i| i**2 }.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
