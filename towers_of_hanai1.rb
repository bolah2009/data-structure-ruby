def move(starting, goal)
    step = []
    start = starting
    stop = starting == 1 ? 2 : 1
    i = 0
    while i < 3
      step << start
      step << stop
      start += 1 if stop == goal
      start = 1 if start == goal && start == stop
      stop = goal if (stop + 1) == start
      stop += 1 if stop != goal
      i += 1
    end
  
    "#{step[0]}->#{step[1]} #{step[2]}->#{step[3]} #{step[4]}->#{step[5]}"
  end
  
  puts move(1, 3)
  # => 1->2 1->3 2->3
  
  puts move(2, 3)
  # => 2->1 2->3 1->3
  