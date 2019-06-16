# frozen_string_literal: true

require 'set'

module Prime
  def self.sieve_of_eratosthenes(number, primes = (2..number).to_a, prime = 2)
    composites = []
    primes.each { |i| composites << i if (i % prime).zero? && i != prime }
    primes -= composites
    prime = primes.select { |i| i > prime }.first
    return primes if prime.nil?

    sieve_of_eratosthenes(number, primes, prime)
  end

  TO_TEN_THOUSAND = Set.new(sieve_of_eratosthenes(10_000))
end

def number_of_primes(arr)
  arr.count { |i| Prime::TO_TEN_THOUSAND.include?(i) }
end

puts number_of_primes([2, 3, 5, 6, 9])
# => 3

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3

# array_of_eleven_positions
puts number_of_primes([55, 11, 33, 25, 15, 66, 35, 44, 16, 9, 22])
# => 1

# array_of_thirty_positions
puts number_of_primes([8035, 6759, 6113, 8721, 5595, 5985, 4643, 849, 629, 8933, 3659, 6086, 4337, 4589, 9119, 8049, 9337, 3407, 28, 6771, 1069, 3500, 8549, 9251, 2131, 5425, 2471, 11, 8173, 5277])
# => 10

# array_of_forty_positions
puts number_of_primes([6358, 8623, 2345, 1385, 6037, 9161, 796, 8125, 8829, 9747, 2834, 3579, 1043, 1880, 3508, 9822, 8739, 2372, 7723, 5049, 2661, 5982, 9692, 9427, 562, 6617, 3756, 396, 7009, 3907, 6920, 3766, 6139, 6310, 7011, 650, 4758, 5153, 6200, 3146])
# =>  6

# array_of_seventeen_positions
puts number_of_primes([1817, 2231, 217, 371, 155, 943, 1219, 553, 679, 1057, 485, 253, 287, 299, 437, 713, 3473])
# => 0

# array_of_twenty_positions
puts number_of_primes([1817, 41, 2231, 217, 3631, 371, 155, 943, 1219, 553, 8803, 679, 1057, 485, 253, 287, 299, 437, 713, 3473])
# => 3
