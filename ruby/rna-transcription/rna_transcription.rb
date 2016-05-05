class Complement
  VERSION = 3

  def self.of_dna(nucleotides)
    nucleotides.chars.map { |nucleotide| find_complement(nucleotide) }.join
  end

  def self.find_complement(nucleotide)
    verify(nucleotide)
    complements[nucleotide]
  end

  def self.verify(nucleotide)
    raise ArgumentError if !complements.key?(nucleotide)
  end

  def self.complements
    pairs = { "G" => "C",
              "C" => "G",
              "T" => "A",
              "A" => "U"
              }
  end
end