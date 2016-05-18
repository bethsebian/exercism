class Sieve
  attr_reader :num, :candidates, :primes

  def initialize(num)
    @candidates = (2..num).to_a
  end

  def primes
    candidates.each do |prime|
      candidates.reject! { |candidate| multiple_of_prime?(candidate, prime) }
    end
  end

  def multiple_of_prime?(candidate, prime)
    candidate % prime == 0 && candidate != prime
  end
end
