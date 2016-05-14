module Complement
  VERSION = 3
  @complements = { "G" => "C",
                   "C" => "G",
                   "T" => "A",
                   "A" => "U"
                  }

  def self.of_dna(nucleotides)
    nucleotides.chars.map.with_index do |nucleotide, i|
      require_valid_nucleotide(nucleotide, i)
      @complements[nucleotide]
    end.join
  end

  class << self

  private
    def require_valid_nucleotide(nucleotide, i)
      alert = "Nucleotide '#{nucleotide}' at position #{i} not recognized"
      raise ArgumentError, alert unless @complements.key?(nucleotide)
    end

  end
end