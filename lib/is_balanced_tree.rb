# frozen_string_literal: true

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2 * i + 1)
  node.right = array_to_tree(array, 2 * i + 2)

  node
end

def height(tree)
  return 0 if tree.nil?

  height = 1
  height += [height(tree.left), height(tree.right)].max

  height
end

def balanced_tree?(array_tree)
  # write your code here
  tree = array_to_tree(array_tree, 0)
  is_balanced?(tree)
end

def is_balanced?(tree)
  return true if tree.nil?

  balance_factor = height(tree.left) - height(tree.right)
  return false if balance_factor < -1 || balance_factor > 1
  true
  is_balanced?(tree.left) && is_balanced?(tree.right)
  
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true
