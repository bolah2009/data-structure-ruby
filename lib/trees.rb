# frozen_string_literal: true

def leftmost_nodes_sum(array)
  # your code here
  sum = 0
  i = 0
  while i < array.size
    sum += array[i]
    i = ((2 * i) + 1)
  end
  sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11

puts leftmost_nodes_sum([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 13

puts leftmost_nodes_sum([5, 3, 4, 11, 13, 15, 21, 10, 4, 7, 2, 8, 0, 9, 0])
# => 29
