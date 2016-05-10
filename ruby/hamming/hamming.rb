require 'pry'

class Hamming
  VERSION = 1

  def self.compute(s_1, s_2)
    raise ArgumentError, "Strand length mismatch" if s_1.length != s_2.length
    discrepancies_count(s_1, s_2)
  end

  def self.discrepancies_count(s_1, s_2)
    (0..s_1.length).reject do |i|
      s_1[i] == s_2[i]
    end.count
  end
end