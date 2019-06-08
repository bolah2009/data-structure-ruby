# frozen_string_literal: true

# Node class
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# LinkedList class
class LinkedList
  def add(number)
    find_tail.next_node = Node.new(number) if @head
    @head = Node.new(number) if @head.nil?
  end

  def get(index)
    node = @head
    count = 0
    while node
      return node.value if count == index

      count += 1
      node = node.next_node
    end
  end

  def empty?
    return true if @head.nil?

    false
  end

  def add_at(index, item)
    temp = @head
    new_node = Node.new(item)

    return @head = new_node if @head.nil?

    if index.zero?
      @head = new_node
      @head.next_node = temp
      return
    end

    moved_node = move_node(temp, index)

    add_node(moved_node, new_node)
  end

  def remove(index)
    temp = @head
    return if temp.nil?

    return @head = temp.next_node if index.zero?

    moved_node = move_node(temp, index)
    remove_node(moved_node)
  end

  private

  def find_tail
    node = @head
    return node unless node.next_node

    while (node = node.next_node)
      return node unless node.next_node
    end
  end

  def remove_node(temp)
    return if temp.nil? || temp.next_node.nil?

    store_next = temp.next_node.next_node

    temp.next_node = nil
    temp.next_node = store_next
  end

  def add_node(temp, new_node)
    return if temp.nil?

    store_next = temp.next_node
    temp.next_node = new_node
    temp.next_node.next_node = store_next
  end

  def move_node(temp, index)
    while index > 1
      temp = temp.next_node
      return temp if temp.nil?

      index -= 1
    end
    temp
  end
end
