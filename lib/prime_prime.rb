# frozen_string_literal: true

require_relative 'prime'

def prime_prime(array, hash = Hash.new(0))
  array.each do |number|
    Prime::TO_TEN_THOUSAND.each do |prime|
      break if prime > number

      hash[prime] += 1 if (number % prime).zero?
    end
  end

  hash.key(hash.values.max)
end
