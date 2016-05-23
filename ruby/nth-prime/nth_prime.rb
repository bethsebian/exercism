class Prime
  attr_reader :primes

  def nth(place)
    fail ArgumentError if place == 0
    @primes = []
    @check = []
    next_num = 1
    until @primes.length == place
      if @primes.last == nil
        @primes << 2
        next_num += 1
      else
        reject = @primes.find { |prime| next_num % prime == 0 }

        if reject
        else
          @primes << next_num
        end
        next_num += 1
      end
    end
    @primes.last
  end

end


#
#     (1..place).each do |p|
#       @primes << next_prime
#     end
#     @primes.last
#   end
#
#   def next_prime
#     if @primes.last == nil
#       2
#       @checks % 2
#     else
#       if @primes.last == 2
#         3
#       else
#         @not_primes <<
#     end
#     # if p == 0
#     #   thing = 2
#     # else
#     #   thing = 3
#     # end
#   end
# end
#
# 1  2  3  4  5  6  7  8  9  10
# 2  3  5  7  11 13 17 19 23 29