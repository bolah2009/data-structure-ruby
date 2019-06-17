# frozen_string_literal: true

def simple_counting_sort(array, sorted_array = [])
  count = s_counting_sort(array)
  count.each_with_index { |times, element| sorted_array.concat([element] * times) }
  sorted_array
end

def s_counting_sort(array)
  count_array = Array.new(100, 0)
  array.each { |i| count_array[i] += 1 }
  count_array
end
