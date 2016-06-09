class FoodChain
  VERSION = 2
  FOOD = ["fly", "spider", "bird", "cat", "dog", "goat", "cow", "horse"]
  DESCRIPTIONS = {  "spider"  => "It wriggled and jiggled and tickled inside her.",
                    "bird"    => "How absurd to swallow a bird!",
                    "cat"     => "Imagine that, to swallow a cat!",
                    "dog"     => "What a hog, to swallow a dog!",
                    "goat"    => "Just opened her throat and swallowed a goat!",
                    "cow"     => "I don't know how she swallowed a cow!",
                    "horse"   => "She's dead, of course! \n"}

  def self.song
    8.times.map do |i|
      [ begin_stanza(i),
        description(i),
        eating_chain(i),
        end_stanza(i)
      ]
    end.join
  end

  def self.begin_stanza(i)
    "I know an old lady who swallowed a #{FOOD[i]}. \n"
  end

  def self.description(i)
    DESCRIPTIONS[FOOD[i]] + "\n" if i.between?(1, 6)
  end

  def self.eating_chain(i)
    i.downto(1).map { |t| why(FOOD[t], FOOD[t - 1], t) + "\n" } if i < 7
  end

  def self.why(animal_2, animal_1, t)
    modifier = DESCRIPTIONS[FOOD[1]].chop.sub("It", " that")
    "She swallowed the #{animal_2} to catch the #{animal_1}#{modifier if t==2}."
  end

  def self.end_stanza(i)
    return DESCRIPTIONS[FOOD[7]] if FOOD[i] == FOOD[7]
    "I don't know why she swallowed the #{FOOD[0]}. Perhaps she'll die. \n\n"
  end
end

