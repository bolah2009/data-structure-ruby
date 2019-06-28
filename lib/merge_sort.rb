# frozen_string_literal: true

def merge_sort(arr1, arr2, arr = [], left = 0, right = 0)
  if (arr1[left] - arr2[right]).negative?
    left = merge_left(arr1, arr, left)
  else
    right = merge_right(arr2, arr, right)
  end

  return arr.concat(arr2[right..-1]) if left >= arr1.size
  return arr.concat(arr1[left..-1]) if right >= arr2.size

  merge_sort(arr1, arr2, arr, left, right)
  arr
end

def merge_left(arr1, arr, left)
  arr << arr1[left]
  left += 1
  left
end

def merge_right(arr2, arr, right)
  arr << arr2[right]
  right += 1
  right
end
