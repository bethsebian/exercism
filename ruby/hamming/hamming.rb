class Hamming
  VERSION = 1

  def self.compute(str_1, str_2)
    raise ArgumentError, "Strand length mismatch" if str_1.length != str_2.length
    discrepancies_count(str_1, str_2)
  end

  def self.discrepancies_count(str_1, str_2)
    (0..str_1.length).reject { |i| str_1[i] == str_2[i] }.count
  end
end