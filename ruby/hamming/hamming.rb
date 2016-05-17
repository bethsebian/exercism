module Hamming
  VERSION = 1

  def self.compute(strand_1, strand_2)
    alert = "Strand length mismatch (#{strand_1.length} v #{strand_2.length})"
    fail ArgumentError, alert unless strand_1.length == strand_2.length
    (0...strand_1.length).count { |i| strand_1[i] != strand_2[i] }
  end
end