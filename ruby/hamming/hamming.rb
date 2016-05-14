module Hamming
  VERSION = 1

  def self.compute(strand_1, strand_2)
    require_same_lengths(strand_1, strand_2)
    position_pairs = strand_1.each_char.zip(strand_2.each_char)
    position_pairs.count { |strand_1, strand_2| strand_1 != strand_2 }
  end

  class << self

  private
    def require_same_lengths(strand_1, strand_2)
      alert = "Strand length error: '#{strand_1}' length != '#{strand_2}' length"
      fail ArgumentError, alert unless strand_1.length == strand_2.length
    end
  end
end