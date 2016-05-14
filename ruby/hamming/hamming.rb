module Hamming
  VERSION = 1

  def self.compute(strand_1, strand_2)
    require_same_lengths(strand_1, strand_2)
    (0...strand_1.length).count { |i| strand_1[i] != strand_2[i] }
  end

  class << self

  private
    def require_same_lengths(strand_1, strand_2)
      alert = "Strand length error: '#{strand_1}' length != '#{strand_2}' length"
      fail ArgumentError, alert unless strand_1.length == strand_2.length
    end
  end
end