require 'pry'

class Squares
  attr_reader :number
  VERSION = 2

  def initialize(number)
    @number = number
  end

  def square_of_sum
    find_sum(number)**2
  end

  def sum_of_squares
    sum = 0
    number.downto(1) { |i| sum += i**2 }
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

  def find_sum(number)
    sum = 0
    number.times { |number| sum += number + 1 }
    sum
  end
end