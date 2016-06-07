class FoodChain
  VERSION = 2
  def self.song
    song = ""
    8.times do |i|
      song << begin_song(animals[i])
      song << pith[animals[i]] + "\n" if i > 0 && i < 7
      i.times do |t|
        thing = i - t
        part_one = why(animals[thing], animals[thing - 1])
        part_two = " that wriggled and jiggled and tickled inside her" if thing == 2
        thingz = part_two ? part_one + part_two : part_one
        song << thingz + ". \n"
      end if i < 7
      song << end_song(animals[i])
    end

    song
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

  def self.why(animal_2, animal_1)
    "She swallowed the #{animal_2} to catch the #{animal_1}"
  end

  def self.begin_song(animal)
    "I know an old lady who swallowed a #{animal}.\n"
  end

  def self.end_song(animal)
    return pith[animals[7]] + "\n" if animal == animals[7]
    "I don't know why she swallowed the #{animals[0]}. Perhaps she'll die. \n\n"
  end
end

