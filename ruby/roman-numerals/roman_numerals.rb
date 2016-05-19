module RomanNumerals
  VERSION = 1
  ANCHORS = {0 => "", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
  ADJUSTERS = {""=>"I", "V" => "I", "X" => "I", "L" => "X", "C" => "X", "D"=>"C", "M"=>"C"}

  def to_roman
    place_values = self.to_s.chars.map(&:to_i).reverse
    place_values.map.with_index { |val, i| romans(val * 10**i) }.reverse.join
  end

  def romans(place_value)
    differences = ANCHORS.keys.map { |num| [(place_value - num).abs, num] }.to_h
    closest = differences[differences.keys.sort.first]
    diff = place_value - closest
    anchor = ANCHORS[closest]
    adjustment = ADJUSTERS[anchor] * diff.abs.to_s.chars.first.to_i
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















# module RomanNumerals
#   VERSION = 1
#   ANCHOR = {1 => { 0 => "", 5 => "V", 10 => "X" },
#             2 => { 0 => "", 5 => "L", 10 => "C" },
#             3 => { 0 => "", 5 => "D", 10 => "M" },
#             4 => { 0 => "" }}
#   ADJUSTER = { 1 => "I", 2 => "X", 3 => "C", 4 => "M" }
#
#   def to_roman
#     place_values = self.to_s.chars.map(&:to_i)
#     place_values.map.with_index do |value, i|
#       place = self.to_s.length - i
#       romans(place, value)
#     end.join
#   end
#
# 0,1,2,3  #5
# 1 * 5 = 5
# 10 * 5 = 50
# 100 * 5
#
#
#
#
#   def romans(place, value)
#     array = [0, 5, 10, 50, 100, 500, 1000]
#     anchors_2 = {0 => "", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
#     differences = array.map { |num| [(5 - num).abs, num] }.to_h
#     closest = differences[differences.keys.sort.first]
#
#
#
#
#
#     # nearest_5 = roman_round(value)
#     # diff = value - nearest_5
#     # anchor = ANCHOR[place][nearest_5]       #valid_placeholder
#     # adjustment = ADJUSTER[place] * diff.abs #roman_fill #reduce
#     # order_numerals(adjustment, anchor, diff)
#   end
#
#   def order_numerals(adjustment, anchor, diff)
#     return adjustment + anchor if diff < 0
#     return anchor + adjustment if diff >= 0
#   end
#
#   def roman_round(num)
#     round = (num/5.0).round * 5
#     num - round == -2 ? round - 5 : round
#   end
#
# end
#
# class Fixnum
#   include RomanNumerals
# end