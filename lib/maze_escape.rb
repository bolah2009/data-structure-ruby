# frozen_string_literal: true

def maze_escape(maze)
  # write your code here
  path = []
  move(maze, path, [0, 0])
  path
end

def move(map, path, position)
  return nil if not_bounded?(position, map.size)

  y = position[0]
  x = position[1]
  return false if map[x][y] == 1

  path << position
  return true if map[x][y] == 9

  move(map, path, [x + 1, y]) || move(map, path, [x, y + 1])
end

def not_bounded?(position, size)
  position.any? { |i| i.negative? || i >= size }
end

# 5x5_maze
p maze_escape(
  [
    [0, 0, 0, 0, 0],
    [0, 1, 0, 1, 0],
    [0, 1, 0, 1, 1],
    [0, 1, 0, 0, 0],
    [0, 0, 0, 1, 9]
  ]
)
# => [
#      [0, 0],
#      [1, 0],
#      [2, 0],
#      [2, 1],
#      [2, 2],
#      [2, 3],
#      [3, 3],
#      [4, 3],
#      [4, 4]
#    ]

# 3x3_maze
p maze_escape(
  [
    [0, 0, 0],
    [0, 1, 9],
    [0, 0, 0]
  ]
)

# => [
#   [0, 0],
#   [1, 0],
#   [2, 0],
#   [2, 1]
# ]

# 7x7_maze
p maze_escape(
  [
    [0, 0, 0, 0, 1, 0, 0],
    [0, 0, 0, 0, 1, 0, 0],
    [0, 1, 1, 1, 1, 1, 1],
    [0, 0, 0, 0, 0, 0, 9],
    [0, 1, 1, 1, 1, 0, 0],
    [0, 0, 0, 0, 1, 0, 0],
    [0, 0, 0, 0, 1, 0, 0]
  ]
)

# => [
#   [0, 0], [0, 1],
#   [0, 2], [0, 3],
#   [1, 3], [2, 3],
#   [3, 3], [4, 3],
#   [5, 3], [6, 3]
# ]

# 9x9_maze
p maze_escape(
  [
    [0, 0, 0, 0, 0, 1, 0, 0, 0],
    [0, 1, 0, 1, 0, 1, 1, 0, 1],
    [0, 1, 0, 1, 0, 0, 0, 0, 0],
    [1, 1, 0, 1, 1, 1, 0, 1, 1],
    [0, 0, 0, 0, 0, 1, 0, 0, 1],
    [1, 1, 1, 1, 0, 1, 1, 1, 1],
    [0, 0, 0, 0, 0, 0, 0, 0, 1],
    [0, 1, 1, 0, 0, 1, 1, 0, 9],
    [0, 0, 1, 0, 0, 0, 0, 0, 0]
  ]
)

# => [
#   [0, 0], [1, 0], [2, 0], [2, 1],
#   [2, 2], [2, 3], [2, 4], [3, 4],
#   [4, 4], [4, 5], [4, 6], [5, 6],
#   [6, 6], [7, 6], [7, 7], [8, 7]
# ]
