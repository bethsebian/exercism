require 'pry'

class Raindrops
  VERSION = 1

  def self.convert(number)
    conversion = ""
    conversion << "Pling" if divisible_by(number, 3)
    conversion << "Plang" if divisible_by(number, 5)
    conversion << "Plong" if divisible_by(number, 7)
    conversion.empty? ? number.to_s : conversion
  end

  def self.divisible_by(number, factor)
    number % factor == 0
  end
end