module RomanNumerals
  VERSION = 1
  ANCHOR = {1 => { "anchor" => { 0 => "", 5 => "V", 10 => "X" }, 
                   "adjuster" => 1 },
            2 => { "anchor" => { 0 => "", 5 => "L", 10 => "C" },
                   "adjuster" => 1 },
            3 => { "anchor" => { 0 => "", 5 => "D", 10 => "M" },
                   "adjuster" => 1 },
            4 => { "anchor" => { 0 => "" },
                   "adjuster" => 1 }
  ADJUSTER = { 1 => "I", 2 => "X", 3 => "C", 4 => "M" }

  def to_roman
    place_values = self.to_s.chars.map(&:to_i)
    place_values.map.with_index do |value, i|
      place = self.to_s.length - i
      romans(place, value)
    end.join
  end

  def romans(place, value)
    nearest_5 = roman_round(value)
    diff = value - nearest_5
    anchor = ANCHOR[place][nearest_5]       #valid_placeholder
    adjustment = ADJUSTER[place] * diff.abs #roman_fill #reduce
    order_numerals(adjustment, anchor, diff)
  end

  def order_numerals(adjustment, anchor, diff)
    return adjustment + anchor if diff < 0
    return anchor + adjustment if diff >= 0
  end

  def roman_round(num)
    round = (num/5.0).round * 5
    num - round == -2 ? round - 5 : round
  end

end

class Fixnum
  include RomanNumerals
end