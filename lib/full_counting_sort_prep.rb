# frozen_string_literal: true

def full_counting_sort_prep(array)
  count_arr = Array.new(100, 0)
  array.each { |i| count_arr[i.to_i] += 1 }
  count_arr.each_index { |i| count_arr[i] += count_arr[i - 1] if (i - 1) >= 0 }
  count_arr
end
