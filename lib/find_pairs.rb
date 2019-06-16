# frozen_string_literal: true

require 'set'

def find_pairs(array, special_number, hash = {})
  array.each { |i| hash_arry(array, hash, i) }
  hash[special_number]
end

def hash_arry(array, hash, index)
  array.each do |j|
    hash[index + j] = [] if hash[index + j].nil?
    hash[index + j].push([index, j]) unless hash[index + j].include?([j, index])
  end
end
