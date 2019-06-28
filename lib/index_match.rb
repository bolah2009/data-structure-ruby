# frozen_string_literal: true

def index_match(
  arr, len = arr.size - 1, index = (0..len).to_a,
  left = 0, right = arr.size - 1
)
  return index[0] if index[0] == arr[left]
  return -1 if index[0] >= len

  return false if left >= right

  half = (left + right) / 2
  recursive_index_match(arr, index, [left, half, right], len)
end

def recursive_index_match(arr, index, pos, len)
  left = pos[0]
  half = pos[1]
  right = pos[2]
  index_match(arr[left..half], len, index[left..half]) ||
    index_match(arr[(half + 1)..right], len, index[(half + 1)..right])
end
