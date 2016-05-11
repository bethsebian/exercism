class Pangram
  VERSION = 1

  def self.is_pangram?(str)
    alphabet_letters = ("a".."z").to_a
    str.downcase.chars.each { |letter| alphabet_letters.delete(letter) }
    alphabet_letters.empty?
  end
end