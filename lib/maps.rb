# frozen_string_literal: true

def appears_most_times(array, hash = Hash.new(0))
  array.each do |i|
    hash[i] += 1
  end
  hash.key(hash.values.max)
end

# array
puts appears_most_times([3, 3, 7, 8])
# => 3

# array_of_five_positions
puts appears_most_times([1, 2, 3, 1, 5])
# => 1

# array_of_six_positions
puts appears_most_times([10, 10, 20, 30, 20, 20])
# => 20

# array_of_eight_positions
puts appears_most_times([3, 2, 19, 4, 19, 19, 3, 2])
# => 19

# array_of_ten_positions
puts appears_most_times([3_594_976, 2340, 3_594_976, 74_390, -453_894, 32_076, 42, 7888, -21_085, -320_566])
# => 3594976

#  array_of_eleven_positions
puts appears_most_times([2367, -65_326, 134, -185_007, 3291, 7832, -65_326, 789, 980, -3289, 3490])
# => -65326

# array_of_fifteen_positions
puts appears_most_times([4376, -345, -345, 4376, -345, 84_945, 4376, -345, -26_509, 4376, 84_945, 84_945, -26_509, 896_341, 4376])
# => 4376

# array_of_twenty_positions
puts appears_most_times([85, 105, 90, 275, 30, 100, 275, 110, 125, 130, 275, 10, 20, 30, 45, 50, 275, 65, 70, 111])
# => 275
