# frozen_string_literal: true

require './lib/running_time'

def quicksort_running_time(array)
  rt_sort_itself(array.dup, 0) - rt_adv_quicksort(array.dup, 0)
end

def rt_adv_quicksort(arr, time, left = 0, right = 0, pivot = arr.size - 1)
  return time if left >= pivot

  nxt_left = left

  left_and_time = rt_array_partition(arr, time, left, right, pivot)
  left = left_and_time.first
  time = left_and_time.last

  time = rt_pivot_swap(arr, left, pivot, time)

  time = rt_adv_quicksort(arr, time, nxt_left, nxt_left, left - 1) if left >= 1

  time = rt_adv_quicksort(arr, time, left + 1, left + 1, pivot)
  time
end

def rt_array_partition(arr, time, left, right, pivot)
  while right < pivot
    swaps = left
    left = move_left(arr, left, pivot)

    right = move_right(arr, left, pivot)

    time += left - swaps
    time = rt_swap(arr, left, right, time) if left < right
    left += 1 if right < pivot
  end
  [left, time]
end

def move_left(arr, left, pivot)
  left += 1 while left < pivot && arr[left] < arr[pivot]
  left
end

def move_right(arr, right, pivot)
  right += 1 while arr[right] > arr[pivot]
  right
end

def rt_pivot_swap(arr, left, pivot, time)
  rt_swap(arr, left, pivot, time) if left <= pivot
end

def rt_swap(arr, first, second, count)
  return count if arr[first] < arr[second]

  count += 1
  arr[first], arr[second] = arr[second], arr[first]
  count
end

array = [1, 3, 9, 8, 2, 7, 5]
puts quicksort_running_time(array)
