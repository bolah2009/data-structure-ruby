# frozen_string_literal: true

def greatest_peaks(map)
  visited = map.map(&:dup)

  find_peaks(map, visited, 0)
  areas = visited.flatten.uniq
  counts = []
  i = 0
  while i < areas.size
    counts << visited.flatten.count { |x| x == areas[i] }
    i += 1
  end
  counts.minmax
end

def search(map, col, row)
  return nil if row >= map.size || col >= map.size

  max = map.flatten.select { |i| (i.is_a? Integer) }.max if max.nil?
  return [row, col, max] if map[row][col] == max

  search(map, row + 1, col) ||
    search(map, row, col + 1)
end

def find_peaks(map, visited, i)
  return if visited.flatten.none? { |i| (i.is_a? Integer) }

  marks = ('A'..'Z').to_a

  peak = search(visited, 0, 0)
  mark_area(map, peak[0], peak[1], peak[2], visited, marks[i])
  find_peaks(map, visited, i + 1)
  visited
end

def mark_area(map, row, col, peak, visited, mark)
  return nil if [col.negative?, row.negative?, (row >= map.size), (col >= map.size)].any? || [(visited[row][col].is_a? String)].any?
  return if peak < map[row][col]

  # p [(col - 1), (col + 1), (row - 1), (row + 1)]
  sides = [(!(row - 1).negative? && (peak < map[row - 1][col])),
           (!(col - 1).negative? && (peak < map[row][col - 1])),
           ((row + 1) < map.size && (peak < map[row + 1][col])),
           ((col + 1) < map.size && (peak < map[row][col + 1]))]

  return if sides.any?

  visited[row][col] = mark
  mark_area(map, row, col - 1, map[row][col], visited, mark) ||
    mark_area(map, row, col + 1, map[row][col], visited, mark) ||
    mark_area(map, row - 1, col, map[row][col], visited, mark) ||
    mark_area(map, row + 1, col, map[row][col], visited, mark)
end

p greatest_peaks(
  [
    [9, 8, 5],
    [5, 6, 3],
    [8, 4, 1]
  ]
)
# => [3, 6]

p greatest_peaks(
  [
    [8, 12],
    [9, 3]
  ]
)
# => [1, 3]

# first_4x4_altitud_map
p greatest_peaks(
  [
    [2, 6, 9, 11],
    [7, 8, 9, 8],
    [6, 7, 12, 9],
    [10, 7, 6, 4]
  ]
)

# => [3, 9]

# second_4x4_altitude_map
p greatest_peaks(
  [
    [4, 3, 2, 1],
    [2, 1, 0, 5],
    [0, 7, 4, 6],
    [10, 8, 4, 7]
  ]
)

# => [4, 7]

# 5x5_altitude_map
p greatest_peaks(
  [
    [3, 6, 9, 11, 3],
    [5, 8, 12, 4, 6],
    [7, 10, 13, 2, 14],
    [0, 1, 5, 9, 3],
    [2, 8, 6, 4, 0]
  ]
)

# => [2, 13]
