require_relative 'linkedlist'
# Start with your code from LinkedList challenge.
# Stack
class Stack
  def initialize
    @list = LinkedList.new
  end

  def push(number)
    @list.add_at(0, number)
  end

  def pop
    value = @list.get(0)
    @list.remove(0)
    value
  end
end
