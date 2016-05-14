class Sieve
  attr_reader :num, :candidates

  def initialize(num)
    @num = num
    @candidates = (2..num).to_a
  end

  def primes
    candidates.each do |prime|
      candidates.each do |candidate|
        candidates.delete(candidate) if multiple_of_prime?(candidate, prime)
      end
    end
  end

  def multiple_of_prime?(candidate, prime)
    candidate % prime == 0 && candidate != prime
  end
end
