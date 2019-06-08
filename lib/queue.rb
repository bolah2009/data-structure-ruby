require_relative 'linkedlist'
# Queue
class Queue
  def initialize
    @list = LinkedList.new
  end

  def add(number)
    @list.add(number)
  end

  def remove
    value = @list.get(0)
    return -1 if value.nil?

    @list.remove(0)
    value
  end
end
