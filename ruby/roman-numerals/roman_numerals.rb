module RomanNumerals
  VERSION = 1
  INFO = {"ones"     => { "nearest_5" => { 0 => "", 5 => "V", 10 => "X" },
                          "adjuster"  => "I" },
          "tens"     => { "nearest_5" => { 0 => "", 5 => "L", 10 => "C" },
                          "adjuster"  => "X" },
          "hundreds" => { "nearest_5" => { 0 => "", 5 => "D", 10 => "M" },
                          "adjuster"  => "C" },
          "thousands"=> { "nearest_5" => { 0 => "" },
                          "adjuster"  => "M" }}
  PLACE_POSITIONS = { "thousands" => -4, "hundreds" => -3, "tens" => -2, "ones" => -1 }

  def to_roman
    # place_values = self.to_s.chars.map(&:to_i)

    place_values = PLACE_POSITIONS.map do |place, position|    #split into array  (need number and position, or full number)
      [place, self.to_s.split('')[position].to_i]
    end
    place_values.map { |place, value| romans(place, value) }.join # grab numbers
  end

  def romans(place, value)
    nearest_5 = roman_round(value)
    diff = value - nearest_5
    anchor = INFO[place]["nearest_5"][nearest_5]
    adjustment = INFO[place]["adjuster"] * diff.abs
    diff < 0 ? (adjustment + anchor) : (anchor + adjustment)
  end

  def roman_round(num)
    round = (num/5.0).round * 5
    num - round == -2 ? round - 5 : round
  end

end

class Fixnum
  include RomanNumerals
end