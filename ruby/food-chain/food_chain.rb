class FoodChain
  VERSION = 2

  def self.song
    thing = 8.times.map do |i|
      begin_song(animals[i]) +
      (i > 0 && i < 7 ? pith[animals[i]] + "\n" : "") +
      (i < 7 ? i.downto(1).map { |t| why(animals[t], animals[t - 1], t) }.join : "") +
      end_song(animals[i])
    end
  end

  def self.animals
    ["fly", "spider", "bird", "cat", "dog", "goat", "cow", "horse"]
  end

  def self.pith
    { "spider"  => "It wriggled and jiggled and tickled inside her.",
      "bird"    => "How absurd to swallow a bird!",
      "cat"     => "Imagine that, to swallow a cat!",
      "dog"     => "What a hog, to swallow a dog!",
      "goat"    => "Just opened her throat and swallowed a goat!",
      "cow"     => "I don't know how she swallowed a cow!",
      "horse"   => "She's dead, of course!"}
  end

  def self.why(animal_2, animal_1, t)
    "She swallowed the #{animal_2} to catch the #{animal_1}"
    " that wriggled and jiggled and tickled inside her" if t == 2
    part_two ? part_one + part_two + "\n" : part_one + "\n"
  end

  def self.begin_song(animal)
    "I know an old lady who swallowed a #{animal}.\n"
  end

  def self.end_song(animal)
    return pith[animals[7]] + "\n" if animal == animals[7]
    "I don't know why she swallowed the #{animals[0]}. Perhaps she'll die. \n\n"
  end
end

