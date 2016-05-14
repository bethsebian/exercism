module RomanNumerals
  VERSION   = 1
  ROMAN_NUMERALS = [
    ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'],
    ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'],
    ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM'],
    ['', 'M', 'MM', 'MMM']
  ].freeze

  def to_roman
    raise InvalidRange unless convertible?

    converter = ROMAN_NUMERALS.dup
    to_s.rjust(4,'0').chars.map(&:to_i)
        .reduce('') { |roman, arabic| roman << converter.pop[arabic] }
  end

  private

  def convertible?
    (1..3_000).include?(self)
  end
end

class InvalidRange < ArgumentError
  def message
    'The number must be in 1 - 3,000 range'
  end
end

class Fixnum
  include RomanNumerals
end