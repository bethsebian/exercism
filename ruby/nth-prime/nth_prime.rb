class Prime
  def nth(place)
    fail ArgumentError, "Zero is not a valid argument" if place == 0
    @primes = [2]
    identify_primes(place)
    @primes.last
  end

  private
    def identify_primes(place)
      next_num = 3
      until @primes.length == place
        @primes << next_num unless @primes.find { |prime| next_num % prime == 0 }
        next_num += 2
      end
    end
end