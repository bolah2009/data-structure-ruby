def sum(number)
  # Your code here
  number += sum(number - 1) if number - 1 > 0
  number
end

puts sum(4)
puts sum(10)
