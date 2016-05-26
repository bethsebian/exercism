class Grains
  def self.square(num)
    2**(num-1)
  end

  def self.total
    (1..64).inject { |sum, i| sum + square(i) }
  end
end