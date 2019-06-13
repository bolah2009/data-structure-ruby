# frozen_string_literal: true

require 'set'

def find_duplicates(array, dup = [], set = Set.new)
  array.each do |i|
    dup << i if set.include? i
    set.add(i)
  end
  dup
end
