# frozen_string_literal: true

def hash_table(arr)
    # write your code here
end

p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234_004, 602, 7_400_000, 200_000_000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]

#   array_of_eleven_positions
p hash_table([2367, -65_325, 134, -185_007, 3291, 7832, -65_326, 789, 980, -3289, 3])
# => [7832, -3289, 980, 2367, 134, 3291, 3, -65325, -65326, 789, -185007]

#   array_of_fifteen_positions
p hash_table([4376, -345, -342, 4376, -345, 84_945, 4376, -347, -26_509, 4376, 84_945, 84_944, -26_509, 896_341, 4376])
# => [-342, 84944, 84945, 84945, -345, -345, -347, 896341, 4376, 4376, 4376, 4376, 4376, -26509, -26509]

#   array_of_twenty_positions
p hash_table([10_935, 12_732, -3058, 1673, 14_971, 5701, 18_342, 4590, -10_248, -11_243, -5848, 14_836, 7648, -3772, -8700, 19_165, -16_397, -13_192, -18_946, 14_203])
# => [-3058, 14971, 10935, 1673, -11243, 14203, 5701, 4590, 7648, 19165, -13192, -18946, 12732, 18342, -10248, -5848, -16397, 14836, -3772, -8700]
