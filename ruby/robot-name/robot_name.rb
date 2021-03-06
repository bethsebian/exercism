class Robot
  attr_reader :name
  VERSION = 1
  @@all_names = []

  def initialize
    set_name
  end

  def reset
    set_name
  end

  private
    def set_name
      @@all_names << @name = verified_name
    end

    def verified_name
      candidate = name_candidate
      @@all_names.any? { |name| name == candidate } ? verified_name : candidate
    end

    def name_candidate
      letters = 2.times.map { ("A".."Z").to_a.sample }.join
      numbers = 3.times.map { rand(1..9).to_s }.join
      letters + numbers
    end
end

