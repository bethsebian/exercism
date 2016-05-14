class Pangram
  VERSION = 1

  def self.is_pangram?(sentence)
    letters = ("a".."z").to_a
    letters.find_all { |letter| sentence.downcase.include?(letter) }.count == 26
  end
end