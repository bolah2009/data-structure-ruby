require_relative 'linkedlist'
# Start with your code from LinkedList challenge.
# Stack
class Stack
  def initialize
    @list = LinkedList.new
    @min_list = LinkedList.new
  end

  def push(number)
    @list.add_at(0, number)
    push_min(number)
  end

  def pop
    value = @list.get(0)
    @list.remove(0)
    pop_min(value)
    value
  end

  def min
    @min_list.get(0)
  end

  def push_min(number)
    return @min_list.add_at(0, number) if @min_list.get(0).nil?
    return @min_list.add_at(0, number) if number <= min
  end

  def pop_min(value)
    return @min_list.remove(0) if value == min
  end
end

