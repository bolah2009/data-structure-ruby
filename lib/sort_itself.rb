# frozen_string_literal: true

def sort_itself(arr, x_sort = arr[1], index = 1, sort = [])
  sort(arr, x_sort, index)
  puts arr.join(' ')
  sort_itself(arr, arr[index + 1], index + 1, sort) unless index + 1 >= arr.size
end

def sort(arr, x_sort, index)
  return arr[index] = x_sort if x_sort > arr[index - 1] || index.zero?

  arr[index] = arr[index - 1] if !arr[index - 1].nil? && x_sort < arr[index - 1]
  sort(arr, x_sort, index - 1)
end
