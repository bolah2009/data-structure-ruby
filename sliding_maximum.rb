def sliding_maximum(k, array)
  # your code here
  max = []
  i = 0
  while (k + i) <= array.size
    max << array[i...(k + i)].max
    i += 1
    p max
  end
  max
end

a = sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
