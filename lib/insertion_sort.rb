# frozen_string_literal: true

def insertion_sort(array, x_sort = array.last, index = array.size - 1)
  sort(array, x_sort, index)
  puts array.join(' ')
end

def sort(array, x_sort, index)
  array[index] = array[index - 1] if x_sort < array[index - 1]
  return array[index] = x_sort if x_sort > array[index - 1] || index.zero?

  puts array.join(' ')
  sort(array, x_sort, index - 1) if (index - 1) >= 0
end
