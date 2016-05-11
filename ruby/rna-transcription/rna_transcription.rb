class Complement
  VERSION = 3

  def self.of_dna(nucleotides)
    nucleotides.chars.map do |nucleotide|
      verify(nucleotide)
      complements[nucleotide]
    end.join
  end

  def self.verify(nucleotide)
    message = "Nucleotide '#{nucleotide}' not recognized"
    raise ArgumentError, message unless complements.key?(nucleotide)
  end

  def self.complements
    { "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }
  end
end