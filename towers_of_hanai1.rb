def move(starting, goal)
    aux = case starting + goal
          when 3; 3
          when 4; 2
          else 1
          end
  
    "#{starting}->#{aux} #{starting}->#{goal} #{aux}->#{goal}"
  end
  
  puts move(1, 3)
  # => 1->2 1->3 2->3
  
  puts move(2, 3)
  # => 2->1 2->3 1->3
  
  puts move(2, 1)
  # => "2->3 2->1 3->1"
  
  puts move(1, 2)
  # => "1->3 1->2 3->2"
  