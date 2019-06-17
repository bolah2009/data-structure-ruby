# frozen_string_literal: true

def counting_sort(array)
  count_array = Array.new(100).fill(0)
  array.each { |i| count_array[i] += 1 }
  count_array
end
