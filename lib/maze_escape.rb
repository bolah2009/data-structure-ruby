# frozen_string_literal: true

def maze_escape(maze)
  move(maze, [], 0, 0)
end

def move(map, path, row, col)
  return nil if [row, col].any? { |i| i >= map.size } || map[row][col] == 1

  path << [col, row]
  return path if map[row][col] == 9

  move(map, path.dup, row + 1, col) || move(map, path.dup, row, col + 1)
end
