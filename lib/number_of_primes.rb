# frozen_string_literal: true

require 'set'
require_relative 'prime'

def number_of_primes(arr)
  arr.count { |i| Prime::TO_TEN_THOUSAND.include?(i) }
end
