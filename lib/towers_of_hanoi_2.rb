# frozen_string_literal: true

def hanoi_steps(number_of_discs)
  hanoi(number_of_discs, 1, 2, 3)
end

def hanoi(number_of_discs, start, intermediate, goal)
  return if number_of_discs.zero?

  return unless number_of_discs.positive?

  hanoi(number_of_discs - 1, start, goal, intermediate)
  puts "#{start}->#{goal}"
  hanoi(number_of_discs - 1, intermediate, start, goal)
end

puts 'hanoi_steps(2)'
hanoi_steps(2)
# => 1->2
#    1->3
#    2->3

puts 'hanoi_steps(3)'
hanoi_steps(3)
# => 1->3
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

puts 'hanoi_steps(4)'
hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3
