# frozen_string_literal: true

def full_counting_sort(array)
  count_arr = counting_sort_array(array)

  sorted_array = Array.new(array.size, 0)
  array.each do |i|
    sorted_array[count_arr[i.to_i]] = i.split.last
    count_arr[i.to_i] += 1
  end
  sorted_array
end

def counting_sort_array(array)
  count_arr = Array.new(100, 0)
  array.each { |i| count_arr[i.to_i] += 1 }
  count_arr.each_index { |i| count_arr[i] += count_arr[i - 1] if (i - 1) >= 0 }
  count_arr = [0] + count_arr[0..98]
  count_arr
end
