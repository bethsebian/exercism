module Pangram
  VERSION = 1

  def self.is_pangram?(sentence)
    letters = ("a".."z").to_a
    letters.reject { |letter| sentence.downcase.include?(letter) }.empty?
  end
end