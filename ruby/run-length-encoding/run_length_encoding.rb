class RunLengthEncoding

  def self.encode(phrase)
    letters = phrase.chars
    pairs = letters.map.with_index do |letter,i|
      [letter, i] if letter != letters[i-1]
    end.reject(&:nil?)

    lengths = pairs.map.with_index do |(letter, pos), i|
      end_of_substring = i == (pairs.length - 1) ? phrase.length  : pairs[i+1][1]
      end_of_substring - pos
    end

    pairs.map.with_index do |(letter, pos), i|
      lengths[i].to_s + letter
    end.join
  end

  def self.render_encoded(collection)
    collection.flatten.map { |element| element.to_s }.join
  end

  def self.decode(phrase)
    pairs = pair_characters_with_frequency(phrase)
    pairs.map { |(num, char)| char * num }.join
  end

  def self.pair_characters_with_frequency(phrase)
    decomposed = phrase.split(/\s*(\d+)\s*/).reject(&:empty?)
    (0...(phrase.length/2)).map { |i| [decomposed[i*2].to_i, decomposed[i*2+1]] }
  end
end
