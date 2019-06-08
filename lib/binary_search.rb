# frozen_string_literal: true

def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
  root = (min_interval + max_interval) / 2
  if root * root == number
    return root
  elsif root * root < number
    sqrt_recursive(number, min_interval + 1, max_interval)
  else
    sqrt_recursive(number, min_interval, max_interval - 1)
  end
end

puts sqrt(25)
puts sqrt(7056)
