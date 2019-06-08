# frozen_string_literal: true

def graph(hash_graph)
  # write your code here
  array = [0]
  connected_node(array, 4, hash_graph, 0)
end

def connected_node(array, to_node, hash, index)
  return nil if index >= hash.size || index == to_node

  array << hash[index][0]
  connected_node(array, to_node, hash, hash[index][0])

  array
end

hash = {
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]

hash = {
  0 => [1, 6],
  1 => [2, 0, 3, 4],
  2 => [3, 1],
  3 => [6, 1, 2],
  4 => [1, 5, 6],
  5 => [4],
  6 => [4, 3, 0]
}

p graph(hash)
# => [0, 1, 2, 3, 6, 4]

hash = {
  0 => [1, 2],
  1 => [2, 0],
  2 => [3, 0, 1, 4, 5],
  3 => [4, 2],
  4 => [3, 2],
  5 => [2]
}

p graph(hash)
# => [0, 1, 2, 3, 4]

hash = {
  0 => [1, 6],
  1 => [2, 0, 3, 4],
  2 => [7, 3, 1],
  3 => [6, 1, 2],
  4 => [1, 5, 7],
  5 => [4, 6],
  6 => [3, 0, 5],
  7 => [4, 2]
}

p graph(hash)
# => [0, 1, 2, 7, 4]
