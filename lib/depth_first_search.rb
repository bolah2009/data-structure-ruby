# frozen_string_literal: true

def depth_first_search(graph)
  # write your code here
  stack = [0]
  result = []
  visited = []

  until stack.empty?
    p stack
    head = stack.pop
    result << head unless visited.include? head
    visited << head
    return result if graph[head].nil?

    not_visited = graph[head].reject { |node| visited.include? node }

    stack += not_visited.reverse
  end

  result
end

p depth_first_search(
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
)
# => [0, 2, 5, 3, 4, 1]

p depth_first_search(
  0 => [1, 2],
  1 => [0, 3, 4],
  2 => [0, 5, 6],
  3 => [1],
  4 => [1],
  5 => [2],
  6 => [2]
)
# => [0, 1, 3, 4, 2, 5, 6]

p depth_first_search(
  0 => [1, 2],
  1 => [0, 3, 4],
  2 => [0, 5, 6],
  3 => [1],
  4 => [1, 5],
  5 => [2, 4],
  6 => [2]
)
# => [0, 1, 3, 4, 5, 2, 6]

p depth_first_search(
  0 => [2],
  1 => [2],
  2 => [0, 1, 3, 4, 5],
  3 => [2],
  4 => [2]
)
# => false

p depth_first_search(
  0 => [2],
  1 => [4, 3],
  2 => [0, 5],
  3 => [5, 1],
  4 => [1],
  5 => [2, 3]
)
# => false

p depth_first_search(
  0 => [1, 2],
  1 => [0, 3, 4],
  2 => [0, 5, 6],
  3 => [1],
  4 => [1],
  5 => [2],
  6 => [2]
)
# => false

p depth_first_search(
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3]
)
# => true
