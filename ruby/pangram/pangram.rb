module Pangram
  VERSION = 1

  def self.is_pangram?(sentence)
    ("a".."z").to_a.reject {|letter| sentence.downcase.include?(letter)}.empty?
  end
end