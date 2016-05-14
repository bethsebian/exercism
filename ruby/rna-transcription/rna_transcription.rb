module Complement
  VERSION = 3
  COMPLEMENTS = { "G" => "C",
                  "C" => "G",
                  "T" => "A",
                  "A" => "U"
                }

  def self.of_dna(nucleotides)
    nucleotides.chars.map.with_index do |nucleotide, i|
      require_valid_nucleotide(nucleotide, i)
      COMPLEMENTS[nucleotide]
    end.join
  end

  class << self

  private
    def require_valid_nucleotide(nucleotide, i)
      alert = "Nucleotide '#{nucleotide}' at position #{i} not recognized"
      raise ArgumentError, alert unless COMPLEMENTS.key?(nucleotide)
    end

  end
end