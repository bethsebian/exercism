class Pangram
  VERSION = 1

  def self.is_pangram?(sentence)
    alphabet_letters = ("a".."z").to_a
    sentence.downcase.each_char { |letter| alphabet_letters.delete(letter) }
    alphabet_letters.empty?
  end
end