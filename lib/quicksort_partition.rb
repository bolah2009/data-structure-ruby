# frozen_string_literal: true

def partition(array, left = [], right = [], pivot = [array.first])
  array.each do |i|
    right.push(i) if i > array.first
    left.push(i) if i < array.first
  end
  left + pivot + right
end
