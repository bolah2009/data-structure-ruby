def tree_height(tree_as_list)
  # your code here
  height = 1
  i = 1
  while i < tree_as_list.size

    height += 1

    i += 2 * i + 1
  end
  height
end

# 0 = 1,2 = 2
# 1 = 3,4 = 3
# 2 = 5,6 = 4
# 3 =
# 4 =
# 5 =
# 6 =
puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

#       2
#   7         5
# 2    6   0     9

puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 4

puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
# => 4
