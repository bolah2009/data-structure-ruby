# frozen_string_literal: true

def find_pairs(array, special_number)
  # write your code here
end

# array_of_four_positions
p find_pairs([1, 3, 5, 11], 14)
# => [[3, 11]]

# array_of_seven_positions
p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]

# array_of_nine_positions
p find_pairs([8, 17, 5, 11, 9, 6, 3, 2, 15], 21)
# => [[6, 15]]

# array_of_eleven_positions
p find_pairs([-8, 7, 11, 8, 5, 9, 3, 6, 2, -9, 4], 0)
# => [[-8, 8], [9, -9]]

# array_of_nineteen_positions
p find_pairs(
  [17, -20, 21, -3, 33, 10, 6, -11, 19,
   40, 11, 17, 56, 33, 72, 5, 1, 36, 51], 40
)
# => [[21, 19], [-11, 51]]
