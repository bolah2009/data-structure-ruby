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

def search_tree?(tree)
  # write your code here
  tree = array_to_tree(tree, 0)
  is_BST?(tree, -Float::INFINITY, Float::INFINITY)
end

def is_BST?(tree, min, max)
  return true if tree.nil?
  return false if tree.data < min || tree.data > max

  is_BST?(tree.left, min, tree.data) && is_BST?(tree.right, tree.data, max)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false

puts search_tree?([20, 10, 27, 12, 14, 23, 30])
# => false

puts search_tree?([19, 9, 26, 4, 13, 17, 29])
# => false

puts search_tree?([20, 10, 27, 5, 14, 23, 30, 0, 12, 0, 0, 0, 0, 0, 0])
# => false
