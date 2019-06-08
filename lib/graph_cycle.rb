# frozen_string_literal: true

def graph_cycle?(graph)
  # write your code here
  cycle = 0
  i = 0
  while i < graph.size
    cycle += 1 if graph[i].size > 1

    i += 1
 end

  cycle > 2
end

depth_first_search

puts depth_first_search(
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3]
)
# => true

puts depth_first_search(
  0 => [2],
  1 => [2],
  2 => [0, 1, 3, 4, 5],
  3 => [2],
  4 => [2]
)
# => false

puts graph_cycle?(
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3]
)
# => true

puts graph_cycle?(
  0 => [2],
  1 => [2],
  2 => [0, 1, 3, 4, 5],
  3 => [2],
  4 => [2]
)
# => false
