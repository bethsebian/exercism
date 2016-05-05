require 'pry'

class Hamming
  VERSION = 1

  def self.compute(strand_1, strand_2)
    @strand_1 = strand_1
    @strand_2 = strand_2
    check_lengths_match
    strand_1 == strand_2 ? 0 : analyze
  end

  def self.check_lengths_match
    if @strand_1.length != @strand_2.length
      raise ArgumentError, "Please enter strands with identical lengths"
    end
  end

  def self.analyze
    array_1 = @strand_1.chars
    array_2 = @strand_2.chars

    array_1.map.with_index do |pos, index|
      pos == array_2[index] ? 0 : 1
    end.inject(:+)
  end
end