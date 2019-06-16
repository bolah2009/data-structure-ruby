# frozen_string_literal: true

def prime_prime(array)
  # write your code here
end

# array_of_five_positions
puts prime_prime([2, 3, 5, 6, 9])
# => 3

# array_of_seven_positions
puts prime_prime([221, 2787, 121, 169, 6503, 289, 4645])
# => 929

# array_of_nine_positions
puts prime_prime([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 7

# array_of_ten_positions
puts prime_prime([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 11

# array_of_eleven_positions
puts prime_prime([55, 11, 33, 25, 15, 66, 35, 44, 16, 9, 22])
# => 11

# array_of_seventeen_positions
puts prime_prime(
  [1817, 2231, 217, 371, 155, 943, 1219, 553, 679,
   1057, 485, 253, 287, 299, 437, 713, 3473]
)
# => 23

# array_of_thirty_positions
puts prime_prime(
  [8035, 6759, 6113, 8721, 5595, 5985, 4643, 849, 629, 8933,
   3659, 6086, 4337, 4589, 9119, 8049, 9337, 3407, 28, 6771,
   1069, 3500, 8549, 9251, 2131, 5425, 2471, 11, 8173, 5277]
)
# => 3

# array_of_forty_positions
puts prime_prime(
  [6358, 8623, 2345, 1385, 6037, 9161, 796, 8125, 8829, 9747,
   2834, 3579, 1043, 1880, 3508, 9822, 8739, 2372, 7723, 5049,
   2661, 5982, 9692, 9427, 562, 6617, 3756, 396, 7009, 3907,
   6920, 3766, 6139, 6310, 7011, 650, 4758, 5153, 6200, 3146]
)
# => 2
