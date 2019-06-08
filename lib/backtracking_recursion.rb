# frozen_string_literal: true
def exact_sum?(k, coins)
  # write your code here
  check_sum(k, coins, 0)
end

def check_sum(k, coins, i)
  return true if k.zero?
  return false if i >= coins.size && !k.zero?

  check_sum(k - coins[i], coins, i + 1) || check_sum(k, coins, i + 1)
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false

# puts exact_sum?(50, [1, 3, 5, 37, 18, 5])
# # => true

# puts exact_sum?(201, [37, 42, 10, 23, 15, 25, 11, 6, 19, 25, 51])
# # => true
