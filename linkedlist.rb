# Start with your code from last challenge.

class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  def initialize
    @head = nil
    @tail = nil
  end
  
  def find_tail
    node = @head
    return node if !node.next_node
    return node if !node.next_node while (node = node.next_node)
  end

  def add(number)
    # your code here
    if @head
      find_tail.next_node = Node.new(number)
    else
      @head = Node.new(number)
    end
  end

  def add_at(index, item)
    temp = @head
    new_node = Node.new(item)
    if temp == nil
      temp = new_node
      return
    end

    if index == 0
     store_next = temp
     @head = new_node
     new_node.next_node = store_next
     return
    end

    while(index > 1)
      temp = temp.next_node
      break if temp.next_node == nil
        index -= 1
    end
      
    return if temp == nil

    store_next = temp.next_node
    temp.next_node = new_node
    new_node.next_node = store_next

  end

  def remove(index)
    temp = @head
    return if temp == nil
    if index == 0
      @head = temp.next_node
      return
    end

    while(index > 0)
      temp = temp.next_node
      break if temp == nil
        index -= 1
    end
      
    return if temp == nil or temp.next_node == nil

      store_next = temp.next_node.next_node

      temp.next = nil
      temp.next = store_next

  end

  def get(index)
    # your code here
    node = @head
    count = 0
    while (node)
      return node.value if count == index
       count += 1
       node = node.next_node
    end
  end
end

list = LinkedList.new

list.add(3)
p list
list.add(5)
p list
list.add_at(1, 11)
p list
list.add_at(0, 13)
p list

puts list.get(2)
# => 11

puts list.get(3)
# => 5