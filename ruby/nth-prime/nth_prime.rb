class Prime
  def nth(place)
    fail ArgumentError if place == 0
    @primes = []
    identify_primes(place)
    @primes.last
  end

  private
    def identify_primes(place)
      next_num = 2
      until @primes.length == place
        @primes << next_num unless @primes.find { |prime| next_num % prime == 0 }
        next_num += 1
      end
    end
end