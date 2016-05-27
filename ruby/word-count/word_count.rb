class Phrase
  VERSION = 1
  def initialize(phrase)
    @words = phrase.gsub(/[:@$%^&.!]/,'').split(/[\s,]+/)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) { |word, hash| hash[clean(word)] += 1 }
  end

  def clean(word)
    word.gsub!(/[']/,'') if word[0] == "'"
    word.downcase
  end
end