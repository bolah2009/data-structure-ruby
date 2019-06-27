# frozen_string_literal: true

def simple_quicksort(array, left = [], right = [], pivot = [array.first])
  return [] if array.empty?

  quick_sort_partition(array, left, right)
  return pivot if (left + right).empty?

  s = simple_quicksort(left) + pivot + simple_quicksort(right)
  puts s.join(' ') unless s.empty?
  s
end

def quick_sort_partition(array, left, right)
  array.each do |i|
    right.push(i) if i > array.first
    left.push(i) if i < array.first
  end
end
